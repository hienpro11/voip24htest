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
			<form method="POST" id="form-fillter">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<div class="col-md-3 form-group"> 
					<label >ngay bat dau:</label>
                    <div class='input-group date' id='datetimepicker1'>
						<input type='text' class="form-control" value="<?=@date("2018-12-18 00:00:00");?>" id="date_start"/>
						<span class="input-group-addon">
						   <span class="glyphicon glyphicon-calendar"></span>
						</span>
                    </div>
				</div>	
					<div class="col-md-3 form-group">
						 <label >ngay ket thuc:</label>
						<div class='input-group date' id='datetimepicker2'>
						<input type='text' class="form-control"  value="<?=@date("2018-12-18 23:59:59");?>" id="date_end" />
						<span class="input-group-addon">
						   <span class="glyphicon glyphicon-calendar"></span>
						</span>
                    </div>
					</div>
					<div class="col-md-3 form-group">
						<label >type:</label>
						<select class="form-control" id="sip_type" onchange="get_datatable(this)" >
						    <option value="">---none---</option>
							<option value="inbound">inbound </option>
							<option value="outbound">outbound  </option>
						</select>
					</div>
					<div class="col-md-3 form-group">
						<label >status:</label>
						<select class="form-control" id="sip_status" onchange="get_datatable(this)">
						    <option value="">---none---</option>
							<option value="ANSWERED">ANSWERED </option>
							<option value="MISSED">MISSED </option>
							<option value="FAILED">FAILED </option>
							<option value="BUSY">BUSY </option>
							<option value="NO ANSWER">NO ANSWER  </option>
						</select>
					</div>
					<div class="col-md-3 form-group"> 
						<label > src:</label>
						<input class="form-control" type="text"  id="history_src" ">
					</div>
					<div class="col-md-3 form-group">
						<button style="margin-top: 1.7em;" class="form-control btn btn-primary" type="button" onclick="get_datatable(this)" > Seach </button>
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
						<th>calldate</th>
						<th>src</th>
						<th>dst</th>
						<th>duration</th>
						<th>disposition</th>
						<th>billsec</th>
						<th>type</th>
						<th>did</th>
					</tr>
				</thead>
				
			</table>
		</div>
	</div>
</div>
<script>


$(function(){ get_datatable();
 $('#datetimepicker1').datetimepicker({
	 
	 format: 'DD-MM-YYYY HH:mm:ss'
 });
 $('#datetimepicker2').datetimepicker({
	  format: 'DD-MM-YYYY HH:mm:ss'
 });
 });
 
function get_datatable(){
	$.fn.dataTable.ext.errMode = 'throw';
    $('#example').DataTable({
        ajax: {
			url: '/history/api/list',
		    dataType:"json",
		    method:"POST",
			data:{
			   date_start:$("#date_start").val(),
			   date_end:$("#date_end").val(),
			   type:$("#sip_type").val(),
			   status:$("#sip_status").val(),
			   src:$("#history_src").val(),
			}
		},
        "destroy": true,"processing": true,"async": true,"serverSide": true,
        columns: [
			{data:'calldate' },
			{data:'src' },
			{data:'dst' },
			{data:'duration' },
			{data:'disposition' },
			{data:'billsec' },
			{data:'type' },
			{data:'did'},
        ],
    });
}

</script>
</body>
</html>
