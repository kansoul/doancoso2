@extends('admin.layout.index')
@section('content')
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Tài khoản
                    <small>{{$us->name}}</small>
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
                <form action="admin/user/sua/{{$us->id}}" method="POST">
                    <input type="hidden" name="_token" value="{{csrf_token()}}" />
                    <div class="form-group">
                        <label>Full Name</label>
                        <input class="form-control" name="name" placeholder="Nhập tên" value="{{$us->full_name}}" />
                    </div>
                    <div class="form-group">
                        <label>Email</label>
                        <input class="form-control" name="mail" placeholder="Nhập email" value="{{$us->email}}" />
                    </div>
                    <div class="form-group">
                        <label>Phone</label>
                        <input class="form-control" name="dt" placeholder="Nhập số điện thoại" value="{{$us->phone}}" />
                    </div>
                    <div class="form-group">
                        <label>Address</label>
                        <input class="form-control" name="diachi" placeholder="Nhập địa chỉ" value="{{$us->address}}" />
                    </div>                
                   
                    <button type="submit" class="btn btn-default">Sửa</button>
                    <button type="reset" class="btn btn-default">Reset</button>
                    <form>
                    </div>
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </div>
@endsection