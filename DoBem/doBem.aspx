<%@ Page Language="C#" AutoEventWireup="true" CodeFile="doBem.aspx.cs" Inherits="doBem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1 " />

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous" />
    <link href="css/cssPaginas.css" type="text/css" rel="stylesheet" />
    <link href="css/animations.css" type="text/css" rel="stylesheet"/>

    <title> Doações doBem </title>
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
                            <a class="nav-link move" href="doacoes.aspx"> instituições </a>
                        </li>
                        <li class="nav-item mr-5">
                            <a class="nav-link move" href="doBem.aspx"> <span style="color: #F6565F"> doBem </span></a>
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

        <!-- PESQUISA / HEADER -->
        <section>
            <section class="doacoeshead">
                <img src="../images/aaaaaa.png" class="img col-12-header doacoes" alt="Alternate Text"/>
                <h4 class="col-10 col-sm-5"> Use seus dobemz para trocar por desconto  em sua loja preferida! </h4>
                <input type="text" class="form-control barrapesquisa z-index col-10 col-sm-5 mt-3" placeholder="Pesquisar instituições"/>
            </section>
        </section>

        <!-- INSTITUIÇÕES -->
        <section class="col-12 doBem">
            <div class="row p-3">
                <div class="shadow col-9 col-sm-9 col-lg-3 desconto descontos mt-5">
                    <div class="row float-right p-3 mb-3">
                        <button type="button" class="btn dobemz" data-toggle="popover" title="QRCODE">35
                            <img src="../images/dobemz.png" class="moeda" alt="Alternate Text" />
                        </button>
                    </div>
                    <div class="row col-12">
                        <p class="lojaDesconto bold">
                            5 MARIAS DELIVERY                   
                           <span class="row col-12 porcento" >12%</span> 
                           NOS COMBOS PROMOCIONAIS EM PARCERIA COM A DOBEM 
                        </p>
                    </div>
                </div>
                <div class="shadow col-9 col-sm-9 col-lg-3 desconto descontos  mt-5">
                    <div class="row float-right p-3 mb-3">
                        <button type="button" class="btn dobemz" data-toggle="popover" title="QRCODE">40
                            <img src="../images/dobemz.png" class="moeda" alt="Alternate Text" />
                        </button>
                    </div>
                    <div class="row col-12">
                        <p class="lojaDesconto bold">
                            STARBUCKS                   
                           <span class="row porcento">10%</span> 
                            EM QUALQUER BEBIBA DA PROMOÇÃO DOBEM
                        </p>
                    </div>
                </div>
                <div class="shadow col-9 col-sm-9 col-lg-3 desconto descontos mt-5">
                    <div class="row float-right p-3 mb-3">
                        <button type="button" class="btn dobemz" data-toggle="popover" title="QRCODE">30
                            <img src="../images/dobemz.png" class="moeda" alt="Alternate Text" />
                        </button>
                    </div>
                    <div class="row col-12">
                        <p class="lojaDesconto bold">
                            KSTORE                   
                           <span class="row col-12 porcento" >15%</span> 
                            EM QUALQUER PEÇA QUE CONTENHA ETIQUETA DOBEM
                        </p>
                    </div>
                </div>
            </div>

            <div class="row p-3">
                <div class="shadow col-9 col-sm-9 col-lg-3 desconto50 descontos mt-5">
                    <div class="row float-right p-3 mb-3">
                        <button type="button" class="btn dobemz" data-toggle="popover" title="QRCODE">99
                            <img src="../images/dobemz.png" class="moeda" alt="Alternate Text" />
                        </button>
                    </div>
                    <div class="row col-12">
                        <p class="lojaDesconto bold">
                            STARBUCKS                 
                           <span class="row col-12 porcento" >30%</span> 
                            EM QUALQUER BEBIBA DA PROMOÇÃO DOBEM
                        </p>
                    </div>
                </div>
                <div class="shadow col-9 col-sm-9 col-lg-3 desconto descontos mt-5">
                    <div class="row float-right p-3 mb-3">
                        <button type="button" class="btn dobemz" data-toggle="popover" title="QRCODE">35
                            <img src="../images/dobemz.png" class="moeda" alt="Alternate Text" />
                        </button>
                    </div>
                    <div class="row col-12">
                        <p class="lojaDesconto bold">
                            FOUNDING                   
                           <span class="row col-12 porcento" >18%</span> 
                            EM TUTORIAS SOBRE CONSULTORIAS DOBEM
                        </p>
                    </div>
                </div>
                <div class="shadow col-9 col-sm-9 col-lg-3 desconto descontos mt-5">
                    <div class="row float-right p-3 mb-3">
                        <button type="button" class="btn dobemz" data-toggle="popover" title="QRCODE">45
                            <img src="../images/dobemz.png" class="moeda" alt="Alternate Text" />
                        </button>
                    </div>
                    <div class="row col-12">
                        <p class="lojaDesconto bold">
                            5 MARIAS DELIVERY                    
                           <span class="row col-12 porcento" >15%</span> 
                            NOS COMBOS PROMOCIONAIS EM PARCERIA COM A DOBEM 
                        </p>
                    </div>
                </div>
            </div>

            <div class="row p-3">
                <div class="shadow col-9 col-sm-9 col-lg-3 desconto descontos mt-5">
                    <div class="row float-right p-3 mb-3">
                        <button type="button" class="btn dobemz" data-toggle="popover" title="QRCODE">40
                            <img src="../images/dobemz.png" class="moeda" alt="Alternate Text" />
                        </button>
                    </div>
                    <div class="row col-12">
                        <p class="lojaDesconto bold">
                            FOUNDING                  
                           <span class="row col-12 porcento" >25%</span> 
                            EM TUTORIAS SOBRE CONSULTORIAS DOBEM
                        </p>
                    </div>
                </div>
                <div class="shadow col-9 col-sm-9 col-lg-3 desconto50 descontos mt-5">
                    <div class="row float-right p-3 mb-3">
                        <button type="button" class="btn dobemz" data-toggle="popover" title="QRCODE">99
                            <img src="../images/dobemz.png" class="moeda" alt="Alternate Text" />
                        </button>
                    </div>
                    <div class="row col-12">
                        <p class="lojaDesconto bold">
                            KSTORE                   
                           <span class="row col-12 porcento" >35%</span> 
                           EM QUALQUER PEÇA QUE CONTENHA ETIQUETA DOBEM
                        </p>
                    </div>
                </div>
                <div class="shadow col-9 col-sm-9 col-lg-3 desconto descontos mt-5">
                    <div class="row float-right p-3 mb-3">
                        <button type="button" class="btn dobemz" data-toggle="popover" title="QRCODE">55
                            <img src="../images/dobemz.png" class="moeda" alt="Alternate Text" />
                        </button>
                    </div>
                    <div class="row col-12">
                        <p class="lojaDesconto bold">
                            STARBUCKS                    
                           <span class="row col-12 porcento" >20%</span> 
                            EM QUALQUER BEBIBA DA PROMOÇÃO DOBEM
                        </p>
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
                    <a href="https://www.gmail.com/"><img src="images/email.png" class="img-fluid img-responsive" /></a>
                    <a href="index.aspx"><img src="images/coracao.png" class="img-fluid img-responsive" /></a>
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
    <script type="text/javascript" src="js/css3-animate-it.js"></script>
    <script type="text/javascript" src="js/popper.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script>
    $(document).ready(function(){
    $('[data-toggle="popover"]').popover({
        placement : 'top',
        trigger : 'hover',
        html : true,
        content : '<div class="media"><img src="http://s.glbimg.com/jo/g1/f/original/2011/05/17/qrcode.jpg" class="img-fluid"></div>'
    });
    });
    </script>
</body>
</html>
