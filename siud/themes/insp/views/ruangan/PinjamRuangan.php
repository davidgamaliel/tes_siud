
<div class="row  border-bottom white-bg dashboard-header">
	<div class="col-sm-8">
		<h2>Form Permohonan Peminjaman Ruangan</h2>
	</div>
	<?php
		$this->breadcrumbs=array(
			'pinjam Ruangan',
		);
	?>
</div>

<?php
    $form = $this->beginWidget('CActiveForm');
?>

<div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">
        <div class="col-lg-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>Silakan isi form berikut untuk mengajukan peminjaman ruangan</h5>
                    
                </div>
                <div class="ibox-content">
                    <form method="get" class="form-horizontal">
                        <div class="form-group" id="data_1" >
                            <label class="col-sm-2 control-label"><?php echo $form->label($model, 'tanggal_peminjaman'); ?></label>
                            <div class="input-group date col-sm-10">
                            	<span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                            	<?php
                            	$this->widget('zii.widgets.jui.CJuiDatePicker',array(
	                                'model'=>$model,
	                                'attribute'=>'tanggal_peminjaman',
	                            	'value'=>Yii::app()->dateFormatter->format("d-M-y",CDateTimeParser::parse($model->tanggal_peminjaman, 'yyyy-MM-dd')),
	                                'options'=>array(
		                                'showAnim'=>'fold',
	                                ),
	                                'htmlOptions'=>array(
		                                'class'=>'form-control'
	                                ),
		                        )); 
		                        ?>   <!-- -->
                                <!-- <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input type="text" class="form-control" value="12/03/2017"> -->
                            </div>
                        </div>
                        <!-- <div class="hr-line-dashed"></div> -->

                        <div class="form-group">
                        	<label class="col-sm-2 control-label"><?php echo $form->label($model, 'waktu_peminjaman'); ?></label>
                            <div class="col-sm-10">
                            	<!-- <input type="text" class="form-control"> -->
                            	<?php echo $form->textField($model, 'waktu_peminjaman', array('class'=>'form-control')); ?>
                            </div>
                        </div>
                        <!-- <div class="hr-line-dashed"></div> -->
                        
                        <div class="form-group"><label class="col-sm-2 control-label">Ruangan</label>

                            <div class="col-sm-10"><select class="form-control m-b" name="account">
                                <option>Aula</option>
                                <option>Ruangan 1</option>
                                <option>Ruangan 2</option>
                                <option>Ruangan 3</option>
                            </select>    
                            </div>
                        </div>
                        <!-- <div class="hr-line-dashed"></div> -->
                         <div class="form-group"><label class="col-sm-2 control-label">Kegiatan</label>

                            <div class="col-sm-10"><input type="text" class="form-control"></div>
                        </div>
                        <!-- <div class="hr-line-dashed"></div> -->
                        <div class="form-group"><label class="col-sm-2 control-label">Upload Nodin</label>

                            <div class="col-sm-10"><input type="text" class="form-control"></div>
                        </div>
                        <!-- <div class="hr-line-dashed"></div> -->

                       
                        <div class="form-group">
                            <div class="col-sm-4 col-sm-offset-2">
                                <button class="btn btn-white" type="submit">Cancel</button>
                                <button class="btn btn-primary" type="submit">Kirim</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<?php $this->endWidget(); ?>
