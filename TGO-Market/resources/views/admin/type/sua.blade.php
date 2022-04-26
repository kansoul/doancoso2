@extends('admin.layout.index')
@section('content')
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Loại
                    <small>{{$type->name}}</small>
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
                <form action="admin/type/sua/{{$type->id}}" method="POST">
                    <input type="hidden" name="_token" value="{{csrf_token()}}" />
                    <div class="form-group">
                        <label>Name</label>
                        <input class="form-control" name="Name" placeholder="Please Enter Category Name" value="{{$type->name}}" />
                    </div>
                    <div class="form-group">
                        <label>Miêu tả</label>
                        <input class="form-control" name="Mieuta" placeholder="Please Enter Description Order" value="{{$type->description}}" />
                    </div>
                    <div class="form-group">
                        <label>Tên ảnh</label>
                        <input class="form-control" name="Image" placeholder="Please Enter Image Keywords" value="{{$type->image}}"/>
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