<!DOCTYPE html>
<html>
    <head>
        <meta charset= utf-8>
        <title>Calculadora IMC (índice de massa corporal)  </title>
        <link rel="stylesheet" href="bootstrap/bootstrap.min.css">
        <style>
            h1 {
                 text-align: center;
                 margin-bottom: 5%;
            }
            body {
                padding-top: 0px;
                font-size: 12px;
                background: #708090; 
            }

            .container {
                margin: 0 auto;
                max-width: 1024px;
                width: 70%;
                width: 90%;
                margin-top: 10%;
                background: #FFF;
                padding: 2%;
                border: 1px solid #d0d0d0; 
                border-radius:7px;                 
            }
                        
            .alert-custom {
                font-size: 20px;
                color: #B22222;
                text-align: center;
            }

        </style>
    </head>
    <body>

        <div class="container">

            <h1>Calculadora IMC v1.0</h1>

            <div class="row">
                <form class="form-horizontal" action="${param.contextPath}/imc-sps/imc">

                    <fieldset>		

                        <div class="form-group">
                            <label class="col-md-4 control-label" for="textinput">Altura</label>  
                            <div class="col-md-4">
                                <input id="altura" name="altura" type="number" step="0.01" placeholder="altura em metros ex. 1.75 " class="form-control input-md" required="" value="${param.altura}" placeholder="Informe a altura">                                    
                            </div>
                        </div>                       

                        <div class="form-group">
                            <label class="col-md-4 control-label" for="textinput">Peso</label>  
                            <div class="col-md-4">
                                <input id="peso" name="peso"  type="number" step="0.01"  placeholder="peso" class="form-control input-md" required="" value="${param.peso}" placeholder="Informe o peso">
                            </div>
                        </div>                            

                            <div class="form-group">
                                <label class="col-md-4 control-label" for="selectbasic">Sexo</label>
                                <div class="col-md-4">
                                    <select name="sexo" class="form-control">
                                        <!--<option value=""> --- Sexo ---</option>-->
                                        <option value="M">Masculino</option>
                                        <option value="F">Feminino</option>
                                    </select>
                                </div>
                            </div>                       


                        <div class="form-group">
                            <label class="col-md-4 control-label" for="button1id"></label>
                            <div class="col-md-8">
                                <button type="submit" id="button1id" name="button1id" class="btn btn-success">Calcula</button>
                                <!-- <button type="reset" id="button2id" name="button2id" class="btn btn-danger">Limpa</button> -->
                            </div>
                        </div>

                    </fieldset>
                                        
                </form>
            </div>
                            
            <div class="alert-custom" role="alert" style="margin-top:45px">                
                ${resultado}
            </div>  
                            

        </div>

        <script>
            $(document).ready(function () {
                $('select').material_select();
            });
        </script>
    </body>
</html>