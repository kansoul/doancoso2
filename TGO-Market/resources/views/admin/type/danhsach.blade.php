@extends('admin.layout.index')
@section('content')
<div id="page-wrapper">
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Loại
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
						<th>Miêu tả</th>
						<th>Ảnh</th>
						<th>Delete</th>
						<th>Edit</th>
					</tr>
				</thead>
				<tbody>
					@foreach($type as $tl)
					<tr class="odd gradeX" align="center">
						<td>{{$tl->id}}</td>
						<td>{{$tl->name}}</td>
						<td>{{$tl->description}}</td>
						<td><img src="source/image/product/{{$tl->image}}" alt="" height="50px"></td>
						<td class="center"><i class="fa fa-trash-o  fa-fw"></i><a href="admin/type/xoa/{{$tl->id}}"> Delete</a></td>
						<td class="center"><i class="fa fa-pencil fa-fw"></i> <a href="admin/type/sua/{{$tl->id}}">Edit</a></td>
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