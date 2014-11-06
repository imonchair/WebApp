<%@ page language="C#" autoeventwireup="true" codebehind="calculator.aspx.cs" inherits="WebApplication1.Pages.calculator" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Jack Gifford</title>

    <!-- Bootstrap -->
    <link href="static/css/bootstrap.min.css" rel="stylesheet" />
    <link href="static/css/custom.css" rel="stylesheet" />

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <style type="text/css">
        .auto-style2 {
            border-collapse: collapse;
            width: 33%;
            max-width: 100%;
            margin-bottom: 20px;
        }

        .auto-style3 {
            width: 33%;
        }
    </style>

</head>
<body>
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">JackGifford</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li><a href="school.html">School Work</a></li>
                    <li class="active"><a href="calculator.aspx">My Calculator</a></li>
                    <li><a href="coding.html">Code</a></li>
                  
                    <li><a href="crypto.html">Cryptography</a></li>
                </ul>
                
              
            </div>
           </div> <!-- /.container-fluid -->
    </nav>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="jumbotron">
                    <h2>The Better Calculator <small>The replacement to Alex's Calculator</small></h2>
                    <p>So, you're fed up with the terrible calculator that ships with the Windows Operating System, and then you came across Alex Wards 
                        calculator that was even worse! We heard your complaints, so we built The Better Calculator, it's available free of charge and it's compltely open source
                        download the compiled installer and source below.
                    </p>
                    <p><a class="btn btn-primary btn-lg" href="code/SchoolCalc.zip" role="button">Source</a> </p>


                <p>
                    <asp:textbox id="DisplayWindow" runat="server" autopostback="True"></asp:textbox>
                </p>
                <br />
                <div class="alert alert-warning alert-dismissible" role="alert">
                    <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                    <strong>Warning!</strong> This code is in beta! It's unlikely to work correctly and your answer will probably be incorrect!
                </div>
            </div>

            <div class="row">
                <div class="col-md-4">
                    <table class="table">
                        <tr>
                            <td class="auto-style2">
                                <h2><small>Numbers</small></h2>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                <asp:button id="Num7" class="btn btn-default" runat="server" text="7" onclick="Num7_Click" />
                            </td>
                            <td>
                                <asp:button id="Num8" class="btn btn-default" runat="server" text="8" onclick="Num8_Click" />
                            </td>
                            <td>
                                <asp:button id="Num9" class="btn btn-default" runat="server" text="9" onclick="Num9_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                <asp:button id="Num4" class="btn btn-default" runat="server" text="4" onclick="Num4_Click" />
                            </td>
                            <td>
                                <asp:button id="Num5" class="btn btn-default" runat="server" text="5" onclick="Num5_Click" />
                            </td>
                            <td>
                                <asp:button id="Num6" class="btn btn-default" runat="server" text="6" onclick="Num6_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                <asp:button id="Num1" class="btn btn-default" runat="server" text="1" onclick="Num1_Click" />
                            </td>
                            <td>
                                <asp:button id="Num2" class="btn btn-default" runat="server" text="2" onclick="Num2_Click" />
                            </td>
                            <td>
                                <asp:button id="Num3" class="btn btn-default" runat="server" text="3" onclick="Num3_Click" />
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="col-md-4">
                    <table class="table">
                        <tr>
                            <td>
                                <h2><small>Specials</small></h2>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:button id="Button1" class="btn btn-default" runat="server" text="Clear" onclick="Cull_Click" />
                            </td>
                            <td>
                                <asp:button id="Button2" class="btn btn-default" runat="server" text="Plus" onclick="Plus_Click" />
                            </td>
                            <td>
                                <asp:button id="Button3" class="btn btn-default" runat="server" text="Subtract" onclick="Sub_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:button id="Results" class="btn btn-default" runat="server" text="Results" onclick="Results_Click" />
                            </td>
                            <td>
                                <asp:button id="Multiply" class="btn btn-default" runat="server" text="Multiply" onclick="Multiply_Click" />
                            </td>
                            <td>
                                <asp:button id="Div" class="btn btn-default" runat="server" text="Divide" onclick="Div_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:button id="Button13" class="btn btn-default" runat="server" text="Results" onclick="Results_Click" postbackurl="processing" />
                            </td>
                            <td>
                                <asp:button id="Button14" class="btn btn-default" runat="server" text="Multiply" onclick="Multiply_Click" />
                            </td>
                            <td>
                                <asp:button id="Button15" class="btn btn-default" runat="server" text="Divide" onclick="Div_Click" />
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="col-md-4">
                    <table class="table">
                        <tr>
                            <td>
                                <h2><small>Specials</small></h2>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:button id="Button4" class="btn btn-default" runat="server" text="Clear" onclick="Cull_Click" />
                            </td>
                            <td>
                                <asp:button id="Button5" class="btn btn-default" runat="server" text="Plus" onclick="Plus_Click" />
                            </td>
                            <td>
                                <asp:button id="Button6" class="btn btn-default" runat="server" text="Subtract" onclick="Sub_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:button id="Button7" class="btn btn-default" runat="server" text="Results" onclick="Results_Click" />
                            </td>
                            <td>
                                <asp:button id="Button8" class="btn btn-default" runat="server" text="Multiply" onclick="Multiply_Click" />
                            </td>
                            <td>
                                <asp:button id="Button9" class="btn btn-default" runat="server" text="Divide" onclick="Div_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:button id="Button10" class="btn btn-default" runat="server" text="Results" onclick="Results_Click" />
                            </td>
                            <td>
                                <asp:button id="Button11" class="btn btn-default" runat="server" text="Multiply" onclick="Multiply_Click" />
                            </td>
                            <td>
                                <asp:button id="Button12" class="btn btn-default" runat="server" text="Divide" onclick="Div_Click" />
                            </td>
                        </tr>
                    </table>


                </div>


            </div>
            <h2>Win32</h2>
            <p>We also offer this calculator in Win32 so it runs on windows! Check out the slider for a tutorial!</p>
<div class="row">
  <div class="col-md-4">
    <div class="thumbnail">
      <img src="img/calc1.png" alt="...">
      <div class="caption">
        <h3>It can do basic operations</h3>
        <p>Simply press the desired number followed by the desired operation and then the second number, finish up with equals! When you are done hit C.</p>
       
      </div>
    </div>
  </div>
      <div class="col-md-4">
    <div class="thumbnail">
      <img src="img/calc1.png"" alt="...">
      <div class="caption">
        <h3>Did we mention trig?</h3>
        <p>Are your equations missing trig? Simply press the desired number followed by your trig operation, select the desired operation and repeat, finish up with equals!</p>
        
      </div>
    </div>
  </div>
      <div class="col-md-4">
    <div class="thumbnail">
      <img src="img/calc1.png"" alt="...">
      <div class="caption">
        <h3>We nearly forgot log!</h3>
        <p>The only calculator from RBHS that supports log! It works the same way as trig but press log, we also offer inverse!</p>
        
      </div>
    </div>
  </div>
</div>
        </div>

    </form>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="static/js/bootstrap.min.js"></script>
</body>
</html>
