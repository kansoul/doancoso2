@extends('admin.layout.index')
@section('content')
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Sản phẩm
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
                <form action="admin/product/them" method="POST">
                    <input type="hidden" name="_token" value="{{csrf_token()}}" />
                    <div class="form-group">
                        <label>Name</label>
                        <input class="form-control" name="ten" placeholder="Nhập tên" />
                    </div>
                    <div class="form-group">
                        <label>Loại</label>
                        <input class="form-control" name="idtype" placeholder="Nhập Loại" />
                    </div>
                    <div class="form-group">
                        <label>Miêu tả</label>
                        <input class="form-control" name="mieuta" placeholder="Nhập miêu tả" />
                    </div>
                    <div class="form-group">
                        <label>Giá gốc</label>
                        <input class="form-control" name="giagoc" placeholder="Nhập giá gốc" />
                    </div>
                    <div class="form-group">
                        <label>Giá khuyến mãi (nếu có)</label>
                        <input class="form-control" name="giakm" placeholder="Nhập giá khuyến mãi" />
                    </div>
                    <div class="form-group">
                        <label>Tên Ảnh</label>
                        <input class="form-control" name="tenanh" placeholder="Nhập tên ảnh" />
                    </div>
                    <div class="form-group">
                        <label>Unit (hôp/cái)</label>
                        <input class="form-control" name="sl" placeholder="" />
                    </div>
                    <div class="form-group">
                        <label>New</label>
                        <input class="form-control" name="moi" placeholder="New=1; NotNew=0" />
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