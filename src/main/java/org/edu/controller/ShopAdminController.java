package org.edu.controller;

import java.io.File;
import java.util.List;
import java.util.Locale;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.validation.Valid;

import org.edu.service.IF_ProductService;
import org.edu.utils.UploadFileUtils;
import org.edu.vo.ProductVO;
import org.edu.vo.BrandVO;
import org.edu.vo.CategoryVO;
import org.edu.vo.PageVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/admin/shop")
public class ShopAdminController {
	
	@Inject
	private IF_ProductService productService;
	
	
	@Resource(name="uploadPath")
	private String uploadPath;
	
	
	/**
	 * 카테고리 체크 RestAPI 입니다 주)@Responsebidy 사용됨.
	 * 	 * @throws Exception 
	 */
	@RequestMapping(value = "/catetype/catetype_check", method = RequestMethod.GET)
	@ResponseBody
	//@ResponseBody 데이터 응답 역활
	public int cateTypeCheck(@RequestParam String category) throws Exception {
		CategoryVO categoryVO = productService.viewCateType(category);		
		int check = 0; //쿼리 결과값이 존재하는지 체크하는 변수
		if(categoryVO!=null) {
			check = 1;
		}
		return check;
	}
	/**
	 * 브랜드 체크 RestAPI 입니다 주)@Responsebidy 사용됨.
	 * 	 * @throws Exception 
	 */
	@RequestMapping(value = "/brdtype/brdtype_check", method = RequestMethod.GET)
	@ResponseBody
	//@ResponseBody 데이터 응답 역활
	public int bodTypeCheck(@RequestParam String brand) throws Exception {
		BrandVO brandVO = productService.viewBrdType(brand);		
		int check = 0; //쿼리 결과값이 존재하는지 체크하는 변수
		if(brandVO!=null) {
			check = 1;
		}
		return check;
	}
	/**
	 * 브랜드 insert 입니다.
	 * @throws Exception 
	 */
	@RequestMapping(value = "/brand/write", method = RequestMethod.POST)
	public String brdTypeInsert(BrandVO brandVO, Locale locale, RedirectAttributes rdat) throws Exception {
		productService.insertBrdType(brandVO);
		rdat.addFlashAttribute("msg", "입력");
		return "redirect:/admin/shop/brand/list";
	}
	/**
	 * 브랜드 insert 입니다.
	 * @throws Exception 
	 */
	@RequestMapping(value ="/brand/write", method = RequestMethod.GET)
	public String brdTypeInsert(Locale locale, Model model) throws Exception {
		return "admin/shop/brand/brand_insert";
	}
	/**
	 * 브랜드 삭제 입니다.
	 * @throws Exception 
	 */
	@RequestMapping(value ="/brand/delete", method = RequestMethod.POST)
	public String brdTypeDelete(BrandVO brandVO, Locale locale, RedirectAttributes rdat) throws Exception {
		productService.deleteBrdType(brandVO.getBrand());
		rdat.addFlashAttribute("msg", "삭제");
		return "redirect:/admin/shop/brand/list";
	}
	/**
	 * 브랜드 수정 폼 입니다.
	 * @throws Exception 
	 */
	@RequestMapping(value ="/brand/update", method = RequestMethod.POST)
	public String brdTypeUpdate(@RequestParam("brand") String brand, BrandVO brandVO, Locale locale, RedirectAttributes rdat) throws Exception {
		productService.updateBrdType(brandVO);
		rdat.addFlashAttribute("msg", "수정");
		return "redirect:/admin/shop/brand/list";
	}
	/**
	 * 브랜드 수정 입니다.
	 * @throws Exception 
	 */
	@RequestMapping(value ="/brand/update", method = RequestMethod.GET)
	public String brdTypeUpdate(@RequestParam String brand, Locale locale, Model model) throws Exception {
		BrandVO brandVO = productService.viewBrdType(brand);
		model.addAttribute("brandVO", brandVO);
		return "admin/shop/brand/brand_update";
	}
	/**
	 * 브랜드 리스트 입니다.
	 * @throws Exception 
	 */
	@RequestMapping(value ="/brand/list", method = RequestMethod.GET)
	public String brdTypeList( Locale locale, Model model) throws Exception {
		List<BrandVO> list = productService.selectBrdType();
		model.addAttribute("brdTypeList", list);
		return "admin/shop/brand/brand_list";
	}
	
