
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

<link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css" />
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/css/bootstrap-datetimepicker.css">

<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/js/bootstrap-datetimepicker.min.js"></script>
</head>
<body>
<div class="container-fluid">
	<div class="container-fluid">
	<div class="container">
		<div class="col-md-12 col-sm-12 col-xs-12">
			<form id= "form_fillter">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<div class="col-md-3 form-group"> 
					<label >full_name:</label>
					<input type='text' name='fullname' class="form-control" id="sip3_name"/>
				</div>	
				<div class="col-md-3 form-group"> 
					<label >number_phone:</label>
					<input type='text' name='phone' class="form-control"  id="sip3_phone"/>
				</div>	
				<div class="col-md-3 form-group"> 
					<label >email:</label>
					<input type='text' name='email' class="form-control"  id="sip3_email"/>
				</div>	
				<div class="col-md-3 form-group"> 
					<label >privacy:</label>
						<select class="form-control" id="sip3_privacy" name='privacy' >
						    <option value="">---none---</option>
							<option value="private ">private  </option>
							<option value="public ">public   </option>
						</select>
				</div>	
					<div class="col-md-3 form-group">
						<button style="margin-top: 1.7em;" class="form-control btn btn-primary" type="submit" onclick="get_datatable(this)" > create </button>
					</div>
				</div>
			</form>
		</div>
	</div>
	<div class="container" style="padding-top:50px">
		<div class="col-md-12 col-sm-12 col-xs-12">
				<table id="example" class="display" style="width:100%">
				<thead>
					<tr>
						<th>full_name</th>
						<th>number_phone</th>
						<th>email</th>
					</tr>
				</thead>
				
			</table>
		</div>
	</div>
</div>
<script>


$(function(){ 
	get_datatable();
	$('#form_fillter').submit(function(e){
		 e.preventDefault();
			let p = new FormData($(this)[0]);
		$.ajax({
			url:'/create/api/create',type:"POST",dataType:"json",data:p,async:!0,cache:!1,contentType:!1,enctype:"multipart/form-data",processData:!1,
			 success:function(e){
              console.log(e);
            }
		});
	});
 });
 
function get_datatable(){
	$.fn.dataTable.ext.errMode = 'throw';
    $('#example').DataTable({
        ajax: {
			url: '/sip3/api/list',
		    dataType:"json",
		    method:"POST",
			data:{
			   full_name:$("#sip3_name").val(),
			   number_phone:$("#sip3_phone").val(),
			   email:$("#sip3_email").val(),
			   privacy:$('#sip3_privacy').val(),
			}
		},
        "destroy": true,"processing": true,"async": true,"serverSide": true,
        columns: [
			{data:'full_name' },
			{data:'number_phone' },
			{data:'email' },
        ],
    });
}

</script>
</body>
</html>
