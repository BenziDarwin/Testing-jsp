<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="/WEB-INF/eistreamfields.tld" prefix="fields"%>
<%@ taglib uri="/WEB-INF/eistreamquery.tld" prefix="query"%>
<%@ page pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" session="false"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	  <script src="Scripts/jquery-3.3.1.min.js" type="text/javascript"></script> 
	  
	  
 <!--   <script src="Scripts/moment/moment.min.js" type="text/javascript"></script> -->
  <!--   <script src="Scripts/bootstrap/js/bootstrap.bundle.min.js" type="text/javascript"></script>
 <script src="Scripts/moment/moment.min.js" type="text/javascript"></script>
 <script type="text/javascript" src="Scripts/DataTables/datatables.min.js"></script> -->
<!--  <script src="Scripts/bootstrap-datetimepicker-master/js/bootstrap-datetimepicker.min.js" type="text/javascript"></script> 

<script type="text/javascript" src="Scripts/dashboard/dashboard2.js"></script>
<script type="text/javascript" src="Scripts/chart.js/Chart.min.js"></script>
-->
<script type="text/javascript" src="Scripts/dashboard/dashboard2.js"></script>
<script type="text/javascript" src="Scripts/chart.js/Chart.min.js"></script>


<!-- <link rel="stylesheet" type="text/css" href="Scripts/DataTables/datatables.min.css"/> -->
<link rel="stylesheet" href="Stylesheets/bootstrap/css/bootstrap.min.css"/>
<link rel="" href="Scripts/open-iconic-master/font/css/open-iconic-bootstrap.css"/>
<!-- <link rel="stylesheet" href="Scripts/bootstrap-datetimepicker-master/css/bootstrap-datetimepicker.min.css"/> -->
    <title>List of Tenants</title>

  </head>
  <body onLoad="window.focus();">
    <jsp:useBean id="queryResults" scope="request" class="com.eistream.sonora.query.JspQueryResults" />
    <jsp:useBean id="subqueryResults" scope="request" class="com.eistream.sonora.query.JspSubqueryResults"/>
    <jsp:useBean id="userContext" scope="request" class="com.eistream.sonora.users.UserContext"/>
    <bean:define id="userLocale" name="userContext" property="locale"/>
    <jsp:setProperty name="subqueryResults" property="locale" value="<%= userLocale %>" />
    <bean:define id="resultInfo" name="queryResults" property="resultInfos[0]" 
                 type="com.eistream.sonora.query.ResultInfo" />
    <jsp:setProperty name="subqueryResults" property="resultInfo" value="<%= resultInfo %>" />
	
	<%--
rowset = doquery('assetMovementForBarchart');
total =0;
HOS =0;
MakeCorrections =0;
HOD =0;
MD =0;
ASSETS_ACCOUNTS =0;
START =0;
OTHERS =0;
PL_STATUS_SCORE =0;
	if(!rowset.isEmpty()){
		total =rowset.size();
		for(row:rowset){
			
		PL_CURRENT_STAGE = row.PL_CURRENT_STAGE;
		PL_STATUS_SCORE = row.PL_STATUS_SCORE;
		
			
			if (PL_STATUS_SCORE==null ||PL_STATUS_SCORE==""||PL_STATUS_SCORE==0){
				START = START+1;
			}else if(PL_STATUS_SCORE==50){
				HOD = HOD+1;
			}else if(PL_STATUS_SCORE==80){
				MD = MD+1;
			}else if(PL_STATUS_SCORE==100){
				MD = MD+1;
			}else{
				OTHERS = OTHERS+1;
			}
			
		}
		
	}
	


