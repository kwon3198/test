package org.edu.dao;

import java.util.List;

import org.edu.vo.ProductVO;
import org.edu.vo.BrandVO;
import org.edu.vo.CategoryVO;
import org.edu.vo.PageVO;

public interface IF_ProductDAO {
	public BrandVO viewBrdType(String brand) throws Exception;
	public void deleteBrdType(String brand) throws Exception;
	public void updateBrdType(BrandVO brandVO) throws Exception;
	public void insertBrdType(BrandVO brandVO) throws Exception;
	public List<BrandVO> selectBrdType() throws Exception;
	public CategoryVO viewCateType(String category) throws Exception;
	public void deleteCateType(String category) throws Exception;
	public void updateCateType(CategoryVO categoryVO) throws Exception;
	public void insertCateType(CategoryVO categoryVO) throws Exception;
	public List<CategoryVO> selectCateType() throws Exception;
	public void insertBoard(ProductVO productVO) throws Exception;
	public List<ProductVO> selectBoard(PageVO pageVO) throws Exception;
	public void updateBoard(ProductVO productVO) throws Exception;
	public void deleteBoard(Integer bno) throws Exception;
	public ProductVO viewBoard(Integer bno) throws Exception;
	public int countBno(PageVO pageVO) throws Exception;
	public void updateViewCount(Integer bno) throws Exception;
}
