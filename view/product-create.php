
<div class="col-md-6 col-md-offset-3">
                        <!-- Form horizontal layout -->
                        <form method="POST" class="form-horizontal panel panel-default" action="<?php echo $host?>controller/create-product.php">
                            <div class="panel-heading">
                                <h3 class="panel-title">Product Insert</h3>
                            </div>
                            
<?php
    if (isset($_POST['count']) && $_POST['count'] != null) {
        $count = $_POST['count'];
    } else {
        $count = 1;
    }?>
                            <input name="count" type="hidden" value="<?php echo $count?>">
<?php
    for ($i = 1; $i <= $count; $i++):?>               
                            <div class="panel-body">
                                <div class="form-group">
                                    <label class="control-label col-sm-4">Name of Product <?php echo $i?></label>
                                    <div class="col-sm-8">
                                        <input name="name" type="text" class="form-control" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-sm-4">Detail</label>
                                    <div class="col-sm-8">
                                        <input name="detail" type="text" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-sm-4">Price</label>
                                    <div class="col-sm-8">
                                        <input name="price" type="text" class="form-control" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-sm-4">Discount</label>
                                    <div class="col-sm-8">
                                        <input name="discount" type="text" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-sm-4">Category</label>
                                    <div class="col-sm-8">
                                        <select name="id_category" class="form-control">
                                            <option value="">Select</option>
<?php 
    foreach($categories as $category):?>
                                            <option value="<?php echo $category['id']?>"><?php echo $category['name']?></option>
<?php 
    endforeach?>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-sm-4">Brand</label>
                                    <div class="col-sm-8">
                                        <select name="id_brand" class="form-control">
                                            <option value="">Select</option>
<?php
    foreach($brands as $brand):?>
                                            <option value="<?php echo $brand['id']?>"><?php echo $brand['name']?></option>
<?php
    endforeach?>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <hr>
<?php
    endfor?>
                            
                            <div class="panel-footer text-right">
                                <button type="submit" class="btn btn-primary">Proceed</button>
                                <button type="reset" class="btn btn-inverse">Reset</button>
                            </div>
                        </form>
                        <!--/ Form horizontal layout -->
                    </div>