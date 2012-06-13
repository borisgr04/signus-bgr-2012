<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="FoDe.aspx.vb" Inherits="DatosBasicos_FoDe_FoDe" title="Untitled Page" UICulture="auto" Culture="auto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SampleContent" Runat="Server">
 <script type='text/javascript'>
        // Add click handlers for buttons to show and hide modal popup on pageLoad
        function pageLoad() {
            //$addHandler($get("showModalPopupClientButton"), 'click', showModalPopupViaClient);
            //$addHandler($get("hideModalPopupViaClientButton"), 'click', hideModalPopupViaClient);        
            $addHandler($get("BtnCerrar"), 'click', CerrarModalTercero);        
            $addHandler($get("BtnCancelar1"), 'click', CerrarModalTercero);        
            $addHandler($get("BtnClosePar"), 'click', CerrarModalparametros);        
            
        }
        
         function CerrarModalTercero(ev) {
            ev.preventDefault();        
            var modalPopupBehavior2 = $find('programmaticModalPopupBehavior2');
            modalPopupBehavior2.hide();
            
        }function CerrarModalparametros(ev) {
            ev.preventDefault();        
            var modalPopupBehavior3 = $find('programmaticModalPopupBehavior3');
            modalPopupBehavior3.hide();
        }
        function esDigito(sChr){
var sCod = sChr.charCodeAt(0);
return ((sCod > 47) && (sCod < 58));
}

function valSep(oTxt){
var bOk = false;
bOk = bOk || ((oTxt.value.charAt(2) == "-") && (oTxt.value.charAt(5) == "-"));
bOk = bOk || ((oTxt.value.charAt(2) == "/") && (oTxt.value.charAt(5) == "/"));
return bOk;
}

function finMes(oTxt){
var nMes = parseInt(oTxt.value.substr(3, 2), 10);
var nRes = 0;
switch (nMes){
case 1: nRes = 31; break;
case 2: nRes = 29; break;
case 3: nRes = 31; break;
case 4: nRes = 30; break;
case 5: nRes = 31; break;
case 6: nRes = 30; break;
case 7: nRes = 31; break;
case 8: nRes = 31; break;
case 9: nRes = 30; break;
case 10: nRes = 31; break;
case 11: nRes = 30; break;
case 12: nRes = 31; break;
}
return nRes;
}

function valDia(oTxt){
var bOk = false;
var nDia = parseInt(oTxt.value.substr(0, 2), 10);
bOk = bOk || ((nDia >= 1) && (nDia <= finMes(oTxt)));
return bOk;
}

function valMes(oTxt){
var bOk = false;
var nMes = parseInt(oTxt.value.substr(3, 2), 10);
bOk = bOk || ((nMes >= 1) && (nMes <= 12));
return bOk;
}

function valAno(oTxt){
var bOk = true;
var nAno = oTxt.value.substr(6);
bOk = bOk && ((nAno.length == 2) || (nAno.length == 4));
if (bOk){
for (var i = 0; i < nAno.length; i++){
bOk = bOk && esDigito(nAno.charAt(i));
}
}
return bOk;
}

function valFecha(oTxt){
var bOk = true;
if (oTxt.value != ""){
bOk = bOk && (valAno(oTxt));
bOk = bOk && (valMes(oTxt));
bOk = bOk && (valDia(oTxt));
bOk = bOk && (valSep(oTxt));
if (!bOk){
/*alert("Fecha inválida");*/
}
}
return bOk;
}

function ValIsFecha (source, arguments){
      
         if(valFecha(document.aspnetForm.<%=Me.TxtfeIn.ClientID%>)==true  &&  valFecha(document.aspnetForm.<%=Me.TxtFeFi.ClientID%>)==true) 
          {
            arguments.IsValid=true;
            return;
           }
           else
           {
             arguments.IsValid=false; 
              /*alert("fecha_ Invalida");*/
              return;
            }
          }
function BtnCerrar_onclick() {

}

</script>
        
        
<div class="demoarea">
    &nbsp;
    <ajaxToolkit:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server" EnableScriptGlobalization="true"
        EnableScriptLocalization="true">
    </ajaxToolkit:ToolkitScriptManager>
    <br />
    &nbsp;&nbsp;
    <asp:Label ID="Tit" runat="server" CssClass="Titulo" Text="Configuración de Formularios de Declaración"
        Width="423px"></asp:Label>
    <hr />
    <asp:UpdatePanel id="UpdatePanel1" runat="server">
        <contenttemplate>
<asp:Label id="MsgResult" runat="server"></asp:Label>&nbsp;<BR /><asp:LinkButton id="Newpar" onclick="Newpar_Click" runat="server" __designer:dtid="281474976710666" __designer:wfdid="w13">Nuevo Formulario</asp:LinkButton>&nbsp; <asp:GridView id="GridView1" runat="server" __designer:dtid="281474976710664" __designer:wfdid="w37" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Fode_Codi" DataSourceID="ObjFoDe" OnRowCommand="GridView1_RowCommand" OnRowDataBound="GridView1_RowDataBound" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns __designer:dtid="281474976710665">
            <asp:BoundField __designer:dtid="281474976710666" DataField="Fode_Codi" HeaderText="C&#243;digo" SortExpression="Fode_Codi" ></asp:BoundField>
            <asp:BoundField __designer:dtid="281474976710667" DataField="Fode_Cdec" HeaderText="C&#243;digo de Clase" SortExpression="Fode_Cdec" ></asp:BoundField>
            <asp:BoundField __designer:dtid="281474976710668" DataField="Cld_Nom" HeaderText="Clase" SortExpression="Cld_Nom" ></asp:BoundField>
            <asp:BoundField __designer:dtid="281474976710669" DataField="Fode_FeIn" DataFormatString="{0:d}" HeaderText="Fecha Inicial"
                SortExpression="Fode_FeIn" ></asp:BoundField>
            <asp:BoundField __designer:dtid="281474976710670" DataField="Fode_FeFi" DataFormatString="{0:d}" HeaderText="Fecha Final"
                SortExpression="Fode_FeFi" ></asp:BoundField>
            <asp:BoundField __designer:dtid="281474976710671" DataField="Fode_FoWe" HeaderText="Web" SortExpression="Fode_FoWe" ></asp:BoundField>
            <asp:BoundField __designer:dtid="281474976710672" DataField="Fode_Rpte" HeaderText="Reporte" ></asp:BoundField>
            <asp:ButtonField __designer:dtid="281474976710673" ButtonType="Image" CommandName="Eliminar" ImageUrl="~/images/Operaciones/delete2.png"
                Text="Eliminar" ></asp:ButtonField>
            <asp:ButtonField __designer:dtid="281474976710674" ButtonType="Image" CommandName="Editar" ImageUrl="~/images/Operaciones/Edit2.png"
                Text="Editar" ></asp:ButtonField>
            <asp:CommandField __designer:dtid="281474976710675" ButtonType="Image" SelectImageUrl="~/images/Operaciones/Select.png"
                SelectText="Seleccionar" ShowSelectButton="True" ></asp:CommandField>
        </Columns>
    </asp:GridView> 
