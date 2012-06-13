<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="Login" %>

<%@ Register Assembly="eWorld.UI, Version=2.0.6.2393, Culture=neutral, PublicKeyToken=24d65337282035f2"
    Namespace="eWorld.UI" TagPrefix="ew" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>::Control de Acceso::</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" href="images/icono/favicon.ico">
    <link rel="icon" type="image/gif" href="images/icono/animated_favicon1.gif">
</head>
<body>
    <form id="form1" runat="server">
     <script type='text/javascript'>
        // Add click handlers for buttons to show and hide modal popup on pageLoad
        function pageLoad() {
            //$addHandler($get("showModalPopupClientButton"), 'click', showModalPopupViaClient);
            $addHandler($get("hideModalPopupViaClientButton"), 'click', hideModalPopupViaClient);        
        }
        
        function showModalPopupViaClient(ev) {
            ev.preventDefault();
            var modalPopupBehavior = $find('programmaticModalPopupBehavior');
            modalPopupBehavior.show();
        }
        
        function hideModalPopupViaClient(ev) {
            ev.preventDefault();        
            var modalPopupBehavior = $find('programmaticModalPopupBehavior');
            modalPopupBehavior.hide();
        }
    </script>
    <ajaxToolkit:ToolkitScriptManager ID="ScriptManager1" runat="Server" EnableScriptGlobalization="true"
        EnableScriptLocalization="true">
    </ajaxToolkit:ToolkitScriptManager>       
    <div class="demoarea" style="text-align: left; top:0px"  >
        <table cellpadding="0" cellspacing="0" class="TbCenter">
            <tr>
                <td colspan="2" style="height: 65px">
                    <span style="font-size: 8pt"></span><asp:Image ID="Image5" runat="server" ImageUrl="~/images/Header_signus.png" Width="100%" /></td>
            </tr>
            <tr>
                    <td>
                    <div style="text-align: center; width:430px; height: 98px;"  class="LogContenido">
                        <br />
                    <asp:Label ID="Label4" runat="server" CssClass="LogTitulo" Text="Oficina de Gestion de Rentas"></asp:Label><br />
                        <br />
                        <asp:Image ID="Image6" runat="server" ImageUrl="~/images/Login/escribir.jpg" ImageAlign="Left" Height="75px" Width="62px"/>
                        <br />
                    <br />
                        Señor Agente Recaudaror, Recuerde realizar su declaracion en los periodos estipulados
                    por el 
                            Estatuto de Rentas&nbsp; de la Gobernacion del Cesar y realizar su pago Oportuno para evitar sanciones.
                    </div>
                    <br />
                    <br />
                    

                    <div  style="text-align: justify; width:475px ; height: 214px;" >
                        <strong>
                    
                    Quienes son los agentes Recaudadores?<br />
                        </strong>
                        <br />
                        Entidades que Están obligadas a efectuar la recaudación o percepción del tributo<br />
                        y que por sus funciones intervienen en actos u operaciones en los cuales se&nbsp;<br />
                        debe cobrar el tributo, ellos
                        son:<br />
                        <br />
                        
                        <ul >
                       <li> La administración departamental
                       <li> Las administraciones municipales - Alcaldia.
                       <li> Las empresas Industriales y Comerciales del orden departamental y municipal.
                       <li> Las sociedades de economía mixta del orden departamental y municipal
                       <li> Los establecimientos públicos del orden departamental y municipal
                       <li> Las empresas sociales del estado del orden departamental y municipal
                       <li> Los frigoríficos o establecimientos
                       similares del orden privado 
                           <li>donde se sacrifiqueganado
                            mayor. </li>
                        </ul>
                        
                    </div>
                    <br />
                    &nbsp;<asp:Image ID="Image3" runat="server"  ImageUrl="~/images/Login/Img_gob.jpg"
                        Width="70%" Height="70%" /></td>
                <td style="width: 213px; text-align: justify; height: 466px;" class="TbFondo" valign="top">
                        <br />
                        <br />
        <asp:UpdatePanel id="UpdatePanel1" runat="server">
            <contenttemplate>
    <table style="WIDTH: 250px; text-align: right;"  cellpadding="2" border="0">
    <tbody>
    <tr>
        <td colspan="2" align="left"><asp:Label id="msgResult" runat="server" Visible="False" Height="30px" Width="100%" Text="Label" Font-Bold="False"></asp:Label><br />
        &nbsp;</TD>
    </tr>
    <tr>
        <td class="LogTitulo" colspan="2" align="left" style="text-align: center" 
            valign="top">
        CONTROL DE ACCESO &nbsp;
            <asp:Image ID="Image2" runat="server" ImageUrl="~/images/Login/Password.png" /></TD></TR><TR><TD style="WIDTH: 84px; text-align: right; height: 30px;" align="left"><asp:Label id="Label1" runat="server" Text="Usuario" Font-Bold="False"></asp:Label></TD>
            <TD style="text-align: left; width: 302px; height: 30px;" align="left"><asp:TextBox id="TxtUsername" runat="server" Width="142px"></asp:TextBox><asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ControlToValidate="TxtUsername" ErrorMessage="El Nombre de Usuario es Requeirdo" Display="Dynamic">*</asp:RequiredFieldValidator></TD></TR>
    <tr>
        <td style="width: 84px; text-align: right" align="left">
            <asp:Label id="Label2" runat="server" Text="Contraseña" Font-Bold="False"></asp:Label></td>
        <td style="text-align: left; width: 302px;" align="left">
            <asp:TextBox id="TxtClave" runat="server" Width="141px" TextMode="Password" autocomplete="off"></asp:TextBox><asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" ControlToValidate="TxtClave" ErrorMessage="La Contraseña es requerida" Display="Dynamic">*</asp:RequiredFieldValidator></td>
    </tr>
    <tr>
       <td style="WIDTH: 84px; text-align: right;" align="left">
           <asp:Label ID="Label3" runat="server" Font-Bold="False" Text="Vigencia" Visible="False"></asp:Label></TD>
        <td style="text-align: left; width: 302px;" align="left">
        <asp:DropDownList ID="CmbVigencia" runat="server" AutoPostBack="True" DataSourceID="ObjVigencias"
            DataTextField="Vig_Cod" DataValueField="Vig_Cod" Visible="False">
        </asp:DropDownList></TD>
     </TR>
     <tr>
         <td style="WIDTH: 84px" align="left"></TD>
         <td style="WIDTH: 89px" align="left">  <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Bold="False" Width="126px" />
        </TD>
      </TR>
        <tr>
            <td align="left" colspan="2" style="text-align: center;">
                <asp:LoginView ID="LoginView1" runat="server">
                    <RoleGroups>
                        <asp:RoleGroup>
                        </asp:RoleGroup>
                    </RoleGroups>
                    <LoggedInTemplate>
                        No puedes acceder a esta opción
                    </LoggedInTemplate>
                </asp:LoginView>
            </td>
        </tr>
    <tr>
        <td align="left" style="width: 84px; height: 28px;"> </td>
        <td align="left" style="width: 89px; height: 28px;"> <asp:Button id="cmdEnviar" runat="server" Text="Iniciar Sesión" OnClick="cmdEnviar_Click"></asp:Button></td>
    </tr>
        <tr>
            <td align="left" colspan="2" style="height: 28px; text-align: center">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Publico/RecupClave.aspx">¿Ha olvidado su contraseña?</asp:HyperLink></td>
        </tr>
    </TBODY>
    </TABLE> 
                
