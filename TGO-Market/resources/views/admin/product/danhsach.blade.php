@extends('admin.layout.index')
@section('content')
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Sản phẩm
                    <small>Danh sách</small>
                </h1>
            </div>
            <!-- /.col-lg-12 -->
            @if(session('thongbao'))
                    <div class="alert alert-success">
                        {{session('thongbao')}}
                    </div>
                @endif
            <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                <thead>
                    <tr align="center">
                        <th>ID</th>
                        <th>Name</th>
                        <th>Loại</th>
                        <th>Miêu tả</th>
                        <th>Giá gốc</th>
                        <th>Giá khuyến mãi</th>
                        <th>Ảnh</th>
                        <th>Unit</th>
                        <th>New</th>
                        <th>Delete</th>
                        <th>Edit</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($pro as $sl)
                    <tr class="even gradeC" align="center">
                        <td>{{$sl->id}}</td>
                        <td>{{$sl->name}}</td>
                        <td>{{$sl->id_type}}</td>
                        <td>{{$sl->description}}</td>
                        <td>{{$sl->unit_price}}</td>
                        <td>{{$sl->promotion_price}}</td>
                        <td><img src="source/image/product/{{$sl->image}}" alt="" height="50px"></td>
                        
                        <td>{{$sl->unit}}</td>
                        <td>{{$sl->new}}</td>
                       
                        <td class="center"><i class="fa fa-trash-o  fa-fw"></i><a href="admin/product/xoa/{{$sl->id}}"> Delete</a></td>
                        <td class="center"><i class="fa fa-pencil fa-fw"></i> <a href="admin/product/sua/{{$sl->id}}">Edit</a></td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container-fluid -->
</div>
@endsection