<HR />
<asp:Label id="Label1" runat="server" Width="254px" Font-Bold="True" __designer:dtid="844424930132004" Text="RENGLONES DEL FORMULARIO" CssClass="TitDecl" __designer:wfdid="w18"></asp:Label> <BR /><asp:LinkButton id="LinkButton1" onclick="LinkButton1_Click" runat="server" __designer:dtid="281474976710664" __designer:wfdid="w449">Nuevo Renglón</asp:LinkButton> <asp:GridView id="GridView2" runat="server" Width="700px" __designer:dtid="5066549580791828" __designer:wfdid="w448" AutoGenerateColumns="False" DataKeyNames="CoCd_Codi,Cocd_FdCo" DataSourceID="ObjValores" OnRowCommand="GridView2_RowCommand" OnRowDataBound="GridView2_RowDataBound" OnSelectedIndexChanged="GridView2_SelectedIndexChanged"><Columns __designer:dtid="5066549580791829">
<asp:TemplateField HeaderText="C&#243;digo" SortExpression="COCD_CODI" __designer:dtid="5066549580791830"><EditItemTemplate __designer:dtid="5066549580791831">
<asp:TextBox id="TextBox1" runat="server" Text='<%# Bind("COCD_CODI") %>' __designer:dtid="5066549580791832" __designer:wfdid="w3"></asp:TextBox> 
</EditItemTemplate>
<HeaderTemplate __designer:dtid="5066549580791833">
<asp:Label id="LbCod1" runat="server" __designer:dtid="5066549580791835" __designer:wfdid="w4">ID</asp:Label> 
</HeaderTemplate>
<ItemTemplate __designer:dtid="5066549580791834">
<asp:Label id="LbCod" runat="server" Text='<%# Bind("COCD_CODI") %>' __designer:dtid="5066549580791835" __designer:wfdid="w38"></asp:Label> 
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText="Concepto" SortExpression="COCD_NOMB" __designer:dtid="5066549580791836"><EditItemTemplate __designer:dtid="5066549580791837">
<asp:TextBox id="TextBox2" runat="server" Text='<%# Bind("COCD_NOMB") %>' __designer:dtid="5066549580791838" __designer:wfdid="w40"></asp:TextBox> 
</EditItemTemplate>
<HeaderTemplate __designer:dtid="5066549580791839">
<TABLE __designer:dtid="5066549580791840"><TBODY><TR __designer:dtid="5066549580791841"><TD __designer:dtid="5066549580791842"><asp:Label id="Label10" runat="server" Text="Concepto" __designer:wfdid="w41" ToolTip="Nombre del Concepto o Renglon"></asp:Label></TD></TR><TR __designer:dtid="5066549580791843"><TD __designer:dtid="5066549580791844"><asp:TextBox id="TxtNomb" runat="server" Width="211px" __designer:dtid="5066549580791845" __designer:wfdid="w42"></asp:TextBox> </TD></TR></TBODY></TABLE>
</HeaderTemplate>
<ItemTemplate __designer:dtid="5066549580791846">
<asp:Label id="Label2" runat="server" Text='<%# Bind("CoCd_Nomb") %>' __designer:dtid="5066549580791847" __designer:wfdid="w39"></asp:Label> 
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText="TiCo" SortExpression="CoCd_TiCo" __designer:dtid="5066549580791848"><EditItemTemplate __designer:dtid="5066549580791849">
<asp:TextBox id="TextBox3" runat="server" Text='<%# Bind("PALI_FEIN") %>' __designer:dtid="5066549580791850" __designer:wfdid="w86"></asp:TextBox> 
</EditItemTemplate>
<HeaderTemplate __designer:dtid="5066549580791851">
<TABLE __designer:dtid="5066549580791852"><TBODY><TR __designer:dtid="5066549580791853"><TD style="WIDTH: 30px" colSpan=1 __designer:dtid="5066549580791854"><asp:Label id="Label13" runat="server" Width="51px" Text="TICO" __designer:dtid="5066549580791855" __designer:wfdid="w468" ToolTip="Tipo Concepto"></asp:Label></TD></TR><TR __designer:dtid="5066549580791856"><TD style="WIDTH: 30px" __designer:dtid="5066549580791857"><asp:DropDownList id="CboTico" runat="server" Width="56px" __designer:dtid="281474976710787" __designer:wfdid="w88" DataSourceID="ObjTiCo" DataValueField="TCon_Cod" DataTextField="TCon_Cod" AppendDataBoundItems="True"><asp:ListItem></asp:ListItem>
</asp:DropDownList></TD></TR></TBODY></TABLE>
</HeaderTemplate>
<ItemTemplate __designer:dtid="5066549580791859">
<asp:Label id="Label3" runat="server" Text='<%# Bind("CoCd_Tico") %>' __designer:dtid="5066549580791860" __designer:wfdid="w85"></asp:Label> 
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText="Impto" SortExpression="CoCd_Impto" __designer:dtid="5066549580791861"><EditItemTemplate __designer:dtid="5066549580791862">
<asp:TextBox id="TextBox4" runat="server" Text='<%# Bind("PALI_FEFI") %>' __designer:dtid="5066549580791863" __designer:wfdid="w48"></asp:TextBox> 
</EditItemTemplate>
<HeaderTemplate __designer:dtid="5066549580791864">
<TABLE __designer:dtid="5066549580791865"><TBODY><TR __designer:dtid="5066549580791866"><TD style="WIDTH: 59px" colSpan=1 __designer:dtid="5066549580791867"><asp:Label id="Label11" runat="server" Text="Impto" __designer:wfdid="w15" ToolTip="Impuesto Asociado"></asp:Label></TD></TR><TR __designer:dtid="5066549580791868"><TD style="WIDTH: 59px" __designer:dtid="5066549580791869"><asp:DropDownList id="CboImpto" runat="server" Width="63px" __designer:wfdid="w50" OnSelectedIndexChanged="CboImpto_SelectedIndexChanged" DataSourceID="ObjImpto" DataValueField="Imp_Cod" DataTextField="Imp_Cod" AppendDataBoundItems="True"><asp:ListItem></asp:ListItem>
</asp:DropDownList></TD></TR></TBODY></TABLE>
</HeaderTemplate>
<ItemTemplate __designer:dtid="5066549580791871">
<asp:Label id="Label4" runat="server" Text='<%# Bind("CoCd_Impto") %>' __designer:dtid="5066549580791872" __designer:wfdid="w47"></asp:Label> 
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText="Seccion" __designer:dtid="5066549580791873"><EditItemTemplate __designer:dtid="5066549580791874">
<asp:TextBox id="TextBox5" runat="server" Text='<%# Bind("PALI_VALO") %>' __designer:dtid="5066549580791875" __designer:wfdid="w82"></asp:TextBox> 
</EditItemTemplate>
<HeaderTemplate __designer:dtid="5066549580791876">
<TABLE __designer:dtid="5066549580791877"><TBODY><TR __designer:dtid="5066549580791878"><TD style="WIDTH: 57px" colSpan=1 __designer:dtid="5066549580791879"><asp:Label id="Label12" runat="server" Text="Sección" __designer:wfdid="w83" ToolTip="Sección en el Fomulario"></asp:Label></TD></TR><TR __designer:dtid="5066549580791880"><TD style="WIDTH: 57px" __designer:dtid="5066549580791881"><asp:DropDownList id="CboSeco" runat="server" Width="58px" __designer:dtid="281474976710803" __designer:wfdid="w84" DataSourceID="ObjSeccion" DataValueField="Secc_Codi" DataTextField="Secc_Codi"><asp:ListItem Value="C" __designer:dtid="281474976710804">Texto</asp:ListItem>
<asp:ListItem Value="N" __designer:dtid="281474976710805">N&#250;merico</asp:ListItem>
<asp:ListItem Value="D" __designer:dtid="281474976710806">Fecha</asp:ListItem>
</asp:DropDownList></TD></TR></TBODY></TABLE>
</HeaderTemplate>
<ItemTemplate __designer:dtid="5066549580791884">
<asp:Label id="Label5" runat="server" Text='<%# Bind("CoCd_Seco") %>' __designer:dtid="5066549580791885" __designer:wfdid="w17"></asp:Label> 
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText="Cart" SortExpression="CoCd_Cart" __designer:dtid="5066549580791886"><EditItemTemplate __designer:dtid="5066549580791887">
<asp:TextBox id="TextBox6" runat="server" Text='<%# Bind("Par_Dec") %>' __designer:dtid="5066549580791888" __designer:wfdid="w64"></asp:TextBox> 
</EditItemTemplate>
<HeaderTemplate __designer:dtid="5066549580791889">
<TABLE __designer:dtid="5066549580791890"><TBODY><TR __designer:dtid="5066549580791891"><TD colSpan=1 __designer:dtid="5066549580791892"><asp:Label id="Label16" runat="server" Text="Mov_Car" __designer:wfdid="w57" ToolTip="Genera Movimiento Cartera"></asp:Label></TD></TR><TR __designer:dtid="5066549580791896"><TD __designer:dtid="5066549580791897"><asp:DropDownList id="CboCart" runat="server" __designer:dtid="281474976710818" __designer:wfdid="w66"><asp:ListItem></asp:ListItem>
<asp:ListItem Value="S" __designer:dtid="281474976710819">SI</asp:ListItem>
<asp:ListItem Value="N" __designer:dtid="281474976710820">NO</asp:ListItem>
</asp:DropDownList></TD></TR></TBODY></TABLE>
</HeaderTemplate>
<ItemTemplate __designer:dtid="5066549580791903">
<asp:Label id="Label6" runat="server" Text='<%# Bind("CoCd_Cart") %>' __designer:dtid="5066549580791904" __designer:wfdid="w63"></asp:Label> 
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText="ISVb" SortExpression="CoCd_IsVb" __designer:dtid="5066549580791905"><EditItemTemplate __designer:dtid="5066549580791906">
<asp:TextBox id="TextBox7" runat="server" Text='<%# Bind("Pali_vanu") %>' __designer:dtid="5066549580791907" __designer:wfdid="w68"></asp:TextBox> 
</EditItemTemplate>
<HeaderTemplate __designer:dtid="5066549580791908">
<TABLE __designer:dtid="5066549580791909"><TBODY><TR __designer:dtid="5066549580791910"><TD colSpan=1 __designer:dtid="5066549580791911"><asp:Label id="Label17" runat="server" Text="VB" __designer:wfdid="w28" ToolTip="Muestra  Valor Base"></asp:Label></TD></TR><TR __designer:dtid="5066549580791913"><TD __designer:dtid="5066549580791914"><asp:DropDownList id="CboIsVb1" runat="server" __designer:dtid="281474976710818" __designer:wfdid="w70"><asp:ListItem></asp:ListItem>
<asp:ListItem Value="S" __designer:dtid="281474976710819">SI</asp:ListItem>
<asp:ListItem Value="N" __designer:dtid="281474976710820">NO</asp:ListItem>
</asp:DropDownList>&nbsp;</TD></TR></TBODY></TABLE>
</HeaderTemplate>
<ItemTemplate __designer:dtid="5066549580791917">
<asp:Label id="Label7" runat="server" Text='<%# Bind("CoCd_IsVb") %>' __designer:dtid="5066549580791918" __designer:wfdid="w67"></asp:Label> 
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText="CCart" SortExpression="CoCd_CCart" __designer:dtid="5066549580791919"><EditItemTemplate __designer:dtid="5066549580791920">
<asp:TextBox id="TextBox8" runat="server" Text='<%# Bind("Pali_Vada") %>' __designer:dtid="5066549580791921" __designer:wfdid="w72"></asp:TextBox> 
</EditItemTemplate>
<HeaderTemplate __designer:dtid="5066549580791922">
<TABLE __designer:dtid="5066549580791923"><TBODY><TR __designer:dtid="5066549580791924"><TD colSpan=1 __designer:dtid="5066549580791925"><asp:Label id="Label15" runat="server" Width="73px" Height="14px" Text="Codi_Cart" __designer:wfdid="w31" ToolTip="Código Cartera"></asp:Label></TD></TR><TR __designer:dtid="5066549580791927"><TD __designer:dtid="5066549580791928"><asp:DropDownList id="CboCCar1" runat="server" __designer:wfdid="w74" DataSourceID="ObjCCart" DataValueField="CCar_Cod" DataTextField="CCar_Cod" AppendDataBoundItems="True"><asp:ListItem></asp:ListItem>
</asp:DropDownList></TD></TR></TBODY></TABLE>
</HeaderTemplate>
<ItemTemplate __designer:dtid="5066549580791931">
<asp:Label id="Label8" runat="server" Text='<%# Bind("CoCd_CCar") %>' __designer:dtid="5066549580791932" __designer:wfdid="w71"></asp:Label> 
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText="CTar" SortExpression="CoCd_CTar" __designer:dtid="5066549580791933"><EditItemTemplate __designer:dtid="5066549580791934">
<asp:TextBox id="TextBox9" runat="server" Text='<%# Bind("Pali_UsAp") %>' __designer:dtid="5066549580791935" __designer:wfdid="w76"></asp:TextBox> 
</EditItemTemplate>
<HeaderTemplate __designer:dtid="5066549580791936">
<TABLE __designer:dtid="5066549580791937"><TBODY><TR __designer:dtid="5066549580791938"><TD style="HEIGHT: 24px" colSpan=3><asp:Label id="Label14" runat="server" Width="49px" Height="15px" Text="Calcular" __designer:wfdid="w522" ToolTip="Calcular Impuesto automáticamente en Formulario"></asp:Label></TD></TR><TR __designer:dtid="5066549580791941"><TD __designer:dtid="5066549580791942"><asp:DropDownList id="CboCTar1" runat="server" __designer:dtid="281474976710832" __designer:wfdid="w78"><asp:ListItem></asp:ListItem>
<asp:ListItem Value="S" __designer:dtid="281474976710833">SI</asp:ListItem>
<asp:ListItem Value="N" __designer:dtid="281474976710834">NO</asp:ListItem>
</asp:DropDownList></TD><TD style="WIDTH: 6px" __designer:dtid="5066549580791944"><asp:Button id="Button1" onclick="btnFiltrar_Click" runat="server" Text="+" __designer:dtid="5066549580791900" __designer:wfdid="w79"></asp:Button></TD><TD style="WIDTH: 6px"><asp:Button id="Filtrar" onclick="btnQFiltrar_Click" runat="server" Text="-" __designer:dtid="5066549580791902" __designer:wfdid="w80" ToolTip="Quitar Filtro"></asp:Button></TD></TR></TBODY></TABLE>
</HeaderTemplate>
<ItemTemplate __designer:dtid="5066549580791945">
<asp:Label id="Label9" runat="server" Text='<%# Bind("CoCd_CTar") %>' __designer:dtid="5066549580791946" __designer:wfdid="w75"></asp:Label> 
</ItemTemplate>
</asp:TemplateField>
<asp:ButtonField CommandName="Eliminar" ImageUrl="~/images/Operaciones/delete2.png" Text="Eliminar" ButtonType="Image" __designer:dtid="5066549580791947"></asp:ButtonField>
<asp:ButtonField CommandName="Editar" ImageUrl="~/images/Operaciones/Edit2.png" Text="Editar" ButtonType="Image" __designer:dtid="5066549580791948"></asp:ButtonField>
<asp:CommandField SelectImageUrl="~/images/Operaciones/Select.png" ShowSelectButton="True" ButtonType="Image" __designer:dtid="5066549580791949"></asp:CommandField>
</Columns>
</asp:GridView><BR /><asp:ObjectDataSource id="ObjFoDe" runat="server" __designer:dtid="281474976710680" TypeName="Formularios_Dec" SelectMethod="GetRecords" __designer:wfdid="w15"></asp:ObjectDataSource><asp:HiddenField id="OperFoDe" runat="server" __designer:wfdid="w33"></asp:HiddenField><BR /><asp:HiddenField id="HdPk1" runat="server" __designer:wfdid="w453"></asp:HiddenField> <asp:HiddenField id="HdPk2" runat="server" __designer:wfdid="w454"></asp:HiddenField> <asp:HiddenField id="Oper" runat="server" __designer:wfdid="w345"></asp:HiddenField> <asp:HiddenField id="FValores" runat="server" __designer:wfdid="w346"></asp:HiddenField> <asp:ObjectDataSource id="ObjValores" runat="server" TypeName="Conc_Cdec" SelectMethod="GetConceptos" OldValuesParameterFormatString="original_{0}" __designer:wfdid="w347"><SelectParameters>
<asp:ControlParameter ControlID="GridView1" PropertyName="SelectedValue" Name="Conc_FoDe" Type="String"></asp:ControlParameter>
<asp:ControlParameter ControlID="FValores" PropertyName="Value" Name="Filtro" Type="String"></asp:ControlParameter>
</SelectParameters>
</asp:ObjectDataSource>&nbsp;&nbsp; 
</contenttemplate>
    </asp:UpdatePanel>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;
    <asp:UpdatePanel id="UpdatePanel2" runat="server"><contenttemplate>
