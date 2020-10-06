package org.edu.controller;

import java.util.List;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.edu.service.IF_ProductService;
import org.edu.vo.BrandVO;
import org.edu.vo.CategoryVO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice
public class ControllerAdviceException {
	private static final Logger logger = LoggerFactory.getLogger(ControllerAdviceException.class);
	
	@Inject
	private IF_ProductService productService;
	
	//컨트롤러의 매핑이 걸린 모든 매서드에서 (jsp페이지)공통으로 boardTypeMenu변수 사용가능. 
	@ModelAttribute("cateTypeMenu")
	public List<CategoryVO> cateTypeMenu() throws Exception {
		List<CategoryVO> cateTypeMenu = productService.selectCateType();
		return cateTypeMenu;
	}
	@ModelAttribute("brdTypeMenu")
	public List<BrandVO> brdTypeMenu() throws Exception {
		List<BrandVO> brdTypeMenu = productService.selectBrdType();
		return brdTypeMenu;
	}
	@ExceptionHandler(Exception.class)
	public ModelAndView errorModelAndView(Exception ex, HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		//모델앤뷰에서 셋뷰네임은 jsp파일명과 매칭
		HttpSession session = request.getSession();//기존 로그인세션가져오기
		if(session.getAttribute("session_levels") == "ROLE_ADMIN") {
			modelAndView.setViewName("admin/error_controller");
		}else {
			modelAndView.setViewName("error_controller");
		}
		modelAndView.addObject("exception", ex);
		//에러방생시 이전페이지 URL을 session변수를 이용해서 jsp로 보내는 코딩
		String referer = request.getHeader("Referer");
		//에러이전 페이지의 Referrer값을 변수로 저장한 String referrer를
		//세션으로 저장해서 jsp페이지에 prevPage변수로 보낸는 작업(아래코드)
		request.getSession().setAttribute("prevPage",referer);
		//세션변수의 출현배경(아래)
		//브라우저는 stateless(상태보존없음) 기반이기 때문에...
		//링크이동시 이전페이지의 저장값을 이동한 페이지에서 stetelesss
		//스테이트리스 상태에서 꼐속 값을 유지하려면 ,세션변수를 사용하게 된다.
		return modelAndView;
	}
}