<!--- -->
    <ajaxToolkit:TextBoxWatermarkExtender id="TextBoxWatermarkExtender1" watermarkText="Digite Nombre de Usuario" runat="server" TargetControlID="TxtUsername" WatermarkCssClass="watermarked">
    </ajaxToolkit:TextBoxWatermarkExtender><ajaxToolkit:TextBoxWatermarkExtender id="TextBoxWatermarkExtender2" watermarkText="Contraseña" runat="server" TargetControlID="TxtClave" WatermarkCssClass="watermarked">
    </ajaxToolkit:TextBoxWatermarkExtender>
    <asp:Button style="DISPLAY: none" id="hiddenTargetControlForModalPopup" runat="server" Width="35px"></asp:Button><!--        --><!-- Mensaje de Salida--><ajaxToolkit:ModalPopupExtender id="ModalPopup" runat="server" TargetControlID="hiddenTargetControlForModalPopup" BackgroundCssClass="modalBackground" DropShadow="True" PopupControlID="programmaticPopup" PopupDragHandleControlID="programmaticPopupDragHandle" RepositionMode="RepositionOnWindowScroll" BehaviorID="programmaticModalPopupBehavior">
            </ajaxToolkit:ModalPopupExtender> <asp:Panel id="programmaticPopup" runat="server" Width="360px" CssClass="ModalPanel2">
            <!-- MODAL DE SALIDA -->
            <asp:Panel runat="Server" ID="programmaticPopupDragHandle" CssClass="BarTitleModal2" Height="30px">
               <div style="padding:5px; vertical-align: middle;">
                        <div style="float: left;"><%=Me.Titulo()%></div>
                    </div>
            </asp:Panel>
                <div style="TEXT-ALIGN: center"><br />
                <asp:Image ID="ImgRst" runat="server" ImageUrl="~/images/Error.gif" />
                <asp:Label id="MsgModalPanel" runat="server" Text="Mensaje de Salida" Width="278px" Height="33px"></asp:Label><BR /><BR />
                <input id="hideModalPopupViaClientButton" type="button" value="Aceptar" />
                <br /><br />
                </DIV>
           <br />
        </asp:Panel> <!-- End Panel Modal -->
        </contenttemplate>
        </asp:UpdatePanel>
                  
            </td>
     </tr>
            
      <tr>
                <td colspan="2">   
                    <asp:Image ID="Image4" runat="server" ImageUrl="~/images/Img_foot.png" Width="100%" /></td>
         </tr>
        </table>
        &nbsp; &nbsp;&nbsp;&nbsp;<asp:ObjectDataSource ID="ObjVigencias" runat="server" OldValuesParameterFormatString="original_{0}"
            SelectMethod="GetRecords" TypeName="Vigencias"></asp:ObjectDataSource>
        &nbsp;<asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
            <ProgressTemplate>
                <div class="Loading">
                    <img alt="" src="images/loading.gif" title="" />
                    Cargando …
                </div>
            </ProgressTemplate>
        </asp:UpdateProgress>
        &nbsp;&nbsp;
                </div>
    </form>
</body>
</html>
