<%@ Page Language="C#" AutoEventWireup="true" CodeFile="instituicao.aspx.cs" Inherits="instituicao" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1 " />

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous" />
    <link href="css/cssPaginas.css" type="text/css" rel="stylesheet" />
    <link href="css/animations.css" type="text/css" rel="stylesheet"/>

    <title> Aldeia Nissi </title>
</head>
<body>
    <form id="form1" runat="server">
        <section>   
            <!-- NAVBAR -->
            <nav id="navBarSection" class="navbar navbar-expand-lg nav-size navbar-light bg-menu fixed-top">
                <a class="navbar-brand brand ml-sm-5" href="index.aspx"> dobem </a>

                <button id="sandwich" class="navbar-toggler custom-toggler" type="button" data-toggle="collapse" data-target="#navbar" aria-expanded:"false">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse justify-content-center" id="navbar">
                    <ul class="nav navbar-nav ml-auto">
                        <li class="nav-item mr-5">
                            <a class="nav-link move" href="perfil.aspx"> perfil </a>
                        </li>
                        <li class="nav-item mr-5">
                            <a class="nav-link move" href="#mensagens" data-toggle="modal" data-target="#ModalMensagem"> mensagens </a>
                        </li>
                        <li class="nav-item mr-5">
                            <a class="nav-link move" href="doacoes.aspx"><span style="color: #F6565F"> instituições </span></a>
                        </li>
                        <li class="nav-item mr-5">
                            <a class="nav-link move" href="doBem.aspx"> doBem </a>
                        </li>
                        <li class="nav-item mr-5">
                            <asp:Button ID="BtnSair" CssClass="nav-item nav-link btn-sair col-6 ml-4" runat="server" Text="sair" OnClick="BtnSair_Click"/>
                        </li>
                    </ul>
                </div>
            </nav>
        </section>

         <!-- MODAL MENSAGEM -->
        <section class="modal" id="ModalMensagem" tabindex="-1" aria-hidden="true" role="dialog">
            <article class="modal-dialog modal-dialog-centered modal-lg" role="document">
                <div class="modal-content">
                    <div class="d-flex flex-wrap">
                        <div class="col-lg-4 quadrodeskpreto">
                            <div class="form-group has-search mt-4">
                                <input type="text" class="form-control barrapesquisa" placeholder="Pesquisar instituições"/>
                            </div>   
                        </div>
                        <div class="col-12 col-lg-8 justify-content-center">
                            <button type="button" class="close mt-3" data-dismiss="modal">&times;</button>
                            <div class="row">
                                <div class="col-2">
                                    <img src="../images/aldeianissi.png" class="foto-instituicao" alt="Alternate Text" />
                                </div>
                                <div class="col-10">
                                    <h4 class="mt-5 ml-4 bold">Aldeia Nissi</h4>
                                </div>
                            </div>

                            <div class="row col-12-balao d-flex justify-content-end">
                                <div class="balao balao1 mt-3 ">
                                    <p class="pt-3 pl-4 pr-5">Boa tarde, gostaria de saber se vocês estão aceitando doações de roupas agora?</p>
                                </div>
                            </div>
                            <div class="row col-12-balao">
                                <div class="balao balao2 mt-3 justify-content-start">
                                    <p class="pt-3 pl-4 pr-4"> Boa tarde! Estamos sim! </p>
                                </div>
                            </div>
                            <div class="row col-12-balao d-flex justify-content-end">
                                <div class="balao balao1 mt-3 d-flex justify-content-end">
                                    <p class="pt-3 pl-3 pr-4">Gostaria de saber também onde são os pontos de coleta</p>
                                </div>
                            </div>
                            <div class="row col-12-balao">
                                <div class="balao balao2 mt-3 justify-content-start">
                                    <p class="pt-3 pl-4 pr-4">Você pode encontrá-los na página da instituição!</p>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-9 mt-3 p-1">
                                    <textarea class="caixatexto form-control" id="exampleFormControlTextarea1" rows="2"></textarea>
                                </div>

                                <div class="row col-3 mt-3 p-3">
                                    <asp:Button ID="Button1" CssClass="col-5 enviarmensagem" runat="server" Text=">" />
                                    
                                    <asp:Button ID="Button2" CssClass="col-5 anexar" runat="server" Text="+" />
                                </div>
                            </div>
                            </div>
                        </div>
                    </div>
            </article>
        </section>
       

        <section class="perfil">
            <section class="doacoesheader"></section>
            <div class="col-12 col-md-6 col-lg-5" align="center">
                <img src="../images/aldeianissi.png" class="img foto" alt="Alternate Text" align="center"/>
                <h1 class="bold mt-3 mb-lg-5"> ALDEIA NISSI </h1>
            </div>
            <div class="col-11 col-md-7 col-lg-7 pl-5 conteudoinsti">
                <h5> A Aldeia Nissi é uma instituição que ajuda crianças carentes na Angola, com comida, roupas e abrigos - Controem casas, escolas e hospitais. </h5>
            </div>
        </section>

        <!-- 4 ABAS -->
        <section class="navinsti">
            <nav>
                <div class="nav nav-tabs" id="nav-tab" role="tablist">
                    <a class="nav-item nav-link active col-3 mx-auto text-center" id="nav-mensagens" data-toggle="tab" href="#tab-mensagens" role="tab" aria-controls="tab-mensagen" aria-selected="true" align="center"> <img src="../images/mensagens.png" class="img img-fluid" alt="Alternate Text"/> </a>
                    <a class="nav-item nav-link col-3 mx-auto text-center" id="nav-dinheiro" data-toggle="tab" href="#tab-dinheiro" role="tab" aria-controls="tab-dinheiro" aria-selected="false" align="center"> <img src="../images/dinheiro.png" class="img img-fluid" alt="Alternate Text"/> </a>
                    <a class="nav-item nav-link col-3 mx-auto text-center" id="nav-voluntario" data-toggle="tab" href="#tab-voluntario" role="tab" aria-controls="tab-voluntario" aria-selected="false" align="center"> <img src="../images/voluntario.png" class="img img-fluid" alt="Alternate Text"/> </a>
                    <a class="nav-item nav-link col-3 mx-auto text-center" id="nav-recursos" data-toggle="tab" href="#tab-recursos" role="tab" aria-controls="tab-recursos" aria-selected="false" align="center"> <img src="../images/recursos.png" class="img img-fluid " alt="Alternate Text"/> </a>
                </div>
            </nav>
            <div class="tab-content animatedParent" id="nav-tabContent">
                <!-- TAB MENSAGENS -->
                <div class="tab-pane fade show active" id="tab-mensagens" role="tabpanel" aria-labelledby="nav-mensagens" align="center">
                    <div class="col-10 col-md-6 mt-5">
                        <h2 class="bold animated fadeIn"> Mensagens e alertas da Aldeia Nissi! </h2>
                    </div>
                    <div class="shadow-sm col-11 col-lg-8 p-3 mt-5 caixinha">
                        <h5 class="pt-3 col-md-8"> Agradecemos à todas as doações que estão sendo realizadas, não importa o valor/quantidade, estamos gratos! :) - Equipe Aldeia Nissi </h5>
                    </div>
                    <div class="shadow-sm col-11 col-lg-8 p-3 mt-5 caixinha">
                        <h5 class="pt-3 col-md-8"> Aldeia Nissi <span style="color:#03C3CF">criou um evento</span> para o dia 17/10/19 às 19hrs em Avenida Santos 19 SP/IPIRANGA </h5>
                    </div>
                    <div class="shadow-sm col-11 col-lg-8 p-3 mt-5 caixinha">
                        <h5 class="pt-3 col-md-8"> Agradecemos à todas as doações que estão sendo realizadas, não importa o valor/quantidade, estamos gratos! :) - Equipe Aldeia Nissi </h5>
                    </div>
                    <div class="shadow-sm col-11 col-lg-8 p-3 mt-5 caixinha">
                        <h5 class="pt-3 col-md-8"> Aldeia Nissi <span style="color:#03C3CF">criou um evento</span> para o dia 17/10/19 às 19hrs em Avenida Santos 19 SP/IPIRANGA </h5>
                    </div>
                    <div class="shadow-sm col-11 col-lg-8 p-3 mt-5 caixinha">
                        <h5 class="pt-3 col-md-8"> Agradecemos à todas as doações que estão sendo realizadas, não importa o valor/quantidade, estamos gratos! :) - Equipe Aldeia Nissi </h5>
                    </div>
                    <div class="shadow-sm col-11 col-lg-8 p-3 mt-5 caixinha">
                        <h5 class="pt-3 col-md-8"> Aldeia Nissi <span style="color:#03C3CF">criou um evento</span> para o dia 17/10/19 às 19hrs em Avenida Santos 19 SP/IPIRANGA </h5>
                    </div>
                </div>
                <!-- TAB DINHEIRO -->
                <div class="tab-pane fade" id="tab-dinheiro" role="tabpanel" aria-labelledby="nav-dinheiro" align="center">
                    <div class="col-10 col-md-6 mt-5">
                        <h2 class="bold animated fadeIn"> Faça doações monetárias e acompanhe a campanha de arrecadação! </h2>
                    </div>
                    <div class="col-5">
                        <h1 class="bold mt-5 valor"> R$306,90 </h1>
                    </div>
                    <div class="progress col-8 p-0">
                        <div class="progress-bar" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                    <div class="col-10 col-md-6 mt-5">
                        <h5 class="bold"> Agora, selecione seu app de transferência onlie preferido e realize uma doação para <span style="color: #03C3CF">Aldeia Nissi </span></h5>
                    </div>
                    <a href="https://app.picpay.com/user/aldeianissi" class="nav-link" align="left"><div class="shadow col-11 col-lg-8 insti pay p-2 mt-5 row">
                        <img src="../images/picpay.png" class="img iconinsti p-1" alt="Alternate Text"/>
                        <h2 class="col-3 pl-3 pt-4 bold"><span style="color: #1A1818"> PicPay </span></h2>
                    </div></a>

                     <a href="https://www.paypal.com/signin?forceLogin=true&returnUri=https%3A%2F%2Fwww.paypal.com%2Fdonate&state=%252Fmember%253Ftoken%253DcCq51FCw1zxlItorZdZaG7D1wx-0J-hcffZZ1oNiJXcVNNVabIU9L6WBvPdppqaCvkTv9W%2526fromUL%253Dtrue&intent=donate&ctxId=4ff2616228754c0fb85203c38d98a4c3" class="nav-link" align="left"><div class="shadow col-11 col-lg-8 insti pay p-2 mt-5 row">
                        <img src="../images/paypal.png" class="img iconinsti p-1" alt="Alternate Text"/>
                        <h2 class="col-3 pl-3 pt-4 bold"><span style="color: #1A1818"> PayPal </span></h2>
                    </div></a>
                    
                    <a href="https://www.codemoney.com.br/login/" class="nav-link"><div class="shadow col-11 col-lg-8 insti pay p-2 mt-5 row">
                        <img src="../images/codemoney.png" class="img iconinsti p-1" alt="Alternate Text"/>
                        <h2 class="col-4 pl-3 pt-4 bold"><span style="color: #1A1818"> Code Money </span></h2>
                    </div></a>
                </div>
                <!-- TAB VOLUNTARIO -->
                <div class="tab-pane fade" id="tab-voluntario" role="tabpanel" aria-labelledby="nav-voluntario" align="center">
                    <div class="col-10 col-md-6 mt-5">
                        <h2 class="bold animated fadeIn"> Você pode ser voluntário em todos os eventos marcados por aqui! </h2>
                    </div>
                    <div class="shadow-sm col-11 col-lg-8 p-3 mt-5 caixinha animatedParent">
                        <img src="../images/aldeianissi.png" class="img iconinsti ml-4 mr-3 mt-3 mb-2" alt="Alternate Text" align="left">
                        <h5 class="pt-3 col-md-8 bold" align="left"><span style="color: #03C3CF"> ARRECADAÇÃO DE AMOR </span></h5>
                        <h5 class="col-md-8" align="left"> Esse evento tem como objetivo arrecadar o máximo de protetores solares para crianças albinas na Angola possível! </h5>
                        <h5 class="col-md-8" align="left"><span class="bold"> HORÁRIO: </span>19HRS </h5>
                        <h5 class="col-md-8" align="left"><span class="bold"> DATA: </span>20/11/19 </h5>
                        <h5 class="col-md-8" align="left"><span class="bold"> ENDEREÇO: </span>Rua Lins de Vasconcelos, 389 - Aclimação </h5>
                        <a tabindex="1" class="btn btn-sair col-3 mt-3 animated growIn" role="button" data-toggle="popover" data-trigger="focus" data-content="Sua presença no evento foi confirmada!">EU VOU!!!</a>
                    </div>
                    <div class="shadow-sm col-11 col-lg-8 p-3 mt-5 caixinha animatedParent">
                        <img src="../images/aldeianissi.png" class="img iconinsti ml-4 mr-3 mt-3 mb-2" alt="Alternate Text"/ align="left">
                        <h5 class="pt-3 col-md-8 bold" align="left"><span style="color: #03C3CF"> ARRECADAÇÃO DE AMOR </span></h5>
                        <h5 class="col-md-8" align="left"> Esse evento tem como objetivo arrecadar o máximo de protetores solares para crianças albinas na Angola possível! </h5>
                        <h5 class="col-md-8" align="left"><span class="bold"> HORÁRIO: </span>19HRS </h5>
                        <h5 class="col-md-8" align="left"><span class="bold"> DATA: </span>20/11/19 </h5>
                        <h5 class="col-md-8" align="left"><span class="bold"> ENDEREÇO: </span>Rua Lins de Vasconcelos, 389 - Aclimação </h5>
                        <a tabindex="1" class="btn btn-sair col-3 mt-3 animated growIn" role="button" data-toggle="popover" data-trigger="focus" data-content="Sua presença no evento foi confirmada!">EU VOU!!!</a>
                    </div>
                    <div class="shadow-sm col-11 col-lg-8 p-3 mt-5 caixinha animatedParent">
                        <img src="../images/aldeianissi.png" class="img iconinsti ml-4 mr-3 mt-3 mb-2" alt="Alternate Text"/ align="left">
                        <h5 class="pt-3 col-md-8 bold" align="left"><span style="color: #03C3CF"> ARRECADAÇÃO DE AMOR </span></h5>
                        <h5 class="col-md-8" align="left"> Esse evento tem como objetivo arrecadar o máximo de protetores solares para crianças albinas na Angola possível! </h5>
                        <h5 class="col-md-8" align="left"><span class="bold"> HORÁRIO: </span>19HRS </h5>
                        <h5 class="col-md-8" align="left"><span class="bold"> DATA: </span>20/11/19 </h5>
                        <h5 class="col-md-8" align="left"><span class="bold"> ENDEREÇO: </span>Rua Lins de Vasconcelos, 389 - Aclimação </h5>
                        <a tabindex="1" class="btn btn-sair col-3 mt-3 animated growIn" role="button" data-toggle="popover" data-trigger="focus" data-content="Sua presença no evento foi confirmada!">EU VOU!!!</a>
                    </div>
                </div>
                <!-- TAB RECURSOS -->
                <div class="tab-pane fade" id="tab-recursos" role="tabpanel" aria-labelledby="nav-recursos" align="center">
                    <div class="col-12 col-md-12 mt-5">
                        <h2 class="bold animated fadeIn"> Principais Necessidades da Instituição </h2>

                        <div class="row col-12 col-lg-10 p-3 mt-5">
                            <div class="col-12 col-md-4 mt-5 divNecessidades">
                                <h1 class="bold numeros">1.</h1>
                                <p> PROTETORES SOLARES PARA CRIANÇAS</p>
                            </div>
                            <div class="col-12 col-md-4 mt-5 divNecessidades">
                                <h1 class="bold numeros">2.</h1>
                                <p> ROUPAS INFANTIS DE BOA QUALIDADE</p>
                            </div>
                            <div class="col-12 col-md-4 mt-5 divNecessidades">
                                <h1 class="bold numeros">3.</h1>
                                <p> ALIMENTOS NÃO PERECÍVEIS</p>
                            </div>
                         </div>

                        <div class="row col-12 col-lg-7 p-3 mt-5 mb-5">
                            <img src="../images/maps.png" class="img-fluid" alt="Alternate Text"/ align="left" align="center">
                         </div>

                        <h2 class="bold mt-5"> LEVE AO PONTO DE ENCONTRO MAIS PERTO DE VOCÊ! </h2>
                        <div class="row col-9 col-sm-7 col-md-5 col-lg-4 mt-5 rounded animatedParent">
                            <a class="btnRappi col-12 shadow animated growIn" href="https://www.paypal.com/signin?forceLogin=true&returnUri=https%3A%2F%2Fwww.paypal.com%2Fdonate&state=%252Fmember%253Ftoken%253DcCq51FCw1zxlItorZdZaG7D1wx-0J-hcffZZ1oNiJXcVNNVabIU9L6WBvPdppqaCvkTv9W%2526fromUL%253Dtrue&intent=donate&ctxId=4ff2616228754c0fb85203c38d98a4c3"> CHAMAR RAPPI! </a>
                        </div>
                    </div>
                </div>
            </div>
        </section>


        <!-- RODAPÉ -->
        <section>
            <footer class="foot col-12 mt-5">
                <div class="col-12 pt-4"  align="center">
                    <img src="../images/logoblue.png" alt="Alternate Text"/>
                </div>
                <div class="col-12 redes row justify-content-center pt-3">
                    <a href="https://www.facebook.com/"><img src="images/facebook.png" class="img-fluid img-responsive" /></a>
                    <a href="#"><img src="images/email.png" class="img-fluid img-responsive" /></a>
                    <a href="#"><img src="images/coracao.png" class="img-fluid img-responsive" /></a>
                    <a href="https://www.instagram.com/"><img src="images/instagram.png" class="img-fluid img-responsive" /></a>
              </div>
              <div class="col-12 mt-3 aaaa row  justify-content-center">
                <p> ALL RIGHTS RESERVED TO DOBEM </p>
                <p class="offset-lg-1 offset-md-1"> ALL ILLUSTRATIONS BY Nahuel Bardi </p>
              </div>
            </footer>
        </section>

    </form>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="js/popper.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script type="text/javascript" src="js/js.js"></script>
    <script type="text/javascript" src="js/css3-animate-it.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>
