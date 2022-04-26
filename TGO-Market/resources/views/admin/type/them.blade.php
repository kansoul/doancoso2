@extends('admin.layout.index')
@section('content')
<div id="page-wrapper">
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Loại
					<small>Thêm</small>
				</h1>
			</div>
			<!-- /.col-lg-12 -->
			<div class="col-lg-7" style="padding-bottom:120px">
				@if(count($errors)>0)
                    <div class="alert alert-danger">
                    	@foreach($errors->all() as $err)
                             {{$err}}</br>
                    	@endforeach
                    </div>
				@endif
                @if(session('thongbao'))
                    <div class="alert alert-success">
                    	{{session('thongbao')}}
                    </div>
                @endif
				<form action="admin/type/them" method="POST">
					<input type="hidden" name="_token" value="{{csrf_token()}}" />
					<div class="form-group">
						<label>Name</label>
						<input class="form-control" name="Name" placeholder="Điền tên" />
					</div>
					<div class="form-group">
						<label>Loại</label>
						<input class="form-control" name="Mieuta" placeholder="Điều loại: 1 or 2" />
					</div>
					<div class="form-group">
						<label>Tên Ảnh</label>
						<input class="form-control" name="Image" placeholder="Tên Ảnh" />
					</div>
					
					<button type="submit" class="btn btn-default">Thêm</button>
					<button type="reset" class="btn btn-default">Reset</button>
					<form>
					</div>
				</div>
				<!-- /.row -->
			</div>
			<!-- /.container-fluid -->
		</div>
@endsection