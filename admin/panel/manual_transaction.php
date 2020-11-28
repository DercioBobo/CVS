<?php
require_once('../datatable-json/includes.php');

?>
<header class="slidePanel-header overlay">
    <div class="overlay-panel overlay-background vertical-align">
        <div class="service-heading">
            <h2>Adicionar Transações Manualmente</h2>
        </div>
        <div class="slidePanel-actions">
            <div class="btn-group-flat">
                <button type="button" class="btn btn-floating btn-warning btn-sm waves-effect waves-float waves-light margin-right-10" id="post_sidePanel_data"><i class="icon ion-android-done" aria-hidden="true"></i></button>
                <button type="button" class="btn btn-pure btn-inverse slidePanel-close icon ion-android-close font-size-20" aria-hidden="true"></button>
            </div>
        </div>
    </div>
</header>
<div class="slidePanel-inner">
    <div class="panel-body">
        <form name="form2"  class="form form-horizontal" method="post" data-ajax-action="addTransaction" id="sidePanel_form">
            <div class="form-body">
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">

                            <input class="form-control input-sm" type="text" id="title" name="product_name" placeholder="Titulo da Transação" />
                        </div>
                    </div>

                    <div class="col-md-12">
                        <div class="form-group">
                            <label class="control-label">Utilizador</label>
                            <div class="input-group">
                                <div class="input-group-addon"><i class="ion-person"></i></div>
                                <select class="form-control" name="user">
                                    <?php
                                    $user = get_user_list();
                                    foreach ($user as $value){
                                        echo '<option value="'.$value['name'].'">'.$value['name'].'</option>';
                                    }
                                    ?>
                                </select>
                                <span class="help-block"></span>
                            </div>

                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group">
                            <label for="amount">Valor</label>
                            <div class="input-group">
                                <div class="input-group-addon"><i class="fa fa-money"></i></div>
                                <input type="number" class="form-control" id="amount" placeholder="Valor" name="amount" value="">
                                <span class="help-block"></span>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-12">
                        <div class="form-group">
                            <label for="msisdn">Contacto</label>
                            <div class="input-group">
                                <div class="input-group-addon"><i class="ion-ios-telephone"></i></div>
                                <input type="number" class="form-control" id="msisdn" maxlength="9" placeholder="Contacto" name="msisdn" value="">
                            </div>
                        </div>
                    </div>

                </div>
                <input type="hidden" name="submit">
            </div>

        </form>
    </div>
</div>