	/**
	 * 카테고리 insert 입니다.
	 * @throws Exception 
	 */
	@RequestMapping(value = "/category/write", method = RequestMethod.POST)
	public String cateTypeInsert(CategoryVO categoryVO, Locale locale, RedirectAttributes rdat) throws Exception {
		productService.insertCateType(categoryVO);
		rdat.addFlashAttribute("msg", "입력");
		return "redirect:/admin/shop/category/list";
	}
	/**
	 * 카테고리 insert 입니다.
	 * @throws Exception 
	 */
	@RequestMapping(value ="/category/write", method = RequestMethod.GET)
	public String cateTypeInsert(Locale locale, Model model) throws Exception {
		return "admin/shop/category/category_insert";
	}
	/**
	 * 카테고리 삭제 입니다.
	 * @throws Exception 
	 */
	@RequestMapping(value ="/category/delete", method = RequestMethod.POST)
	public String cateTypeDelete(CategoryVO categoryVO, Locale locale, RedirectAttributes rdat) throws Exception {
		productService.deleteCateType(categoryVO.getCategory());
		rdat.addFlashAttribute("msg", "삭제");
		return "redirect:/admin/shop/category/list";
	}
	/**
	 * 카테고리 수정 폼 입니다.
	 * @throws Exception 
	 */
	@RequestMapping(value ="/category/update", method = RequestMethod.POST)
	public String cateTypeUpdate(@RequestParam("category") String category, CategoryVO categoryVO, Locale locale, RedirectAttributes rdat) throws Exception {
		productService.updateCateType(categoryVO);
		rdat.addFlashAttribute("msg", "수정");
		return "redirect:/admin/shop/category/list";
	}
	/**
	 * 카테고리 수정 입니다.
	 * @throws Exception 
	 */
	@RequestMapping(value ="/category/update", method = RequestMethod.GET)
	public String cateTypeUpdate(@RequestParam String category, Locale locale, Model model) throws Exception {
		CategoryVO categoryVO = productService.viewCateType(category);
		model.addAttribute("categoryVO", categoryVO);
		return "admin/shop/category/category_update";
	}
	/**
	 * 카테고리 리스트 입니다.
	 * @throws Exception 
	 */
	@RequestMapping(value ="/category/list", method = RequestMethod.GET)
	public String cateTypeList( Locale locale, Model model) throws Exception {
		List<CategoryVO> list = productService.selectCateType();
		model.addAttribute("cateTypeList", list);
		return "admin/shop/category/category_list";
	}
	/**
	 * 게시물관리 리스트 입니다.
	 * @throws Exception 
	 */
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String boardList(@ModelAttribute("pageVO") PageVO pageVO, Locale locale, Model model) throws Exception {
		//PageVO pageVO = new PageVO();//매개변수로 받기전 테스트용
		if(pageVO.getPage() == null) {
			pageVO.setPage(1);//초기 page변수값 지정
		}
		pageVO.setPerPageNum(10);//1페이지당 보여줄 게시물 수 강제지정
		pageVO.setTotalCount(productService.countBno(pageVO));//강제로 입력한 값을 쿼리로 대체OK.
		List<ProductVO> list = productService.selectBoard(pageVO);
		//모델클래스로 jsp화면으로 productService에서 셀렉트한 list값을 boardList변수명으로 보낸다.
		//model { list -> boardList -> jsp }
		model.addAttribute("boardList", list);
		model.addAttribute("pageVO", pageVO);
		return "admin/shop/product_list";
	}
	/**
	 * 게시물관리 상세보기 입니다.
	 * @throws Exception 
	 */
	@RequestMapping(value = "/view", method = RequestMethod.GET)
	public String boardView(@ModelAttribute("pageVO") PageVO pageVO, @RequestParam("bno") Integer bno,Locale locale, Model model) throws Exception {
		ProductVO productVO = productService.viewBoard(bno);
		model.addAttribute("productVO", productVO);
		model.addAttribute("pageVO", pageVO);
		return "admin/shop/product_view";
	}
	
	/**
	 * 게시물관리 > 등록 입니다.
	 * @throws Exception 
	 */
	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public String boardWrite(Locale locale, Model model) throws Exception {
		return "admin/shop/product_write";
	}
	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String boardWrite(MultipartFile file, ProductVO productVO,Locale locale) throws Exception {
		String imgUploadPath = uploadPath + File.separator + "imgUpload";
		String ymdPath = UploadFileUtils.calcPath(imgUploadPath);
		String fileName = null;

		if(file != null) {
		 fileName =  UploadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath); 
		} else {
		 fileName = uploadPath + File.separator + "images" + File.separator + "none.png";
		}

		productVO.setImg(File.separator + "imgUpload" + ymdPath + File.separator + fileName);
		productVO.setThumbimg(File.separator + "imgUpload" + ymdPath + File.separator + "s" + File.separator + "s_" + fileName);
		productService.insertBoard(productVO);
		return "redirect:/admin/shop/list";
	}
	
	/**
	 * 게시물관리 > 수정 입니다.
	 * @throws Exception 
	 */
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public String boardUpdate(@ModelAttribute("pageVO") PageVO pageVO, @RequestParam("bno") Integer bno, Locale locale, Model model) throws Exception {
		ProductVO productVO = productService.viewBoard(bno);
		model.addAttribute("productVO", productVO);
		model.addAttribute("pageVO", pageVO);
		return "admin/shop/product_update";
	}
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String boardUpdate(@ModelAttribute("pageVO") PageVO pageVO, MultipartFile file,@Valid ProductVO productVO,Locale locale) throws Exception {
			productService.updateBoard(productVO);
		return "redirect:/admin/shop/view?bno=" + productVO.getBno() + "&page=" + pageVO.getPage();
	}
	
	/**
	 * 게시물관리 > 삭제 입니다.
	 * @throws Exception 
	 */
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String boardDelete(@RequestParam("bno") Integer bno, Locale locale) throws Exception {
		productService.deleteBoard(bno);
		return "redirect:/admin/shop/list";
	}
}