--%>
		<div class="row">
          <div class="col-xl-3 col-sm-6 mb-3">
            <div class="card text-white bg-primary o-hidden h-100">
              <div class="card-body">
                <div class="card-body-icon">
                  <i class="fas fa-fw fa-comments"></i>
                </div>
                <div class="mr-5">26 New Messages!</div>
              </div>
              <a class="card-footer text-white clearfix small z-1" href="#">
                <span class="float-left">View Details</span>
                <span class="float-right">
                  <i class="fas fa-angle-right"></i>
                </span>
              </a>
            </div>
          </div>
          <div class="col-xl-3 col-sm-6 mb-3">
            <div class="card text-white bg-warning o-hidden h-100">
              <div class="card-body">
                <div class="card-body-icon">
                  <i class="fas fa-fw fa-list"></i>
                </div>
                <div class="mr-5">{{$tasks->count()}} New Tasks!</div>
              </div>
              <a class="card-footer text-white clearfix small z-1" href="{{route('tasks.index')}}">
                <span class="float-left"> View Details</span>
                <span class="float-right">
                  <i class="fas fa-angle-right"></i>
                </span>
              </a>
            </div>
          </div>
          <div class="col-xl-3 col-sm-6 mb-3">
            <div class="card text-white bg-success o-hidden h-100">
              <div class="card-body">
                <div class="card-body-icon">
                  <i class="fas fa-fw fa-shopping-cart"></i>
                </div>
                <div class="mr-5">{{$projects->count()}} Projects !</div>
              </div>
              <a class="card-footer text-white clearfix small z-1" href="{{route('projects.index')}}">
                <span class="float-left">View Details</span>
                <span class="float-right">
                  <i class="fas fa-angle-right"></i>
                </span>
              </a>
            </div>
          </div>
          <div class="col-xl-3 col-sm-6 mb-3">
            <div class="card text-white bg-danger o-hidden h-100">
              <div class="card-body">
                <div class="card-body-icon">
                  <i class="fas fa-fw fa-life-ring"></i>
                </div>
                <div class="mr-5">13 New Tickets!</div>
              </div>
              <a class="card-footer text-white clearfix small z-1" href="#">
                <span class="float-left">View Details</span>
                <span class="float-right">
                  <i class="fas fa-angle-right"></i>
                </span>
              </a>
            </div>
          </div>
        </div>
		
		
		<div class="row">
          <div class="col-md-12">
            <div class="card">
              <div class="card-header">
                <h5 class="card-title">Monthly Recap Report</h5>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                  <div class="btn-group">
                    <button type="button" class="btn btn-tool dropdown-toggle" data-toggle="dropdown">
                      <i class="fas fa-wrench"></i>
                    </button>
                    <div class="dropdown-menu dropdown-menu-right" role="menu">
                      <a href="#" class="dropdown-item">Action</a>
                      <a href="#" class="dropdown-item">Another action</a>
                      <a href="#" class="dropdown-item">Something else here</a>
                      <a class="dropdown-divider"></a>
                      <a href="#" class="dropdown-item">Separated link</a>
                    </div>
                  </div>
                  <button type="button" class="btn btn-tool" data-card-widget="remove">
                    <i class="fas fa-times"></i>
                  </button>
                </div>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <div class="row">
                  <div class="col-md-8">
                    <p class="text-center">
                      <strong>Sales: 1 Jan, 2014 - 30 Jul, 2014</strong>
                    </p>

                    <div class="chart">
                      <!-- Sales Chart Canvas -->
                      <canvas id="salesChart" height="180" style="height: 180px;"></canvas>
                    </div>
                    <!-- /.chart-responsive -->
                  </div>
                  <!-- /.col -->
                  <div class="col-md-4">
                    <p class="text-center">
                      <strong>Goal Completion</strong>
                    </p>

                    <div class="progress-group">
                      Add Products to Cart
                      <span class="float-right"><b>160</b>/200</span>
                      <div class="progress progress-sm">
                        <div class="progress-bar bg-primary" style="width: 80%"></div>
                      </div>
                    </div>
                    <!-- /.progress-group -->

                    <div class="progress-group">
                      Complete Purchase
                      <span class="float-right"><b>310</b>/400</span>
                      <div class="progress progress-sm">
                        <div class="progress-bar bg-danger" style="width: 75%"></div>
                      </div>
                    </div>

                    <!-- /.progress-group -->
                    <div class="progress-group">
                      <span class="progress-text">Visit Premium Page</span>
                      <span class="float-right"><b>480</b>/800</span>
                      <div class="progress progress-sm">
                        <div class="progress-bar bg-success" style="width: 60%"></div>
                      </div>
                    </div>

                    <!-- /.progress-group -->
                    <div class="progress-group">
                      Send Inquiries
                      <span class="float-right"><b>250</b>/500</span>
                      <div class="progress progress-sm">
                        <div class="progress-bar bg-warning" style="width: 50%"></div>
                      </div>
                    </div>
                    <!-- /.progress-group -->
                  </div>
                  <!-- /.col -->
                </div>
                <!-- /.row -->
              </div>
              <!-- ./card-body -->
              <div class="card-footer">
                <div class="row">
                  <div class="col-sm-3 col-6">
                    <div class="description-block border-right">
                      <span class="description-percentage text-success"><i class="fas fa-caret-up"></i> 17%</span>
                      <h5 class="description-header">$35,210.43</h5>
                      <span class="description-text">TOTAL REVENUE</span>
                    </div>
                    <!-- /.description-block -->
                  </div>
                  <!-- /.col -->
                  <div class="col-sm-3 col-6">
                    <div class="description-block border-right">
                      <span class="description-percentage text-warning"><i class="fas fa-caret-left"></i> 0%</span>
                      <h5 class="description-header">$10,390.90</h5>
                      <span class="description-text">TOTAL COST</span>
                    </div>
                    <!-- /.description-block -->
                  </div>
                  <!-- /.col -->
                  <div class="col-sm-3 col-6">
                    <div class="description-block border-right">
                      <span class="description-percentage text-success"><i class="fas fa-caret-up"></i> 20%</span>
                      <h5 class="description-header">$24,813.53</h5>
                      <span class="description-text">TOTAL PROFIT</span>
                    </div>
                    <!-- /.description-block -->
                  </div>
                  <!-- /.col -->
                  <div class="col-sm-3 col-6">
                    <div class="description-block">
                      <span class="description-percentage text-danger"><i class="fas fa-caret-down"></i> 18%</span>
                      <h5 class="description-header">1200</h5>
                      <span class="description-text">GOAL COMPLETIONS</span>
                    </div>
                    <!-- /.description-block -->
                  </div>
                </div>
                <!-- /.row -->
              </div>
              <!-- /.card-footer -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
		<br/>
		<div class="row">
          <div class="col-md-12">
		 <!-- BAR CHART -->
            <div class="card card-success">
              <div class="card-header">
                <h3 class="card-title">Bar Chart</h3>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse"><i class="fas fa-minus"></i>
                  </button>
                  <button type="button" class="btn btn-tool" data-card-widget="remove"><i class="fas fa-times"></i></button>
                </div>
              </div>
              <div class="card-body">
                <div class="chart">
                  <canvas id="barChart" style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
                </div>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
			</div>
			</div>
			<br/>
			<div class="row">
          <div class="col-md-12">
			 <!-- PIE CHART -->
            <div class="card card-danger">
              <div class="card-header">
                <h3 class="card-title">Pie Chart</h3>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse"><i class="fas fa-minus"></i>
                  </button>
                  <button type="button" class="btn btn-tool" data-card-widget="remove"><i class="fas fa-times"></i></button>
                </div>
              </div>
              <div class="card-body">
                <canvas id="pieChart" style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
              </div>
              <!-- /.card-body -->
            </div>
            </div>
            </div>
			
			
		
		
		
		  

        <!-- DataTables Example -->
       <div class="card mb-3">
 <div class="card-header">
            <i class="fas fa-table"></i>
            List of Projects</div>
          <div class="card-body">
            <div class="table-responsive">
              <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                <tr>
                    <th>Name</th>
                    <th>Description</th>
                    <th>Created by</th>
                    <th>Created on</th>
                    <th>Status</th>
                    <th>Action</th>
                  </tr>
                </thead>
                <tfoot>
               
                </tfoot>
                <tbody>
                @if (count($projects) > 0)
                              
                           
                              @foreach($projects as $project)
                  <tr>
                  <?php // print_r($project->user ); die(); ?>
                    <th><span class="list-group-item"> 
        <i class="fa fa-play" aria-hidden="true"></i>
        <a href="{{route('projects.show', $project->id)}}" >{{ $project->name }}</a></span></th>
                    <th>{!! $project->description !!}</th>
                    <th>{{ $project->user->name }}</th>
                    <th>{{ $project->created_at }}</th>
                    <th>{{ $project->status }}</th>
                    <th> <a class="btn btn-primary" href="{{ route('projects.edit', [ 'id' => $project->id ]) }}"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span> Edit</a>          
                    <form id="project_form" action="{{ route('projects.destroy', [ 'id' => $project->id ]) }}" method="POST">
    {{ csrf_field() }}   <input type="hidden" name="_method" value="DELETE">
    <input class="btn btn-danger" type="submit" value="Delete" onclick="return validateForm()">
          
    {{ csrf_field() }}
    </form>
       </th>
                  </tr>
                 
                  @endforeach;

