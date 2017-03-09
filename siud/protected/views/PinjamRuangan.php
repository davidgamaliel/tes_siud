<?php
/* @var $this TranPeminjamanRuanganController */
/* @var $model TranPeminjamanRuangan */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'tran-peminjaman-ruangan-PinjamRuangan-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// See class documentation of CActiveForm for details on this,
	// you need to use the performAjaxValidation()-method described there.
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'id_ruangan'); ?>
		<?php echo $form->textField($model,'id_ruangan'); ?>
		<?php echo $form->error($model,'id_ruangan'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'id_user_peminjam'); ?>
		<?php echo $form->textField($model,'id_user_peminjam'); ?>
		<?php echo $form->error($model,'id_user_peminjam'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'waktu_peminjaman'); ?>
		<?php echo $form->textField($model,'waktu_peminjaman'); ?>
		<?php echo $form->error($model,'waktu_peminjaman'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'kegiatan'); ?>
		<?php echo $form->textField($model,'kegiatan'); ?>
		<?php echo $form->error($model,'kegiatan'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'nodin'); ?>
		<?php echo $form->textField($model,'nodin'); ?>
		<?php echo $form->error($model,'nodin'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'tanggal_peminjaman'); ?>
		<?php echo $form->textField($model,'tanggal_peminjaman'); ?>
		<?php echo $form->error($model,'tanggal_peminjaman'); ?>
	</div>


	<div class="row buttons">
		<?php echo CHtml::submitButton('Submit'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->