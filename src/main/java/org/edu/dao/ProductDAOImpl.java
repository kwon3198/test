package org.edu.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.edu.vo.ProductVO;
import org.edu.vo.BrandVO;
import org.edu.vo.CategoryVO;
import org.edu.vo.PageVO;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDAOImpl implements IF_ProductDAO {

	private static String mapperQuery = "org.edu.dao.IF_ProductDAO";
	
	@Inject
	private SqlSession sqlSession;

	@Override
	public void insertBoard(ProductVO productVO) throws Exception {
		sqlSession.insert(mapperQuery + ".insertBoard", productVO);		
	}

	@Override
	public List<ProductVO> selectBoard(PageVO pageVO) throws Exception {
		return sqlSession.selectList(mapperQuery + ".selectBoard", pageVO);
	}

	@Override
	public void updateBoard(ProductVO productVO) throws Exception {
		sqlSession.update(mapperQuery + ".updateBoard", productVO);
	}

	@Override
	public void deleteBoard(Integer bno) throws Exception {
		sqlSession.delete(mapperQuery + ".deleteBoard", bno);
	}

	@Override
	public ProductVO viewBoard(Integer bno) throws Exception {
		return sqlSession.selectOne(mapperQuery + ".viewBoard", bno);
	}

	@Override
	public int countBno(PageVO pageVO) throws Exception {
		return sqlSession.selectOne(mapperQuery + ".countBno", pageVO);
	}

	@Override
	public void updateViewCount(Integer bno) throws Exception {
		sqlSession.update(mapperQuery + ".updateViewCount", bno);
	}

	
	
	@Override
	public List<CategoryVO> selectCateType() throws Exception {
		return sqlSession.selectList(mapperQuery + ".selectCateType");
	}

	@Override
	public void deleteCateType(String category) throws Exception {
		sqlSession.delete(mapperQuery+".deleteCateType", category);
	}

	@Override
	public void updateCateType(CategoryVO categoryVO) throws Exception {
		sqlSession.update(mapperQuery+".updateCateType", categoryVO);
	}

	@Override
	public void insertCateType(CategoryVO categoryVO) throws Exception {
		sqlSession.insert(mapperQuery+".insertCateType", categoryVO);
	}

	@Override
	public CategoryVO viewCateType(String category) throws Exception {
		return  sqlSession.selectOne(mapperQuery+".viewCateType", category);
	}

	
	
	
	@Override
	public List<BrandVO> selectBrdType() throws Exception {
		return sqlSession.selectList(mapperQuery + ".selectBrdType");
	}

	@Override
	public void deleteBrdType(String brand) throws Exception {
		sqlSession.delete(mapperQuery+".deleteBrdType", brand);
	}

	@Override
	public void updateBrdType(BrandVO brandVO) throws Exception {
		sqlSession.update(mapperQuery+".updateBrdType", brandVO);
	}

	@Override
	public void insertBrdType(BrandVO brandVO) throws Exception {
		sqlSession.insert(mapperQuery+".insertBrdType", brandVO);
	}

	@Override
	public BrandVO viewBrdType(String brand) throws Exception {
		return  sqlSession.selectOne(mapperQuery+".viewBrdType", brand);
	}
}