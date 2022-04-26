@extends('master')
@section('content')

<div class="cen" style="" >
	<div class="row">		
	           <div class="col-md-1"></div>	
	           <div class="col-md-10">
	           	<div class="row">
				<div class="col-md-2 list">
					<div id="menu">
						<ul>
							<li><a>Ẩm Thực</a>
								<ul class="sub-menu">
									@foreach($loai_sp1 as $loi)
									 
									<li><a href="{{route('loaisanpham',$loi->id)}}">{{$loi->name}}</a></li>
									@endforeach
								</ul>
							</li>
							<li><a href="">Đồ dùng gia dụng</a>
								<ul class="sub-menu" style="top:-101%">
									@foreach($loai_sp2 as $loi)
									 
									<li><a href="{{route('loaisanpham',$loi->id)}}">{{$loi->name}}</a></li>
									@endforeach
								</ul>
							</li>
							<li><a href="">Điện lạnh-Điện gia dụng</a>
								<ul class="sub-menu"style="top:-204%">
									@foreach($loai_sp3 as $loi)
									 
									<li><a href="{{route('loaisanpham',$loi->id)}}">{{$loi->name}}</a></li>
									@endforeach
								</ul>

							</li>
							<li><a href="">Thời trang nam</a>
								<ul class="sub-menu"style="top:-306%">
									@foreach($loai_sp4 as $loi)
									 
									<li><a href="{{route('loaisanpham',$loi->id)}}">{{$loi->name}}</a></li>
									@endforeach
								</ul>
							</li>
							<li><a href="">Thời trang nữ</a>
								<ul class="sub-menu"style="top:-410%">
									@foreach($loai_sp5 as $loi)
									 
									<li><a href="{{route('loaisanpham',$loi->id)}}">{{$loi->name}}</a></li>
									@endforeach
								</ul>
							</li>
							<li><a href="">Phụ kiện thời trang</a>
								<ul class="sub-menu"style="top:-512%">
									@foreach($loai_sp6 as $loi)
									 
									<li><a href="{{route('loaisanpham',$loi->id)}}">{{$loi->name}}</a></li>
									@endforeach
								</ul>
							</li>
							<li><a href="">Làm đẹp & Sức khỏe</a>
								<ul class="sub-menu"style="top:-614%">
									@foreach($loai_sp7 as $loi)
									 
									<li><a href="{{route('loaisanpham',$loi->id)}}">{{$loi->name}}</a></li>
									@endforeach
								</ul>
							</li>
							<li><a href="">Hàng mẹ và bé</a>
								<ul class="sub-menu"style="top:-716%">
									@foreach($loai_sp8 as $loi)
									 
									<li><a href="{{route('loaisanpham',$loi->id)}}">{{$loi->name}}</a></li>
									@endforeach
								</ul>
							</li>
							<li><a href="">Bánh kẹo & Đồ chơi</a>
								<ul class="sub-menu"style="top:-820%">
									@foreach($loai_sp9 as $loi)
									 
									<li><a href="{{route('loaisanpham',$loi->id)}}">{{$loi->name}}</a></li>
									@endforeach
								</ul>
							</li>
							<li><a href="">Thiết bị điện tử</a>
								<ul class="sub-menu"style="top:-922%">
									@foreach($loai_sp10 as $loi)
									 
									<li><a href="{{route('loaisanpham',$loi->id)}}">{{$loi->name}}</a></li>
									@endforeach
								</ul>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-md-10" style="padding:0; margin:0" >
					<div class="fullwidthbanner-container">
						<div class="fullwidthbanner">
							<div class="bannercontainer" >
								<div class="banner" >
									<ul>
										@foreach($slide as $sl)
										<!-- THE FIRST SLIDE -->
										<li data-transition="boxfade" data-slotamount="20" class="active-revslide" style="width: 100%; height: 100%; overflow: hidden; z-index: 18; visibility: hidden; opacity: 0;">
											<div class="slotholder" style="width:100%;height:100%;" data-duration="undefined" data-zoomstart="undefined" data-zoomend="undefined" data-rotationstart="undefined" data-rotationend="undefined" data-ease="undefined" data-bgpositionend="undefined" data-bgposition="undefined" data-kenburns="undefined" data-easeme="undefined" data-bgfit="undefined" data-bgfitend="undefined" data-owidth="undefined" data-oheight="undefined">
												<div class="tp-bgimg defaultimg" data-lazyload="undefined" data-bgfit="cover" data-bgposition="center center" data-bgrepeat="no-repeat" data-lazydone="undefined" src="source/image/slide/{{$sl->image}}" data-src="source/image/slide/{{$sl->image}}" style="background-color: rgba(0, 0, 0, 0); background-repeat: no-repeat; background-image: url('source/image/slide/{{$sl->image}}'); background-size: cover; background-position: center center; width: 100%; height: 100%; opacity: 1; visibility: inherit;">
												</div>
											</div>

										</li>
										@endforeach
									</ul>
								</div>
							</div>

							<div class="tp-bannertimer"></div>
						</div>
					</div>
					</div>
				</div>	
				</div>
				<div class="col-md-1"></div>					
	</div>
