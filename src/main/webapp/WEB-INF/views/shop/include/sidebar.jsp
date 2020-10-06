<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="col-sm-3">
	<div class="left-sidebar">
		<h2>Category</h2>
		<div class="panel-group category-products" id="accordian"><!--category-productsr-->
		<div class="panel panel-default">
			<div class="panel panel-default">
				<div class="panel-heading">
					<c:forEach items="${cateTypeMenu}" var="cateTypeMenu">
                		<li class="panel-title">
		                	<a href="/shop/menu/products?searchBoard=${cateTypeMenu.category}">
		                  	<h4 class="panel-title">${cateTypeMenu.category}</h4>
		                	</a>
		              	</li>
               	 	</c:forEach>
				</div>
			</div>
		</div><!--/category-products-->
	
		<div class="brands_products"><!--brands_products-->
			<h2>Brands</h2>
			<div class="brands-name">
				<ul class="nav nav-pills nav-stacked">
					<c:forEach items="${brdTypeMenu}" var="brdTypeMenu">
                		<li class="panel-title">
		                	<a href="/shop/menu/products?searchBoard=${brdTypeMenu.brand}">
		                  	<h4 class="panel-title">${brdTypeMenu.brand}</h4>
		                	</a>
		              	</li>
               	 	</c:forEach>
				</ul>
			</div>
		</div><!--/brands_products-->
		
		<div class="price-range"><!--price-range-->
			<h2>Price Range</h2>
			<div class="well">
				 <input type="text" class="span2" value="" data-slider-min="0" data-slider-max="600" data-slider-step="5" data-slider-value="[250,450]" id="sl2" ><br />
				 <b>$ 0</b> <b class="pull-right">$ 600</b>
			</div>
		</div><!--/price-range-->
		
		<div class="shipping text-center"><!--shipping-->
			<img src="/resources/shop/images/home/shipping.jpg" alt="" />
		</div><!--/shipping-->
		
	</div>
</div>
</div>