<!-- Mensaje de Salida--><BR /><asp:Button style="DISPLAY: none" id="hiddenTargetControlForModalPopup2" runat="server" __designer:wfdid="w74"></asp:Button> <ajaxToolkit:ModalPopupExtender id="ModalPopupTer" runat="server" __designer:wfdid="w75" TargetControlID="hiddenTargetControlForModalPopup2" RepositionMode="RepositionOnWindowScroll" BehaviorID="programmaticModalPopupBehavior2" BackgroundCssClass="modalBackground" DropShadow="True" PopupControlID="programmaticPopup2" PopupDragHandleControlID="programmaticPopupDragHandle2">
            </ajaxToolkit:ModalPopupExtender>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Panel id="programmaticPopup2" runat="server" Width="708px" Height="676px" __designer:dtid="281474976710672" CssClass="ModalPanel2" __designer:wfdid="w402"><asp:Panel id="programmaticPopupDragHandle2" runat="Server" Width="706px" Height="30px" __designer:dtid="281474976710673" CssClass="BarTitleModal2" __designer:wfdid="w403"><DIV style="PADDING-RIGHT: 5px; PADDING-LEFT: 5px; PADDING-BOTTOM: 5px; VERTICAL-ALIGN: middle; PADDING-TOP: 5px" __designer:dtid="281474976710674"><DIV style="FLOAT: left" __designer:dtid="281474976710675">Formularios de&nbsp; Liquidación</DIV><DIV style="FLOAT: right" __designer:dtid="281474976710676"><INPUT id="BtnCerrar" onclick="return BtnCerrar_onclick()" type=button value="X" __designer:dtid="281474976710677" /></DIV></DIV></asp:Panel> &nbsp; <TABLE style="WIDTH: 467px" align=center __designer:dtid="281474976710678"><TBODY><TR __designer:dtid="281474976710679"><TD style="HEIGHT: 33px" colSpan=3 __designer:dtid="281474976710680"><asp:Label id="TitFode" runat="server" __designer:dtid="281474976710681" Text="Nuevo Registro" CssClass="Titulo" __designer:wfdid="w404"></asp:Label></TD></TR><TR __designer:dtid="281474976710682"><TD colSpan=3 __designer:dtid="281474976710683"><asp:ValidationSummary id="ValidationSummary1" runat="server" __designer:dtid="281474976710684" __designer:wfdid="w405" ValidationGroup="Guardar"></asp:ValidationSummary> </TD></TR><TR __designer:dtid="281474976710685"><TD style="WIDTH: 271px" __designer:dtid="281474976710686">Código</TD><TD style="WIDTH: 102px" __designer:dtid="281474976710687"><asp:TextBox id="TxtCodi" runat="server" Width="114px" __designer:dtid="281474976710688" __designer:wfdid="w406" Enabled="False"></asp:TextBox></TD><TD style="WIDTH: 14190px" __designer:dtid="281474976710689"></TD></TR><TR __designer:dtid="281474976710690"><TD style="WIDTH: 271px" __designer:dtid="281474976710691">Clase </TD><TD style="WIDTH: 102px" __designer:dtid="281474976710692"><asp:DropDownList id="CmbCdec" runat="server" Width="285px" __designer:dtid="281474976710693" __designer:wfdid="w407" DataSourceID="ObjClaseDec" DataTextField="cld_nom" DataValueField="cld_cod"></asp:DropDownList></TD><TD style="WIDTH: 14190px" __designer:dtid="281474976710694"></TD></TR><TR __designer:dtid="281474976710695"><TD style="WIDTH: 271px; HEIGHT: 20px" __designer:dtid="281474976710696">Ruta Web</TD><TD style="WIDTH: 102px; HEIGHT: 20px" __designer:dtid="281474976710697"><asp:TextBox id="TxtFoWe" runat="server" Width="211px" __designer:dtid="281474976710698" __designer:wfdid="w408"></asp:TextBox></TD><TD style="WIDTH: 14190px; HEIGHT: 20px" __designer:dtid="281474976710699"><asp:RequiredFieldValidator id="RqCod" runat="server" __designer:dtid="281474976710700" __designer:wfdid="w409" ValidationGroup="GuardarFD" ControlToValidate="TxtFoWe" ErrorMessage="Especifique Ruta de Página Web">*</asp:RequiredFieldValidator></TD></TR><TR __designer:dtid="281474976710701"><TD style="WIDTH: 271px" __designer:dtid="281474976710702">Ruta Reporte</TD><TD style="WIDTH: 102px" __designer:dtid="281474976710703"><asp:TextBox id="TxtRpte" runat="server" Width="211px" __designer:dtid="281474976710704" __designer:wfdid="w410"></asp:TextBox></TD><TD style="WIDTH: 14190px" __designer:dtid="281474976710705"><asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" __designer:dtid="281474976710706" __designer:wfdid="w411" ValidationGroup="GuardarFD" ControlToValidate="TxtFoWe" ErrorMessage="Especifique Ruta de Reporte RDLC">*</asp:RequiredFieldValidator></TD></TR><TR __designer:dtid="281474976710707"><TD style="WIDTH: 271px; HEIGHT: 21px" __designer:dtid="281474976710708">Fecha Inicial</TD><TD style="WIDTH: 102px; HEIGHT: 21px" __designer:dtid="281474976710709"><asp:TextBox id="TxtFeIn" runat="server" __designer:dtid="281474976710710" __designer:wfdid="w412"></asp:TextBox></TD><TD style="WIDTH: 14190px; HEIGHT: 21px" __designer:dtid="281474976710711"><asp:CustomValidator id="CusValFini" runat="server" __designer:dtid="281474976710712" __designer:wfdid="w413" ValidationGroup="GuardarFD" ControlToValidate="TxtFeIn" ErrorMessage="Digite Una Fecha Inicial Valida" ClientValidationFunction="ValIsFecha">*</asp:CustomValidator></TD></TR><TR __designer:dtid="281474976710713"><TD style="WIDTH: 271px" __designer:dtid="281474976710714">Fecha Final</TD><TD style="WIDTH: 102px" __designer:dtid="281474976710715"><asp:TextBox id="TxtFeFi" runat="server" __designer:dtid="281474976710716" __designer:wfdid="w414"></asp:TextBox></TD><TD style="WIDTH: 14190px" __designer:dtid="281474976710717"><asp:CompareValidator id="CompareValidator1" runat="server" __designer:dtid="281474976710718" __designer:wfdid="w415" ValidationGroup="GuardarFD" ControlToValidate="TxtFeFi" ErrorMessage="La Fecha Inicial debe ser menor que la Final" Operator="GreaterThanEqual" ControlToCompare="TxtFeIn" SetFocusOnError="True">*</asp:CompareValidator> <asp:CustomValidator id="CusValFfin" runat="server" __designer:dtid="281474976710719" __designer:wfdid="w416" ValidationGroup="GuardarFD" ControlToValidate="TxtFeFi" ErrorMessage="Digite Una Fecha Final Valida" ClientValidationFunction="ValIsFecha">*</asp:CustomValidator></TD></TR><TR __designer:dtid="281474976710720"><TD style="WIDTH: 271px; HEIGHT: 21px" __designer:dtid="281474976710721">Estado</TD><TD style="WIDTH: 102px; HEIGHT: 21px" __designer:dtid="281474976710722"><asp:DropDownList id="CboEsta" runat="server" __designer:dtid="281474976710723" __designer:wfdid="w417"><asp:ListItem Value="AC" __designer:dtid="281474976710724">Activo</asp:ListItem>