</div>
<!--slider-->
<div class="row">	
	<div class="col-md-1"></div>	

	<div class="col-md-10 tag xh1">
		<ul >
			<li >
				<button type="button" class="btn btn-light hovicon effect-4 sub-b color-orange" style="background: white">
					<a href="index">
						<img src="source/assets/dest/images/logo12/deal.png" style="width: 100px; height: 100px;">

					</a>
				</br>
				<a href="">Deal hot mỗi ngày</a>
			    </button>
		    </li>

		    <li>
			    <button type="button" class="btn btn-light hovicon effect-4 sub-b color-orange" style="background: white">
				    <a href="index">
					 <img src="source/assets/dest/images/logo12/thucpham.png" style="width: 100px; height: 100px;">
				    </a>
			    </br>
			    <a href="">Thức ăn các loại</a>
		        </button>
	        </li>

	<li>
		<button type="button" class="btn btn-light hovicon effect-4 sub-b color-orange" style="background: white">
			<a href="index">
				<img src="source/assets/dest/images/logo12/thit.png" style="width: 100px; height: 100px;">
			</a>
		</br>
		<a href="">Thịt phẩm an toàn</a>
	</button>
</li>

<li>
	<button type="button" class="btn btn-light hovicon effect-4 sub-b color-orange" style="background: white">
		<a href="index">
			<img src="source/assets/dest/images/logo12/fix.png" style="width: 100px; height: 100px;">
		</a>
	</br>
	<a href="index">Hải sản tươi sống</a>
</button>
</li>

<li>
	<button type="button" class="btn btn-light hovicon effect-4 sub-b color-orange" style="background: white">
		<a href="index">
			<img src="source/assets/dest/images/logo12/gd.png" style="width: 100px; height: 100px;">
		</a>
	</br>
	<a href="index">Đồ hàng gia dụng</a>
</button>
</li>

<li>
	<button type="button" class="btn btn-light hovicon effect-4 sub-b color-orange" href="" style="background: white">
		<a href="index">
			<img src="source/assets/dest/images/logo12/traicay.png" style="width: 100px; height: 100px;">
		</a>
	</br>
	<a href="index">Đồ ăn tráng miệng</a>
</button>
</li>

<li>
	<button type="button" class="btn btn-light hovicon effect-4 sub-b color-orange" href="" style="background: white">
		<a href="index">
			<img src="source/assets/dest/images/logo12/coffe.png" style="width: 100px; height: 100px;">
		</a>
	</br>
	<a href="index">Giải khát-Nhâm nhi</a>
</button>
</li>

<li>
	<button type="button" class="btn btn-light hovicon effect-4 sub-b color-orange" href="" style="background: white">
		<a href="">
			<img src="source/assets/dest/images/logo12/xt.png" style="width: 100px; height: 100px;">
		</a>
	</br>
	<a href="index">Xem thêm</a>
</button>
</li>

</ul>
</div>

    <div class="col-md-1"></div>	
</div>

