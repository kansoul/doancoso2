
<div id="header" style="background: white">
		
			<div class="container col-md-12 head">
				<div class="row">
					<div class="col-md-4" style="text-align: center;">
						Khu vực của bạn: Đà nẵng						
					</div>
					<div class="col-md-1"></div>
					<div class="col-md-7 top">
						<a href="ttsanpham.html">Chăm sóc khách hàng</a>
						<a href="ttsanpham.html">Kiểm Tra Đơn Hàng</a>
						<a href="ttsanpham.html">Đối tác cùng TG Online</a>
						<a href="{{route('lienhe')}}">Hỗ Trợ</a>
						@if(Auth::check())
						<a href="">Chào bạn {{Auth::user()->full_name}}</a>
						<a href="{{route('logout')}}">Đăng xuất</a>
						@else
						<a href="{{route('signin')}}">Đăng kí</a>
						<a href="{{route('login')}}">Đăng nhập</a>
						@endif
					</div>
				</div>
				
				<div class="clearfix"></div>
			</div> <!-- .container -->
		 <!-- .header-top -->
		
			<div class="container col-md-12 head1" style="padding-top: 20px; text-align: center;">
				<div class="row">

				<div class="pull-left col-md-4" >
					<a href="{{route('trang-chu')}}" id="logo"><img src="source/assets/dest/images/logo.png" width="200px" alt=""></a>
				</div>
				<div class="col-md-6" align="center" style="padding-top: 20px">
					<div class="space10">&nbsp;</div>
					
						<form role="search" method="get" action="{{route('search')}}">
							<div class="col-md-10" align="right" ><input type="text" class="form-control" name="key" placeholder="Tìm kiếm sản phẩm, thương hiệu,........" aria-label="Recipient's username" aria-describedby="button-addon2" style="font-size: 12px;"></div>
							<div class="input-group-append col-md-2" align="center">
								<button class="btn btn-outline-secondary" type="submit" id="button-addon2" style="background: red; color: white;">Tìm Kiếm</button>
							</div>
						</form>
					
                 </div>
                 <div class="col-md-2" align="left" style="padding-top: 25px">
					<div class="beta-comp">
						
						<div class="cart">
							<div class="beta-select"><i class="fa fa-shopping-cart"></i> Giỏ hàng 
								(@if(Session::has('cart')){{Session('cart')->totalQty}} @else Trống @endif) <i class="fa fa-chevron-down"></i></div>
							<div class="beta-dropdown cart-body">
								@if(Session::has('cart'))
							@foreach($product_cart as $product)

								<div class="cart-item">

									<a class="cart-item-delete" href="{{route('xoagiohang',$product['item']['id'])}}"><i class="fa fa-times"></i></a>

									<div class="media">
										<a class="pull-left" href="{{route('chitietsanpham',$product['item']['id'])}}"><img src="source/image/product/{{$product['item']['image']}}" alt=""></a>
										<div class="media-body">
											<span class="cart-item-title">{{$product['item']['name']}} <span>
											<span class="cart-item-amount">{{$product['qty']}}*<span>{{$product['item']['unit_price']}}</span></span>
										</div>
									</div>
								</div>
							@endforeach
									
								<div class="cart-caption">
									<div class="cart-total text-right">Tổng tiền: <span class="cart-total-value">{{Session('cart')->totalPrice}}</span></div>
									<div class="clearfix"></div>

									<div class="center">
										<div class="space10">&nbsp;</div>
										<a href="{{route('dathang')}}" class="beta-btn primary text-center">Đặt hàng <i class="fa fa-chevron-right"></i></a>
									</div>
								</div>

								@endif
							</div>

						</div> <!-- .cart -->
						
					</div>
				</div>
				<div class="clearfix"></div>
				</div>
			</div> <!-- .container -->
		 <!-- .header-body -->
		<div class="space10">&nbsp;</div>
		
	</div> <!-- #header -->
	<script type="text/javascript">
		
	</script>