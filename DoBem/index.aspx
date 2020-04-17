<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1 " />

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous" />
    <link href="css/css.css" type="text/css" rel="stylesheet" />
    <link href="css/animations.css" type="text/css" rel="stylesheet"/>
    <link href="css/slider.css" type="text/css" rel="stylesheet"/>

    <title> doBem </title>
</head>
<body>
    <form id="form1" runat="server">

        <section class="section-1">
        <!-- NAVBAR -->
            <nav id="navBarSection" class="navbar navbar-expand-lg nav-size navbar-light bg-menu fixed-top">
                <a class="navbar-brand brand ml-sm-5" href="index.aspx"> dobem </a>

                <button id="sandwich" class="navbar-toggler custom-toggler" type="button" data-toggle="collapse" data-target="#navbar" aria-expanded:"false">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse justify-content-center" id="navbar">
                    <ul class="nav navbar-nav ml-auto">
                        <li class="nav-item mr-5">
                            <a class="nav-link move" href="#sobre"> sobre </a>
                        </li>
                        <li class="nav-item mr-5">
                            <a class="nav-link move" href="#valores"> valores </a>
                        </li>
                        <li class="nav-item mr-5">
                            <a class="nav-link move" href="#instituicoes"> instituições </a>
                        </li>
                        <li class="nav-item mr-5">
                            <a class="nav-link move" href="#nos"> nos </a>
                        </li>
                        <li class="nav-item mr-5">
                            <a class="nav-link move" href="indexEng.aspx"> english ver. </a>
                        </li>
                    </ul>
                </div>
            </nav>

        <!-- MODAL LOGIN -->
        <section class="modal" id="ModalLogin" tabindex="-1" aria-hidden="true" role="dialog">
            <article class="modal-dialog modal-dialog-centered modal-lg" role="document">
                <div class="modal-content">
                    <div class="d-flex flex-wrap">
                        <div class="col-lg-6 quadrodeskazul">
                            <asp:Image ImageUrl="images/loginmodal.png" class="img col-12 mt-5 pt-5 d-none d-lg-block d-xl-block" runat="server" />
                        </div>
                        <div class="col-12 col-lg-6 justify-content-center">
                            <button type="button" class="close mt-3" data-dismiss="modal">&times;</button>
                            <h2 class="text-center brand pt-5 pb-3 mb-4"> Seja bem-vindo! </h2>

                            <!-- email -->
                            <div class="col-12 d-flex justify-content-center">
                                <div class="pl-2 pr-2 col-12 col-lg-10">
                                        <asp:TextBox runat="server" CssClass="col-12 form-dobem mb-3" ID="email" TextMode="Email"  placeholder="email"/>
                                    <div class="col-12 d-flex flex-wrap align-items-start p-0 m-0">
                                        
                                    </div>
                                </div>
                            </div>
                            <!-- senha -->
                            <div class="col-12 d-flex justify-content-center">
                                <div class="pl-2 pr-2 col-12 col-lg-10">
                                        <asp:TextBox runat="server" CssClass="col-12 form-dobem" ID="senhaLogin" TextMode="Password"  placeholder="senha"/>
                                    <div class="col-12 d-flex flex-wrap align-items-start p-0 m-0">
                                        
                                    </div>
                                </div>
                            </div>
                            <!-- botão de login -->
                            <div class="col-9 d-flex justify-content-center">
                                <div class="p-2 col-3 col-lg-6 mt-3">
                                    <asp:Button ID="Btn_login" CssClass="btn-dobem btn-dobem-azul col-6 ml-4 shadow" runat="server" Text="LOGIN" OnClick="Btn_login_Click"/>
                                </div>
                            </div>
                            <!-- outras opções -->
                            <div class="mt-5 d-flex flex-wrap col-12 justify-content-center pb-4">
                                <a href="#ModalCadastroUsuario" data-toggle="modal" class="a-dobem-opcoes text-center col-12"> ainda nâo tem uma conta? </a>
                            </div>
                        </div>
                    </div>
                </div>
            </article>
        </section>

        <!-- MODAL CADASTRO USUÁRIO -->
        <section class="modal" id="ModalCadastroUsuario" tabindex="-1" aria-hidden="true" role="dialog">
            <article class="modal-dialog modal-dialog-centered modal-lg" role="document">
                <div class="modal-content">
                    <div class="d-flex flex-wrap">
                        <div class="col-lg-6 quadrodeskroxo">
                            <asp:Image ImageUrl="images/loginmodal.png" class="img col-12 d-none d-lg-block d-xl-block cadastromodalimg" runat="server" />
                        </div>
                        <div class="col-12 col-lg-6 justify-content-center ">
                            <button type="button" class="close mt-3" data-dismiss="modal">&times;</button>
                            <h2 class="text-center brand pt-5 pb-3 mb-4">Usuário, faça já o seu cadastro! </h2>

                            <!-- nome -->
                            <div class="col-12 d-flex justify-content-center">
                                <div class="pl-2 pr-2 col-12 col-lg-10">
                                        <asp:TextBox runat="server" CssClass="col-12 form-dobem mb-3" ID="NomeUsuario" placeholder="nome"/>
                                    <div class="col-12 d-flex flex-wrap align-items-start p-0 m-0">
                                        
                                    </div>
                                </div>
                            </div>
                            <!-- email -->
                            <div class="col-12 d-flex justify-content-center">
                                <div class="pl-2 pr-2 col-12 col-lg-10">
                                        <asp:TextBox runat="server" CssClass="col-12 form-dobem mb-3" ID="EmailUsuario" TextMode="Email"  placeholder="email"/>
                                    <div class="col-12 d-flex flex-wrap align-items-start p-0 m-0">
                                        
                                    </div>
                                </div>
                            </div>
                            <!-- senha -->
                            <div class="col-12 d-flex justify-content-center">
                                <div class="pl-2 pr-2 col-12 col-lg-10">
                                        <asp:TextBox runat="server" CssClass="col-12 form-dobem mb-3" ID="SenhaUsuario" TextMode="Password"  placeholder="senha"/>
                                    <div class="col-12 d-flex flex-wrap align-items-start p-0 m-0">
                                        
                                    </div>
                                </div>
                            </div>
                            <!-- confirmar senha -->
                            <div class="col-12 d-flex justify-content-center">
                                <div class="pl-2 pr-2 col-12 col-lg-10">
                                        <asp:TextBox runat="server" CssClass="col-12 form-dobem" ID="confSenhaUsuario" TextMode="Password" placeholder="confirmar senha"/>
                                    <div class="col-12 d-flex flex-wrap align-items-start p-0 m-0">
                                        <asp:CompareValidator CssClass="validador" ID="CompValidSenhaUsuario" runat="server" ErrorMessage="*Senhas não coincidem" ControlToCompare="SenhaUsuario" ControlToValidate="confsenhaUsuario"></asp:CompareValidator>
                                    </div>
                                </div>
                            </div>
                            <!-- termo de uso -->
                            <div class="form-group form-check" align="center">
                                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                <label class="form-check-label" for="exampleCheck1">li concordo com os Termos de Uso</label>
                            </div>
                            <!-- botão de login -->
                            <div class="col-9 d-flex justify-content-center">
                                <div class="p-2 col-3 col-lg-6 mt-3">
                                    <asp:Button ID="BtnLoginUsuario" CssClass="btn-dobem btn-dobem-roxo col-6 ml-4 shadow" runat="server" Text="LOGIN" OnClick="BtnLoginUsuario_Click1" />
                                </div>
                            </div>
                            <!-- outras opções -->
                            <div class="mt-3 d-flex flex-wrap col-12 justify-content-center pb-4">
                                <button type="button" class="btn-dobem btn-dobem-azul" data-toggle="modal" data-target="#ModalCadastroInst" data-dismiss="modal">mudar para conta institucional</button>
                            </div>
                        </div>
                    </div>
                </div>
            </article>
        </section>

        <!-- MODAL CADASTRO INSTITUIÇÃO -->
        <section class="modal" id="ModalCadastroInst" tabindex="-1" aria-hidden="true" role="dialog">
            <article class="modal-dialog modal-dialog-centered modal-lg" role="document">
                <div class="modal-content">
                    <div class="d-flex flex-wrap">
                        <div class="col-lg-6 quadrodeskroxo">
                            <asp:Image ImageUrl="images/loginmodal.png" class="img col-12 d-none d-lg-block d-xl-block cadastromodalimg" runat="server" />
                        </div>
                        <div class="col-12 col-lg-6 justify-content-center ">
                            <button type="button" class="close mt-3" data-dismiss="modal">&times;</button>
                            <h2 class="text-center brand pt-5 pb-3 mb-4"> Instituição, cadastre-se! </h2>

                            <!-- nome -->
                            <div class="col-12 d-flex justify-content-center">
                                <div class="pl-2 pr-2 col-12 col-lg-10">
                                        <asp:TextBox runat="server" CssClass="col-12 form-dobem mb-3" ID="NomeInst" placeholder="nome"/>
                                    <div class="col-12 d-flex flex-wrap align-items-start p-0 m-0">
                                        
                                    </div>
                                </div>
                            </div>
                            <!-- email -->
                            <div class="col-12 d-flex justify-content-center">
                                <div class="pl-2 pr-2 col-12 col-lg-10">
                                        <asp:TextBox runat="server" CssClass="col-12 form-dobem mb-3" ID="EmailInst" TextMode="Email"  placeholder="email"/>
                                    <div class="col-12 d-flex flex-wrap align-items-start p-0 m-0">
                                        
                                    </div>
                                </div>
                            </div>
                            <!-- cnpj -->
                            <div class="col-12 d-flex justify-content-center">
                                <div class="pl-2 pr-2 col-12 col-lg-10">
                                        <asp:TextBox runat="server" CssClass="col-12 form-dobem mb-3" ID="CNPJInst" TextMode="Number"  placeholder="cnpj"/>
                                    <div class="col-12 d-flex flex-wrap align-items-start p-0 m-0">
                                        
                                    </div>
                                </div>
                            </div>
                            <!-- telefone -->
                            <div class="col-12 d-flex justify-content-center">
                                <div class="pl-2 pr-2 col-12 col-lg-10">
                                        <asp:TextBox runat="server" CssClass="col-12 form-dobem mb-3" ID="TelInst" TextMode="Phone"  placeholder="telefone"/>
                                    <div class="col-12 d-flex flex-wrap align-items-start p-0 m-0">
                                        
                                    </div>
                                </div>
                            </div>
                            <!-- senha -->
                            <div class="col-12 d-flex justify-content-center">
                                <div class="pl-2 pr-2 col-12 col-lg-10">
                                        <asp:TextBox runat="server" CssClass="col-12 form-dobem mb-3" ID="SenhaInst" TextMode="Password"  placeholder="senha"/>
                                    <div class="col-12 d-flex flex-wrap align-items-start p-0 m-0">
                                        
                                        <asp:Label ID="Label3" runat="server" CssClass="validador d-none" Text=""></asp:Label>
                                    </div>
                                </div>
                            </div>
                            <!-- confirmar senha -->
                            <div class="col-12 d-flex justify-content-center">
                                <div class="pl-2 pr-2 col-12 col-lg-10">
                                        <asp:TextBox runat="server" CssClass="col-12 form-dobem" ID="ConfSenhaInst" TextMode="Password"  placeholder="confirmar senha"/>
                                    <div class="col-12 d-flex flex-wrap align-items-start p-0 m-0">
                                        <asp:CompareValidator CssClass="validador" ID="CompValidSenhaInst" runat="server" ErrorMessage="*Senhas não coincidem" ControlToCompare="SenhaInst" ControlToValidate="ConfSenhaInst"></asp:CompareValidator>
                                    </div>
                                </div>
                            </div>
                            <!-- termos de uso -->
                            <div class="form-group form-check" align="center">
                                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                <label class="form-check-label" for="exampleCheck1">li concordo com os Termos de Uso</label>
                            </div>
                            <!-- botão de login -->
                            <div class="col-9 d-flex justify-content-center">
                                <div class="p-2 col-3 col-lg-6 mt-3">
                                    <asp:Button ID="BtnLoginInst" CssClass="btn-dobem btn-dobem-roxo col-6 ml-4 shadow" runat="server" Text="LOGIN" OnClick="BtnLoginInst_Click" />
                                </div>
                            </div>
                            <!-- outras opções -->
                            <div class="mt-2 d-flex flex-wrap col-12 justify-content-center pb-4">
                                <button type="button" class="btn-dobem btn-dobem-azul" data-toggle="modal" data-target="#ModalCadastroUsuario" data-dismiss="modal">mudar para conta de Usuário</button>
                            </div>
                        </div>
                    </div>
                </div>
            </article>
        </section>

        <!-- SOBRE -->
        <section class="col-12 d-flex flex-wrap align-self-end pb-5" id="sobre">
              <div class="col-12 d-flex flex-wrap">
                      <article class="col-12 d-flex flex-wrap align-items-center">
                          <div class="col-12 col-md-5 pt-lg-0 pt-5 mt-5 mt-lg-0 animatedParent">
                            <h3 class="bold animated fadeInUpShort"> Se você quer ajudar, nosso app é tudo o que você vai precisar! </h3>
                            <h5 class="mt-3 animated fadeInUpShort"> No nosso app, você poderá doar seu tempo, itens e dinheiro, de forma ilimitada. </h5>
                            <a class="nav-item nav-link btn-logar mt-3 shadow animated fadeIn" data-toggle="modal" data-target="#ModalLogin"> LOGIN </a>
                            <a class="nav-item nav-link btn-logar btn-cadastrar mt-3 mb-5 shadow animated fadeIn" data-toggle="modal" data-target="#ModalCadastroUsuario"> CADASTRAR </a>
                          </div>
                          <div class="col-12 col-md-7 order-1 order-md-2 pr-lg-5 pb-3 pt-5">
                            <img src="images/headimage.png" class="img sobremedida pr-5 pt-5 d-none d-md-block" />
                          </div>
                      </article>
                </div>
          </section>
        </section>

        <!-- VALORES -->
        <section class="d-flex flex-wrap valores justify-content-center pt-4 animatedParent" id="valores">
          <div class="col-12 pt-1 pb-5">
              <h3 class="text-center bold"> Conheça mais as nossas <br /> formas de doar </h3>
          </div>
          <div class="col-10 col-sm-5 col-md-3 col-lg-3 pt-4" align="center">
              <img src="images/pacote.png" class="img-fluid img animated fadeInUp" />
              <h4 class="bold mt-2 spacing animated fadeInUp"> ITENS </h4>
              <p class="animated fadeInUp"> Você poderá doar itens, como: roupas, itens de higiêne pessoal, alimentos não perecíveis; </p>
          </div>
            <div class="col-10 col-sm-5 col-md-3 col-lg-3 pt-4" align="center">
              <img src="images/money.png" class="img-fluid img animated fadeInUp" />
              <h4 class="bold mt-2 spacing animated fadeInUp"> DINHEIRO </h4>
              <p class="animated fadeInUp"> Você poderá transferir qualquer quantidade para uma instituição pelo seu app preferido de transação; </p>
          </div>
            <div class="col-10 col-sm-5 col-md-3 col-lg-3 pt-4 pb-5" align="center">
              <img src="images/pessoasconectadas.png" class="img-fluid img animated fadeInUp" />
              <h4 class="bold mt-2 spacing animated fadeInUp"> TEMPO </h4>
              <p class="animated fadeInUp">Você poderá doar seu tempo através do voluntariado, participando de eventos; </p>
          </div>
      </section>

      <!-- INSTITUIÇÕES -->
      <section class="row" id="instituicoes">
          <div class="ml-4 col-9 col-sm-5 col-md-4 col-lg-3 medida">
              <img src="images/woman.png" class="img-fluid img" />
          </div>
          <div class="col-12 mt-5 col-sm-6 col-md-7 col-lg-8 animatedParent">
              <h2 class="fontinst animated fadeIn"> Instituição, queremos você, junte-se à nós! </h2>
              <div class="col-12 col-sm-12 col-lg-10 ml-lg-5 mt-lg-5" align="center">
                <p class="pl-lg-5 ml-lg-1 bold"> Com 7 dias free em nosso app, você poderá receber doações monetárias, de ítens básicos e também cadastrar e criar eventos com fins arrecadatórios - o doBem tem como finalidade credibilizar e dar visibilidade à sua ONG! </p>
              </div>
          </div>
      </section>

      <!-- PLANOS -->
      <section class="d-flex flex-wrap slider mt-5">
          <article class="d-flex flex-wrap m-5 animatedParent">
              <div class="col-md-4 col-sm-6 p-sm-3 pb-5 col-lg-4">        
                <div class="d-flex flex-wrap justify-content-center planos corletra p-5 shadow">
                  <h3 class="col-12 text-center mt-3"> PLANO SILVER </h3>
                  <p class="col-12 text-center"> possibilidade de criação de apenas 2 campanhas de arrecadações para a sua instituição. </p>
                  <h2 class="col-12 text-center animated growIn"> R$13,99 </h2>
                    <a class="btn-quero col-6 pt-2 shadow" data-toggle="modal" data-target="#ModalCadastroInst"> QUERO! </a>
                  
                </div>
              </div>
              <div class="col-md-4 col-sm-6 p-sm-3 pb-5 col-lg-4">
                <div class="d-flex flex-wrap justify-content-center planos cor1 p-5 shadow">
                  <h3 class="col-12 text-center mt-3"> PLANO ROSÉ </h3>
                  <p class="col-12 text-center">  criação de 4 campanhas de arrecadação e 1 eventos beneficentes, como arrecadação de dinheiro e afins. </p>
                  <h2 class="col-12 text-center animated growIn"> R$23,99 </h2>
                    <a class="btn-quero col-6 pt-2 shadow" data-toggle="modal" data-target="#ModalCadastroInst"> QUERO! </a>
                </div>
              </div>
              <div class="col-md-4 col-sm-12 p-sm-3 col-lg-4">
                <div class="d-flex flex-wrap justify-content-center planos corletra cor3 p-5 shadow">
                  <h3 class="col-12 text-center mt-3"> PLANO GOLD </h3>
                  <p class="col-12 text-center"> criar ilimitadas campanhas de arrecadação e eventos & mais visibilidade no app - aproveite-o sem propagandas. </p>
                  <h2 class="col-12 text-center animated growIn"> R$37,99 </h2>
                    <a class="btn-quero col-6 pt-2 shadow" data-toggle="modal" data-target="#ModalCadastroInst"> QUERO! </a>
                </div>
              </div>
          </article>
      </section>

      <!-- DOBEMZ -->
      <section class="">
          <article class="col-12 mb-5 mt-5 animatedParent" align="center">
              <img src="images/circle.png" class="mx-auto d-block" />
              <h3 class="col-12 mx-auto d-block bold espacamento mt-2 animated fadeIn"> A CADA DOAÇÃO, GANHE DOBEMZ </h3>
              <p class="col-10 col-sm-7 mx-auto d-block bold mt-4 pb-5"> A CADA DOÇÃO QUE VOCÊ FIZER, GANHARÁ UMA QUANTIDADE DE DOBEMZ, - MOEDAS VIRTUAIS QUE VOCE POODERÁ TROCAR POR DESCONTOS  NAS MELHORES LOJAS! </p>
          </article>
      </section>

      <!-- NÓS -->
        <section id="nos">
            <article class="col-12">
                <img src="images/circle.png" class="mx-auto d-block" />
            </article>
            <article class="animatedParent">
                <h1 class="espacamento mt-5 animated fadeIn" align="center"><b><span style="color: #03C3CF"> BIG TEAM </span></b></h1>
            </article>
            <article class="row mt-5 animatedParent" align="center">
                <div class="col-6 col-md-4 col-lg-2">
                   <img src="../images/ana.jpeg" alt="Alternate Text" class="img-fluid foto" /> 
                   <h3 class="bold mt-1"> ANA </h3>
                   <p class="animated fadeIn"> UX & UI <br /> GRAPHIC DESIGN; </p>
                </div>
                <div class="col-6 col-md-4 col-lg-2">
                   <img src="../images/carol.jpeg" alt="Alternate Text" class="img-fluid foto" /> 
                   <h3 class="bold mt-1"> CAROL </h3>
                   <p class="animated fadeIn"> FRONT-END <br /> DEVELOPER; </p>
                </div>
                <div class="col-6 col-md-4 col-lg-2">
                   <img src="../images/ste.jpeg" alt="Alternate Text" class="img-fluid foto" /> 
                   <h3 class="bold mt-1"> STEPHANE </h3>
                   <p class="animated fadeIn"> BACK-END <br /> DEVELOPER; </p>
                </div>
                <div class="col-6 col-md-4 col-lg-2">
                   <img src="../images/nali.jpeg" alt="Alternate Text" class="img-fluid foto" /> 
                   <h3 class="bold mt-1"> NALITA </h3>
                   <p class="animated fadeIn"> ÁREA DE <br /> FINANÇAS; </p>
                </div>
                <div class="col-6 col-md-4 col-lg-2">
                   <img src="../images/vitoria.jpeg" alt="Alternate Text" class="img-fluid foto" /> 
                   <h3 class="bold mt-1"> VITORIA </h3>
                   <p class="animated fadeIn"> FINANÇAS E <br /> RESEARCH; </p>
                </div>
                <div class="col-6 col-md-4 col-lg-2">
                   <img src="../images/karlos.jpeg" alt="Alternate Text" class="img-fluid foto" /> 
                   <h3 class="bold mt-1"> KARLOS </h3>
                   <p class="animated fadeIn"> MARKETING E <br /> COMUNICAÇÃO; </p>
                </div>
            </article>
        </section>

        <!-- FORM E RODAPÉ -->
        <section class="d-flex flex-wrap">
          <article class="col-12">
            <div class="card-dobem col-lg-5 col-md-6 col-sm-6 col-12 rounded pb-5">
                <h4 class="size-form-dobem text-center pt-5 espacamento"> FIQUE POR DENTRO </h4>
                <div class="col-12 d-flex justify-content-center p-3">
                    <div class="p-2 col-12 col-md-11 col-lg-11">
                        <asp:TextBox runat="server" CssClass="col-12 form-dobem none" placeholder="e m a i l"/>
                    </div>
                </div>
                <div class="col-12 d-flex justify-content-center p-3">
                    <div class="p-2 col-12 col-md-11 col-lg-11">
                        <asp:TextBox runat="server" CssClass="col-12 form-dobem none" placeholder="m e n s a g e m"/>
                    </div>
                </div>
                <div class="col-12 d-flex justify-content-center">
                    <asp:Button ID="Enviar" CssClass="btn-dobem" runat="server" Text="ENVIAR" />
                </div>
            </div>
          </article>
          <footer class="d-flex flex-wrap foot col-12">
              <div class="justify-content-center animatedParent">
                <img src="images/footer.png" class="img-fluid img-responsive footerimg col-lg-8 animated fadeInUpShort" />
              </div>
              <div class="col-12 redes row justify-content-center">
                <a href="https://www.facebook.com/"><img src="images/facered.png" class="img-fluid img-responsive" /></a>
                <a href="#"><img src="images/logobranco.png" class="img-fluid img-responsive" /></a>
                <a href="https://www.instagram.com/"><img src="images/instared.png" class="img-fluid img-responsive" /></a>
              </div>
              <div class="col-12 mt-5 aaaa row  justify-content-center">
                <p> ALL RIGHTS RESERVED TO DOBEM </p>
                <p class="offset-lg-1 offset-md-1"> ALL ILLUSTRATIONS BY Nahuel Bardi </p>
              </div>
          </footer>
      </section>
    </form>

    <!-- links -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script type="text/javascript" src="js/js.js"></script>
    <script type="text/javascript" src="js/css3-animate-it.js"></script>
    <script type="text/javascript" src="js/slider.js"></script>
</body>
</html>