@endif
    
                  
                </tbody>
              </table>
            </div>
          </div>
         
        </div>
		
		<div class="card mb-3">
 <div class="card-header">
            <i class="fas fa-table"></i>
            List of tasks</div>
          <div class="card-body">
            <div class="table-responsive">
              <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                <tr>
                    <th>Name</th>
                    <th>Priority</th>
                    <th>Progress</th>
                    <th>Created by</th>
                    <th>Start date</th>
                    <th>Due Date</th>
                    <th>Action</th>
                  </tr>
                </thead>
                <tfoot>
               
                </tfoot>
                <tbody>
                @if (count($tasks) > 0)
                              
                           
                              @foreach($tasks as $task)
                  <tr>
                  <?php // print_r($project->user ); die(); ?>
                    <th><span class="list-group-item"> 
        <i class="fa fa-play" aria-hidden="true"></i>
        <a href="{{route('tasks.show', $task->id)}}" >{{ $task->name }}</a></span></th>
                    <th>{!! $task->priority !!}</th>
                    <th>{{ $task->progress }} %</th>
                    <th>{{ $task->user->name }}</th>
                    <th>{{ $task->start_date }}</th>
                    <th>{{ $task->due_date }}</th>
                    <th> <a class="btn btn-primary" href="{{ route('tasks.edit', [ 'id' => $task->id ]) }}"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span> Edit</a>          
                    <form id="project_form" action="{{ route('tasks.destroy', [ 'id' => $task->id ]) }}" method="POST">
    {{ csrf_field() }}   <input type="hidden" name="_method" value="DELETE">
    <input class="btn btn-danger" type="submit" value="Delete" onclick="return validateForm()">
          
    {{ csrf_field() }}
    </form>
       </th>
                  </tr>
                 
                  @endforeach;

