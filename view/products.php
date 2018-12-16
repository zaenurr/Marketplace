            <form method="POST" action="<?php echo $host?>?page=create-product">
                <div class="row">
                    <div class="col-md-12">
                        <div class="col-sm-2">
                            <div class="input-group">
                            
                                <input type="text" name="count" class="form-control text-center" placeholder="0">
                                <span class="input-group-btn">
                                    
                                    <button type="submit" class="btn btn-info" type="button">Add+</button>
                                </span>
                            
                            </div>
                        </div>
                    </div>
                </div>
            </form>
                <p></p>
                <div class="row">
                    <div class="col-md-12">
                        <!-- START panel -->

                        <div class="panel panel-primary">
                            <!-- panel heading/header -->
                            <div class="panel-heading">
                                <h3 class="panel-title"><span class="panel-icon mr5"><i class="ico-table22"></i></span> Table Showcase</h3>
                                
                            </div>
                            <!--/ panel heading/header -->
                            

                            <!-- panel body with collapse capabale -->
                            <div class="table-responsive panel-collapse pull out" style="min-height: 200px">
                                <table class="table table-bordered table-hover" id="table1" >
                                    <thead>
                                        <tr>
                                            <th width="3%" class="text-center"><i class="ico-long-arrow-down"></i></th>
                                            <th width="5%"></th>
                                            <th>Name</th>
                                            <th>Price</th>
                                            <th>Category</th>
                                            <th>Brand</th>
                                            <th width="10%">Progress</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
<?php
    $no = 1;
    foreach ($statement as $row):    
?>
                                        <tr>
                                            <td><?php echo $no++?></td>
                                            <td><div class="media-object"><img src="<?php echo $host?>asset/image/avatar/avatar.png" alt="" class="img-circle"></div>
                                            </td>
                                            <td><?php echo $row['name']?></td>
                                            <td><?php echo $row['Price']?></td>
                                            <td><?php echo $row['Category']?></td>
                                            <td><?php echo $row['Brand']?></td>
                                            <td>
                                                <div class="progress progress-xs nm">
                                                    <div class="progress-bar progress-bar-danger" style="width:30%;"></div>
                                                </div>
                                            </td>
                                            <td class="text-center">
                                                <!-- button toolbar -->
                                                <div class="toolbar">
                                                    <div class="btn-group">
                                                        <button type="button" class="btn btn-sm btn-default">Action</button>
                                                        <button type="button" class="btn btn-sm btn-default dropdown-toggle" data-toggle="dropdown">
                                                            <span class="caret"></span>
                                                        </button>
                                                        <ul class="dropdown-menu dropdown-menu-right">
                                                            <li><a href="javascript:void(0);"><i class="icon ico-pencil"></i>Update</a></li>
                                                            <li><a href="javascript:void(0);"><i class="icon ico-print3"></i>Print</a></li>
                                                            <li class="divider"></li>
                                                            <li><a href="<?php echo $host?>/controller/delete-product.php?id=<?php echo $row['id']?>" class="text-danger"><i class="icon ico-remove3"></i>Delete</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <!--/ button toolbar -->
                                            </td>
                                        </tr>
<?php
    endforeach?>
                                        
                                        
                                    </tbody>
                                </table>
                            </div>
                            <!--/ panel body with collapse capabale -->
                        </div>
                    </div>
                </div>