<asp:ListItem Value="IN" __designer:dtid="281474976710725">Inactivo</asp:ListItem>
</asp:DropDownList></TD><TD style="WIDTH: 14190px; HEIGHT: 21px" __designer:dtid="281474976710726"></TD></TR><TR __designer:dtid="281474976710727"><TD style="WIDTH: 271px" vAlign=top __designer:dtid="281474976710728">Operaciones <BR __designer:dtid="281474976710729" />Liquidación Privada<BR __designer:dtid="281474976710730" />(Explorador)<BR __designer:dtid="281474976710731" />JavaScript</TD><TD style="WIDTH: 102px" __designer:dtid="281474976710732"><asp:TextBox id="TxtOpeLP" runat="server" Width="430px" Height="96px" __designer:dtid="281474976710733" __designer:wfdid="w418" TextMode="MultiLine"></asp:TextBox></TD><TD style="WIDTH: 14190px" vAlign=top __designer:dtid="281474976710734"><asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" __designer:dtid="281474976710735" __designer:wfdid="w419" ValidationGroup="GuardarFD" ControlToValidate="TxtOpeLP" ErrorMessage="Digite Operaciones Sección LP (Liquidación Privada)- Lng: JavaScript">*</asp:RequiredFieldValidator></TD></TR><TR __designer:dtid="281474976710736"><TD style="WIDTH: 271px; HEIGHT: 36px" vAlign=top __designer:dtid="281474976710737">Operaciones Liquidación Oficial(Explorador)<BR __designer:dtid="281474976710738" />JavaScript</TD><TD style="WIDTH: 102px; HEIGHT: 36px" __designer:dtid="281474976710739"><asp:TextBox id="TxtOpeVP" runat="server" Width="428px" Height="96px" __designer:dtid="281474976710740" __designer:wfdid="w420" TextMode="MultiLine"></asp:TextBox></TD><TD style="WIDTH: 14190px; HEIGHT: 36px" vAlign=top __designer:dtid="281474976710741"><asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server" __designer:dtid="281474976710742" __designer:wfdid="w421" ValidationGroup="GuardarFD" ControlToValidate="TxtOpeVP" ErrorMessage="Digite Operaciones Sección VP (Valor a Pagar)- Lng: JavaScript">*</asp:RequiredFieldValidator></TD></TR><TR __designer:dtid="281474976710743"><TD style="WIDTH: 271px; HEIGHT: 39px" vAlign=top __designer:dtid="281474976710744">Observación</TD><TD style="WIDTH: 102px; HEIGHT: 39px" __designer:dtid="281474976710745"><asp:TextBox id="TxtObs" runat="server" Width="428px" Height="43px" __designer:dtid="281474976710746" __designer:wfdid="w422" TextMode="MultiLine"></asp:TextBox></TD><TD style="WIDTH: 14190px; HEIGHT: 39px" vAlign=top __designer:dtid="281474976710747"><asp:RequiredFieldValidator id="RequiredFieldValidator4" runat="server" __designer:dtid="281474976710748" __designer:wfdid="w423" ValidationGroup="GuardarFD" ControlToValidate="TxtObs" ErrorMessage="Digite Observación">*</asp:RequiredFieldValidator></TD></TR><TR __designer:dtid="281474976710749"><TD style="HEIGHT: 38px; TEXT-ALIGN: center" colSpan=3 __designer:dtid="281474976710750"><asp:Button id="BtnGuardar" onclick="BtnGuardar_Click" runat="server" __designer:dtid="281474976710751" Text="Guardar" __designer:wfdid="w424" ValidationGroup="GuardarFD" UseSubmitBehavior="False"></asp:Button> <INPUT id="BtnCancelar1" type=button value="Cancelar" __designer:dtid="281474976710752" /></TD></TR></TBODY></TABLE></asp:Panel> <ajaxToolkit:CalendarExtender id="CalendarExtender1" runat="server" __designer:wfdid="w396" TargetControlID="TxtFeIn"></ajaxToolkit:CalendarExtender> <ajaxToolkit:CalendarExtender id="CalendarExtender2" runat="server" __designer:wfdid="w397" TargetControlID="TxtFeFi"></ajaxToolkit:CalendarExtender> 
</contenttemplate>
    </asp:UpdatePanel>
    <asp:ObjectDataSource ID="ObjClaseDec" runat="server" OldValuesParameterFormatString="original_{0}"
        SelectMethod="GetcargarTipoDecla" TypeName="Informes"></asp:ObjectDataSource>
    &nbsp;&nbsp;<br />
    <br />
    <br />
    <asp:UpdatePanel id="UpdatePanel3" runat="server"><contenttemplate>