@endif
    
                  
                </tbody>
              </table>
            </div>
          </div>
         
        </div>


 <script>

jQuery(document).ready(function(){

});
/*
jQuery.ajax({url: getUrl}).success(function(data){
var people =[];
jQuery.each(data.firstChild.children, function(k, v){
	
//people.push('<li id="'+jQuery(v).attr('id')+'">'+jQuery(v).attr('name')+'</li>');
});

function matchPeople(input) {
  var reg = new RegExp(input.split('').join('\\w*').replace(/\W/, ""), 'i');
  return people.filter(function(person) {
    if (person.match(reg)) {
      return person;
    }
  });
}

function changeInput(val) {
  jQuery('#result').show();
  var autoCompleteResult = matchPeople(val);
 // document.getElementById("result").innerHTML = '<ul>'+autoCompleteResult+'</ul>';
}

jQuery('#FC_HOD_NAME').keyup(function(){

//  changeInput(jQuery(this).val());
// jQuery('li').click(function(){
 //jQuery('#FC_HOD_NAME').val(jQuery(this).text());
 //jQuery('#FC_PREV_STAGE').val(jQuery(this).attr('id'));
 //  jQuery('#result').hide();
});
});
				
			});
			
 });
 */
  /*

jQuery(document).ready(function(){
	var href = window.location.href;
	
		jQuery.ajax({
		  url: "http://127.0.0.1:8180/dms/CaseAjax?method=bar",
		//  context: document.body
		}).done(function(data) {
			//alert( data.response.getElementsByTagName("total")[0].firstChild);
		//	alert(jQuery(data).find('tab'));
			console.log(data)
		// window.location = window.location.href;
		//	 alert("done " );
		  //$( this ).addClass( "done" );
		});
});

*/
</script>

  </body>
</html>