<div class="container">
	<div id="content" class="space-top-none">
		<div class="main-content">
			<div class="space60">&nbsp;</div>
			<div class="row">
				<div class="col-sm-12">
					<div class="beta-products-list">
						<h3 class="widget widget-title">Sản phẩm mới</h3>
						<div class="beta-products-details">
							<p class="pull-left">Tìm thấy {{count($new_product)}} sản phẩm</p>
							<div class="clearfix"></div>
						</div>

						<div class="row">
							@foreach($new_product as $new)
							<div class="col-sm-3">
								<div class="single-item">
									@if($new->promotion_price!=0)
									<div class="ribbon-wrapper"><div class="ribbon sale">Sale</div></div>
									@endif
									<div class="single-item-header">
										<a href="{{route('chitietsanpham',$new->id)}}"><img src="source/image/product/{{$new->image}}" alt="" height="250px"></a>
									</div>
									@if($new->promotion_price==0)
									<div class="single-item-body">
										<p class="single-item-title">{{$new->name}}</p>
										<p class="single-item-price" style="font-size: 18px">
											
											<span class="flash-sale">{{number_format($new->unit_price)}} đồng</span>
											
											
											
										</p>
									</div>
									&nbsp;
									<div class="single-item-caption">
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<a class="add-to-cart pull-left" href="{{route('themgiohang',$new->id)}}"><i class="fa fa-shopping-cart"></i></a>
										&nbsp;&nbsp;&nbsp;
										<a class="beta-btn primary" href="{{route('chitietsanpham',$new->id)}}" style="font-size: 15px">Mua ngay <i class="fa fa-chevron-right"></i></a>
										<div class="clearfix"></div>
									</div>
									@else
									<div class="single-item-body">
										<p class="single-item-title">{{$new->name}}</p>
										<p class="single-item-price" style="font-size: 18px">

											
											
											<span class="flash-del">{{number_format($new->unit_price)}} đồng</span>
											<span class="flash-sale">{{number_format($new->promotion_price)}} đồng</span>
											
										</p>
									</div>
									&nbsp;
									<div class="single-item-caption">
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<a class="add-to-cart pull-left" href="{{route('themgiohang',$new->id)}}"><i class="fa fa-shopping-cart"></i></a>&nbsp;&nbsp;&nbsp;
										<a class="beta-btn primary" href="{{route('chitietsanpham',$new->id)}}" style="font-size: 15px">Mua ngay <i class="fa fa-chevron-right"></i></a>
										<div class="clearfix"></div>
									</div>
									@endif
								</div>
								&nbsp;&nbsp;
							</div>
							@endforeach
						</div>
						<div class="row">{{$new_product->links()}}</div>
					</div> <!-- .beta-products-list -->

					<div class="space50">&nbsp;</div>

					<div class="beta-products-list">
						<h3 class="widget widget-title">Sản phẩm khuyến mãi</h3>
						<div class="beta-products-details">
							<p class="pull-left">Tìm thấy {{count($sanpham_khuyenmai)}} sản phẩm</p>
							<div class="clearfix"></div>
						</div>
						<div class="row">
							@foreach($sanpham_khuyenmai as $spkm)
							<div class="col-sm-3">
								<div class="single-item">
									
									<div class="ribbon-wrapper"><div class="ribbon sale">Sale</div></div>
									
									<div class="single-item-header">
										<a href="{{route('chitietsanpham',$spkm->id)}}"><img src="source/image/product/{{$spkm->image}}" alt="" height="250px"></a>
									</div>
									<div class="single-item-body">
										<p class="single-item-title">{{$spkm->name}}</p>
										<p class="single-item-price"  style="font-size: 18px">
											<span class="flash-del">{{number_format($spkm->unit_price)}} đồng</span>
											<span class="flash-sale">{{number_format($spkm->promotion_price)}} đồng</span>
										</p>
									</div>
									&nbsp;
									<div class="single-item-caption">
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<a class="add-to-cart pull-left" href="{{route('themgiohang',$new->id)}}"><i class="fa fa-shopping-cart"></i></a>&nbsp;&nbsp;
										<a class="beta-btn primary" href="{{route('chitietsanpham',$spkm->id)}}">Chi tiết <i class="fa fa-chevron-right"></i></a>
										<div class="clearfix"></div>
									</div>
								</div>
								&nbsp;
							</div>

							@endforeach
						</div>
						<div class="row">{{$sanpham_khuyenmai->links()}}</div>
					</div> <!-- .beta-products-list -->

					<div class="beta-products-list">
						<h3 class="widget widget-title">Tất cả sản phẩm</h3>
						<div class="beta-products-details">
							<p class="pull-left">Tìm thấy {{count($all_sp)}} sản phẩm</p>
							<div class="clearfix"></div>
						</div>

						<div class="row">
							@foreach($all_sp as $n)
							<div class="col-sm-3">
								<div class="single-item">
									@if($n->promotion_price!=0)
									<div class="ribbon-wrapper"><div class="ribbon sale">Sale</div></div>
									@endif
									<div class="single-item-header">
										<a href="{{route('chitietsanpham',$n->id)}}"><img src="source/image/product/{{$n->image}}" alt="" height="250px"></a>
									</div>
									@if($n->promotion_price==0)
									<div class="single-item-body">
										<p class="single-item-title">{{$n->name}}</p>
										<p class="single-item-price" style="font-size: 18px">
											
											<span class="flash-sale">{{number_format($n->unit_price)}} đồng</span>
											
											
											
										</p>
									</div>
									&nbsp;
									<div class="single-item-caption">
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<a class="add-to-cart pull-left" href="{{route('themgiohang',$n->id)}}"><i class="fa fa-shopping-cart"></i></a>
										&nbsp;&nbsp;&nbsp;
										<a class="beta-btn primary" href="{{route('chitietsanpham',$n->id)}}" style="font-size: 15px">Mua ngay <i class="fa fa-chevron-right"></i></a>
										<div class="clearfix"></div>
									</div>
									@else
									<div class="single-item-body">
										<p class="single-item-title">{{$n->name}}</p>
										<p class="single-item-price" style="font-size: 18px">

											
											
											<span class="flash-del">{{number_format($n->unit_price)}} đồng</span>
											<span class="flash-sale">{{number_format($n->promotion_price)}} đồng</span>
											
										</p>
									</div>
									&nbsp;
									<div class="single-item-caption">
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<a class="add-to-cart pull-left" href="{{route('themgiohang',$n->id)}}"><i class="fa fa-shopping-cart"></i></a>&nbsp;&nbsp;&nbsp;
										<a class="beta-btn primary" href="{{route('chitietsanpham',$n->id)}}" style="font-size: 15px">Mua ngay <i class="fa fa-chevron-right"></i></a>
										<div class="clearfix"></div>
									</div>
									@endif
								</div>
								&nbsp;&nbsp;
							</div>
							@endforeach
						</div>
						
					</div> <!-- .beta-products-list -->

					<div class="space50">&nbsp;</div>
				</div>
			</div> <!-- end section with sidebar and main content -->


		</div> <!-- .main-content -->
	</div> <!-- #content -->
</div>
	@endsection