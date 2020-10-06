package org.edu.controller;

import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.edu.service.IF_MemberService;
import org.edu.vo.MemberVO;
import org.edu.vo.PageVO;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;



/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/shop")
public class ShopController {
	
	@Inject
	private IF_MemberService memberService;
	
	
	/**
	 * 마이페이지 > 회원탈퇴 입니다.
	 * @throws Exception 
	 */
	@RequestMapping(value = "/mypage/delete", method = RequestMethod.POST)
	public String memberDelete(MemberVO memberVO, Locale locale, RedirectAttributes rdat) throws Exception {
		String new_pw = memberVO.getUser_pw();//예를 들면 123
		if(new_pw != "") {
			//스프링 시큐리티 4.x BCryptPasswordEncoder 암호화 사용
			BCryptPasswordEncoder bcryptPasswordEncoder = new BCryptPasswordEncoder(10);
			String bcryptPassword = bcryptPasswordEncoder.encode(new_pw);//예, 1234 -> 암호화 처리됨
			memberVO.setUser_pw(bcryptPassword);//DB에 들어가기전 값 set시킴.
		}
		memberVO.setEnabled(false); //회원정보 사용중지 아이디 지정
		memberService.updateMember(memberVO);
		rdat.addFlashAttribute("msg", "회원탈퇴");
		return "redirect:/logout";
	
	}
	
	/**
	 * 마이페이지 수정페이지 입니다.
	 * @throws Exception 
	 */
	@RequestMapping(value = "/mypage/update", method = RequestMethod.GET)
	public String memberUpdate(HttpServletRequest request,@ModelAttribute("pageVO") PageVO pageVO, Locale locale, Model model) throws Exception {
		HttpSession session = request.getSession();
		MemberVO memberVO = memberService.viewMember((String) session.getAttribute("session_userid"));
		model.addAttribute("memberVO", memberVO);
		return "shop/mypage/mypage_update";
	}
	@RequestMapping(value = "/mypage/update", method = RequestMethod.POST)
	public String memberUpdate(MemberVO memberVO, Locale locale, RedirectAttributes rdat, HttpServletRequest request) throws Exception {
		String new_pw = memberVO.getUser_pw();//예를 들면 1234
		if(new_pw != "") {
			//스프링 시큐리티 4.x BCryptPasswordEncoder 암호화 사용
			BCryptPasswordEncoder bcryptPasswordEncoder = new BCryptPasswordEncoder(10);
			String bcryptPassword = bcryptPasswordEncoder.encode(new_pw);//예, 1234 -> 암호화 처리됨
			memberVO.setUser_pw(bcryptPassword);//DB에 들어가기전 값 set시킴.
		}		
		memberService.updateMember(memberVO);
		rdat.addFlashAttribute("msg", "회원정보수정");
		//회원이름 세션변수 변경처리 session_username
		HttpSession session = request.getSession();//기존세션갑 가져오기
		session.setAttribute("session_username", memberVO.getUser_name());
		return "redirect:/shop/mypage/update";
	}
	/**
	 * 샵 상품 자세히 보기 페이지 입니다.
	 */
	@RequestMapping(value = "/menu/detail", method = RequestMethod.GET)
	public String detail(Locale locale, Model model) {
		
		return "shop/menu/detail";
	}
	/**
	 * 샵 결제 페이지 입니다.
	 */
	@RequestMapping(value = "/menu/checkout", method = RequestMethod.GET)
	public String checkout(Locale locale, Model model) {
		
		return "shop/menu/checkout";
	}/**
	 * 샵 카트 페이지 입니다.
	 */
	@RequestMapping(value = "/menu/cart", method = RequestMethod.GET)
	public String cart(Locale locale, Model model) {
		
		return "shop/menu/cart";
	}
	/**
	 * 샵 상품 페이지 입니다.
	 */
	@RequestMapping(value = "/menu/products", method = RequestMethod.GET)
	public String products(Locale locale, Model model) {
		
		return "shop/menu/products";
	}
	/**
	 * 샵 고객센터 페이지 입니다.
	 */
	@RequestMapping(value = "/menu/contact", method = RequestMethod.GET)
	public String contact(Locale locale, Model model) {
		
		return "shop/menu/contact";
	}
	/**
	 * 샵 홈 입니다.
	 */
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String shop(Locale locale, Model model) {
		
		return "shop/home";
	}
	
	
}
