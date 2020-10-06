package org.edu.service;

import java.util.List;
import javax.inject.Inject;
import org.edu.dao.IF_ProductDAO;
import org.edu.vo.ProductVO;
import org.edu.vo.BrandVO;
import org.edu.vo.CategoryVO;
import org.edu.vo.PageVO;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class ProductServiceImpl implements IF_ProductService {

	@Inject
	private IF_ProductDAO productDAO;

	@Transactional
	@Override
	public void insertBoard(ProductVO productVO) throws Exception {
		productDAO.insertBoard(productVO);
		}
	

	@Override
	public List<ProductVO> selectBoard(PageVO pageVO) throws Exception {
		return productDAO.selectBoard(pageVO);
	}

	@Transactional
	@Override
	public void updateBoard(ProductVO productVO) throws Exception {
		productDAO.updateBoard(productVO);
	}

	@Transactional
	@Override
	public void deleteBoard(Integer bno) throws Exception {
		productDAO.deleteBoard(bno);
	}

	@Override
	public ProductVO viewBoard(Integer bno) throws Exception {
		productDAO.updateViewCount(bno);
		return productDAO.viewBoard(bno);
	}

	@Override
	public int countBno(PageVO pageVO) throws Exception {
		return productDAO.countBno(pageVO);
	}

	
	
	
	@Override
	public List<CategoryVO> selectCateType() throws Exception {
		return productDAO.selectCateType();
	}

	@Override
	public void deleteCateType(String category) throws Exception {
		productDAO.deleteCateType(category);
	}

	@Override
	public void updateCateType(CategoryVO categoryVO) throws Exception {
		productDAO.updateCateType(categoryVO);
	}

	@Override
	public void insertCateType(CategoryVO categoryVO) throws Exception {
		productDAO.insertCateType(categoryVO);
	}

	@Override
	public CategoryVO viewCateType(String category) throws Exception {
		return productDAO.viewCateType(category);
	}
	
	
	
	@Override
	public List<BrandVO> selectBrdType() throws Exception {
		return productDAO.selectBrdType();
	}

	@Override
	public void deleteBrdType(String brand) throws Exception {
		productDAO.deleteBrdType(brand);
	}

	@Override
	public void updateBrdType(BrandVO brandVO) throws Exception {
		productDAO.updateBrdType(brandVO);
	}

	@Override
	public void insertBrdType(BrandVO brandVO) throws Exception {
		productDAO.insertBrdType(brandVO);
	}

	@Override
	public BrandVO viewBrdType(String brand) throws Exception {
		return productDAO.viewBrdType(brand);
	}

}