<BR /><asp:Button style="DISPLAY: none" id="hiddenTargetControlForModalPopup3" runat="server" __designer:wfdid="w74"></asp:Button> <ajaxToolkit:ModalPopupExtender id="ModalPopupTer3" runat="server" __designer:wfdid="w75" TargetControlID="hiddenTargetControlForModalPopup3" RepositionMode="RepositionOnWindowScroll" BehaviorID="programmaticModalPopupBehavior3" BackgroundCssClass="modalBackground" DropShadow="True" PopupControlID="programmaticPopup3" PopupDragHandleControlID="programmaticPopupDragHandle3"></ajaxToolkit:ModalPopupExtender>&nbsp;&nbsp; <asp:Panel id="programmaticPopup3" runat="server" Width="765px" Height="666px" __designer:dtid="281474976710758" CssClass="ModalPanel2" __designer:wfdid="w425"><asp:Panel id="programmaticPopupDragHandle3" runat="Server" Width="761px" Height="30px" __designer:dtid="281474976710759" CssClass="BarTitleModal2" __designer:wfdid="w37"><DIV style="PADDING-RIGHT: 5px; PADDING-LEFT: 5px; PADDING-BOTTOM: 5px; VERTICAL-ALIGN: middle; PADDING-TOP: 5px" __designer:dtid="281474976710760"><DIV style="FLOAT: left" __designer:dtid="281474976710761">Conceptos/Renglones de Liquidación&nbsp;</DIV><DIV style="FLOAT: right" __designer:dtid="281474976710762"><INPUT id="BtnClosePar" type=button value="X" __designer:dtid="281474976710763" /></DIV></DIV></asp:Panel> <BR __designer:dtid="281474976710764" /><TABLE style="WIDTH: 566px" __designer:dtid="281474976710765"><TBODY><TR __designer:dtid="281474976710766"><TD colSpan=3 __designer:dtid="281474976710767"><asp:Label id="TitConc" runat="server" __designer:dtid="281474976710768" Text="Nuevo Registro" CssClass="Titulo" __designer:wfdid="w38"></asp:Label></TD></TR><TR __designer:dtid="281474976710769"><TD style="WIDTH: 100px" __designer:dtid="281474976710770">Clase</TD><TD style="WIDTH: 114px" __designer:dtid="281474976710771"><asp:DropDownList id="CmbCdec2" runat="server" Width="285px" __designer:dtid="281474976710772" __designer:wfdid="w39" DataSourceID="ObjClaseDec" Enabled="False" DataTextField="cld_nom" DataValueField="cld_cod"></asp:DropDownList></TD><TD style="WIDTH: 100px" __designer:dtid="281474976710773"></TD></TR><TR __designer:dtid="281474976710774"><TD style="WIDTH: 100px" __designer:dtid="281474976710775">Código</TD><TD style="WIDTH: 114px" __designer:dtid="281474976710776"><asp:TextBox id="TxtCodC" runat="server" __designer:dtid="281474976710777" __designer:wfdid="w40"></asp:TextBox></TD><TD style="WIDTH: 100px" __designer:dtid="281474976710778"></TD></TR><TR style="COLOR: #000000" __designer:dtid="281474976710779"><TD style="WIDTH: 100px" __designer:dtid="281474976710780">Renglon/Concepto</TD><TD style="WIDTH: 114px" __designer:dtid="281474976710781"><asp:TextBox id="TxtConc" runat="server" Width="299px" __designer:dtid="281474976710782" __designer:wfdid="w41"></asp:TextBox></TD><TD style="WIDTH: 100px" __designer:dtid="281474976710783"></TD></TR><TR __designer:dtid="281474976710784"><TD style="WIDTH: 100px; TEXT-ALIGN: left" __designer:dtid="281474976710785">Tipo de Concepto</TD><TD style="WIDTH: 114px; TEXT-ALIGN: left" __designer:dtid="281474976710786"><asp:DropDownList id="CboTico" runat="server" __designer:dtid="281474976710787" __designer:wfdid="w42" DataSourceID="ObjTiCo" DataTextField="TCon_CNom" DataValueField="TCon_Cod"><asp:ListItem Value="C" __designer:dtid="281474976710788">Texto</asp:ListItem>
<asp:ListItem Value="N" __designer:dtid="281474976710789">N&#250;merico</asp:ListItem>
<asp:ListItem Value="D" __designer:dtid="281474976710790">Fecha</asp:ListItem>
</asp:DropDownList></TD><TD style="WIDTH: 100px" __designer:dtid="281474976710791"></TD></TR><TR __designer:dtid="281474976710792"><TD style="WIDTH: 100px; HEIGHT: 20px" __designer:dtid="281474976710793">Impuesto</TD><TD style="WIDTH: 114px; HEIGHT: 20px; TEXT-ALIGN: left" __designer:dtid="281474976710794"><asp:DropDownList id="CboImpto" runat="server" __designer:wfdid="w43"><asp:ListItem></asp:ListItem>
</asp:DropDownList></TD><TD style="WIDTH: 100px; HEIGHT: 20px" __designer:dtid="281474976710799">, </TD></TR><TR __designer:dtid="281474976710800"><TD style="WIDTH: 100px" __designer:dtid="281474976710801">Sección Formulario</TD><TD style="WIDTH: 114px; TEXT-ALIGN: left" __designer:dtid="281474976710802"><asp:DropDownList id="CboSeco" runat="server" __designer:dtid="281474976710803" __designer:wfdid="w44" DataSourceID="ObjSeccion" DataTextField="Secc_Nomb" DataValueField="Secc_Codi"><asp:ListItem Value="C" __designer:dtid="281474976710804">Texto</asp:ListItem>
<asp:ListItem Value="N" __designer:dtid="281474976710805">N&#250;merico</asp:ListItem>
<asp:ListItem Value="D" __designer:dtid="281474976710806">Fecha</asp:ListItem>
</asp:DropDownList></TD><TD style="WIDTH: 100px" __designer:dtid="281474976710807"></TD></TR><TR __designer:dtid="281474976710808"><TD style="WIDTH: 100px" __designer:dtid="281474976710809">Mostrar Valor Base</TD><TD style="WIDTH: 114px; TEXT-ALIGN: left" __designer:dtid="281474976710810"><asp:DropDownList id="CboIsVb" runat="server" __designer:dtid="281474976710811" __designer:wfdid="w45">
                        <asp:ListItem __designer:dtid="281474976710812" Value="S">SI</asp:ListItem>
                        <asp:ListItem __designer:dtid="281474976710813" Value="N">NO</asp:ListItem>
                    </asp:DropDownList></TD><TD style="WIDTH: 100px" __designer:dtid="281474976710814"></TD></TR><TR __designer:dtid="281474976710815"><TD style="WIDTH: 100px" __designer:dtid="281474976710816">Afecta Cartera</TD><TD style="WIDTH: 114px; TEXT-ALIGN: left" __designer:dtid="281474976710817"><asp:DropDownList id="CboCart" runat="server" __designer:dtid="281474976710818" __designer:wfdid="w46">
                        <asp:ListItem __designer:dtid="281474976710819" Value="S">SI</asp:ListItem>
                        <asp:ListItem __designer:dtid="281474976710820" Value="N">NO</asp:ListItem>
                    </asp:DropDownList></TD><TD style="WIDTH: 100px" __designer:dtid="281474976710821"></TD></TR><TR __designer:dtid="281474976710822"><TD style="WIDTH: 100px" __designer:dtid="281474976710823">Concepto de Cartera</TD><TD style="WIDTH: 114px; TEXT-ALIGN: left" __designer:dtid="281474976710824"><asp:DropDownList id="CboCCar" runat="server" __designer:wfdid="w47"></asp:DropDownList></TD><TD style="WIDTH: 100px" __designer:dtid="281474976710828"></TD></TR><TR __designer:dtid="281474976710829"><TD style="WIDTH: 100px" __designer:dtid="281474976710830">Calcular Impuesto Automáticamente</TD><TD style="WIDTH: 114px" __designer:dtid="281474976710831"><asp:DropDownList id="CboCTar" runat="server" __designer:dtid="281474976710832" __designer:wfdid="w48">
                        <asp:ListItem __designer:dtid="281474976710833" Value="S">SI</asp:ListItem>
                        <asp:ListItem __designer:dtid="281474976710834" Value="N">NO</asp:ListItem>
                    </asp:DropDownList></TD><TD style="WIDTH: 100px" __designer:dtid="281474976710835"></TD></TR><TR __designer:dtid="281474976710836"><TD style="WIDTH: 100px" __designer:dtid="281474976710837">Sumatoria</TD><TD style="WIDTH: 114px" __designer:dtid="281474976710838"><asp:DropDownList id="CboSum" runat="server" __designer:dtid="281474976710832" __designer:wfdid="w49"><asp:ListItem Value="S" __designer:dtid="281474976710833">SI</asp:ListItem>
