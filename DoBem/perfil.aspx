<%@ Page Language="C#" AutoEventWireup="true" CodeFile="perfil.aspx.cs" Inherits="perfil" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1 " />

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous" />
    <link href="css/cssPaginas.css" type="text/css" rel="stylesheet" />
    <link href="css/animations.css" type="text/css" rel="stylesheet"/>

    <title> Perfil doBem </title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Olá <asp:Label ID="lblUsuario" runat="server"></asp:Label></h2>
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
                            <a class="nav-link move" href="perfil.aspx"><span style="color: #F6565F"> perfil </span></a>
                        </li>
                        <li class="nav-item mr-5">
                            <a class="nav-link move" href="#mensagens" data-toggle="modal" data-target="#ModalMensagem"> mensagens </a>
                        </li>
                        <li class="nav-item mr-5">
                            <a class="nav-link move" href="doacoes.aspx"> instituições </a>
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

        <!-- PERFIL -->
        <section class="perfil">
            <section class="">
                <img src="../images/headerperfil.jpg" class="img col-12-header" alt="Alternate Text"/>
            </section>
            <div class="col-12 col-md-6 col-lg-5 animatedParent" align="center">
                <img src="../images/fotoperfil.jpg" class="img foto" alt="Alternate Text" align="center"/>
                <h4 class="bold mt-3 animated fadeIn"> ANA MALPIGHI </h4>
                <p class="txt-perfil mt-3 animated fadeIn"> Eu sou a Ana, tenho 26 anos, sou professora e amo crianças! <3 </p>
                <h4 class="bold pontos shadow-sm animated fadeIn"> 08 
                    <img src="../images/dobemz.png" class="moeda" alt="Alternate Text" />
                </h4>
                <!--<asp:Button ID="btn_editar" CssClass="btn-sair mt-3 txt-perfil shadow" align="center" runat="server" Text="EDITAR PERFIL"/><br />
                <asp:Button ID="btn_perfil" CssClass="btn-sair mt-3 txt-perfil shadow" align="center" runat="server" Text="EVENTOS"/>-->
            </div>
            <div class="shadow-sm col-11 col-md-6 col-lg-7 acoes aa p-3 ml-3 mt-5" align="center">
                <h5 class="pt-3"> Você participou de um evento feito por<span style="color: #7C2AE8"> Aldeia Nissi </span>em 24/05/19. </h5>
                <h6 class="pt-3"><span style="color: #03C3CF"> Você ganhou 02 doBemz </span></h6>
            </div>
            <div class="shadow-sm col-11 col-md-6 col-lg-7 acoes p-3 ml-3 mt-5" align="center">
                <h5 class="pt-3"> Você participou de um evento feito por<span style="color: #7C2AE8"> Aldeia Nissi </span>em 24/05/19. </h5>
                <h6 class="pt-3"><span style="color: #03C3CF"> Você ganhou 02 doBemz </span></h6>
            </div>
            <div class="shadow-sm col-11 col-md-6 col-lg-7 acoes p-3 ml-3 mt-5" align="center">
                <h5 class="pt-3"> Você participou de um evento feito por<span style="color: #7C2AE8"> Aldeia Nissi </span>em 24/05/19. </h5>
                <h6 class="pt-3"><span style="color: #03C3CF"> Você ganhou 02 doBemz </span></h6>
            </div>
            <div class="shadow-sm col-11 col-md-6 col-lg-7 acoes p-3 ml-3 mt-5" align="center">
                <h5 class="pt-3"> Você participou de um evento feito por<span style="color: #7C2AE8"> Aldeia Nissi </span>em 24/05/19. </h5>
                <h6 class="pt-3"><span style="color: #03C3CF"> Você ganhou 02 doBemz </span></h6>
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
    <script type="text/javascript" src="js/css3-animate-it.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script type="text/javascript" src="js/js.js"></script>
</body>
</html>
