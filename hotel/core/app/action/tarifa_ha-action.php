<?php if(isset($_POST['id']) and $_POST['id']!=""){ ?>

<?php $tarifa = TarifaData::getById($_POST['id']); ?>          
                
                <div class="input-group"> 
                  <div class="input-group-addon">
                    <i class="fa fa-money"></i> Precio&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  </div>
                  <input type="number" class="form-control monto" name="precio" placeholder="Ingrese precio" value="<?php echo $tarifa->precio; ?>"id="precio">
                </div>
                <!-- /.input group -->
<?php }; ?>