<asp:ListItem Value="N" __designer:dtid="281474976710834">NO</asp:ListItem>
</asp:DropDownList></TD><TD style="WIDTH: 100px" __designer:dtid="281474976710839"></TD></TR><TR __designer:dtid="281474976710840"><TD style="WIDTH: 100px" __designer:dtid="281474976710841">Tipo de Movimiento</TD><TD style="WIDTH: 114px" __designer:dtid="281474976710842"><asp:DropDownList id="CboTMOV" runat="server" __designer:dtid="281474976710803" __designer:wfdid="w50" DataSourceID="ObjTMOV" DataTextField="TMOV_NOM" DataValueField="TMOV_COD" AppendDataBoundItems="True"><asp:ListItem></asp:ListItem>
</asp:DropDownList></TD><TD style="WIDTH: 100px" __designer:dtid="281474976710843"></TD></TR><TR><TD style="WIDTH: 100px">Abreviatura Valor Base</TD><TD style="WIDTH: 114px"><asp:TextBox id="TxtABVB" runat="server" __designer:dtid="281474976710777" __designer:wfdid="w51"></asp:TextBox></TD><TD style="WIDTH: 100px"></TD></TR><TR><TD style="WIDTH: 100px">Abreviatura Valor Renglon</TD><TD style="WIDTH: 114px"><asp:TextBox id="TxtABVD" runat="server" __designer:dtid="281474976710777" __designer:wfdid="w52"></asp:TextBox></TD><TD style="WIDTH: 100px"></TD></TR><TR><TD style="WIDTH: 100px">Base Redondeo Valor Base</TD><TD style="WIDTH: 114px"><asp:TextBox id="TxtREVB" runat="server" __designer:dtid="281474976710777" __designer:wfdid="w55"></asp:TextBox></TD><TD style="WIDTH: 100px"></TD></TR><TR __designer:dtid="281474976710844"><TD style="HEIGHT: 22px; TEXT-ALIGN: center" colSpan=3 __designer:dtid="281474976710845">&nbsp;<asp:Button id="BtnGuardarN" onclick="BtnGuardarN_Click" runat="server" __designer:dtid="281474976710846" Text="Guardar" __designer:wfdid="w53" ValidationGroup="Guardar2"></asp:Button> <asp:Button id="BtnCancel" onclick="BtnCancel_Click" runat="server" __designer:dtid="281474976710847" Text="Cancelar" __designer:wfdid="w54"></asp:Button></TD></TR><TR __designer:dtid="281474976710848"><TD style="TEXT-ALIGN: center" colSpan=3 __designer:dtid="281474976710849"></TD></TR></TBODY></TABLE><BR __designer:dtid="281474976710852" /><BR __designer:dtid="281474976710853" /></asp:Panel> 
</contenttemplate>
    </asp:UpdatePanel>&nbsp;<asp:ObjectDataSource ID="ObjTiCo" runat="server" OldValuesParameterFormatString="original_{0}"
        SelectMethod="GetRecords" TypeName="Tipo_Conceptos"></asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjImpto" runat="server" OldValuesParameterFormatString="original_{0}"
        SelectMethod="GetByCLASE" TypeName="Impuestos">
        <SelectParameters>
            <asp:ControlParameter ControlID="CmbCdec2" Name="Imp_Cla" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjCCart" runat="server" OldValuesParameterFormatString="original_{0}"
        SelectMethod="GetRecords" TypeName="Conc_Cart"></asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjSeccion" runat="server" OldValuesParameterFormatString="original_{0}"
        SelectMethod="GetRecords" TypeName="Secciones"></asp:ObjectDataSource><asp:ObjectDataSource ID="ObjTMOV" runat="server" OldValuesParameterFormatString="original_{0}"
        SelectMethod="GetRecords" TypeName="Tipo_Mov"></asp:ObjectDataSource>
    &nbsp;<br />
    &nbsp;
    <br />
    <asp:UpdateProgress id="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
        <progresstemplate>
            <div class="Loading">
            <img src="../../images/loading.gif" alt="" title="" /> Cargando …
            </div>
        </progresstemplate>
    </asp:UpdateProgress>
    <br />
</div>
</asp:Content>

