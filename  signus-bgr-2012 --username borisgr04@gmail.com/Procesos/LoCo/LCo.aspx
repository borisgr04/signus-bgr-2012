<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="LCo.aspx.vb" Inherits="Procesos_LoCo_LCo" title="Untitled Page" %>
<%@ Register Assembly="eWorld.UI, Version=2.0.6.2393, Culture=neutral, PublicKeyToken=24d65337282035f2"
    Namespace="eWorld.UI" TagPrefix="ew" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SampleContent" Runat="Server">
    <script type='text/javascript' src="../../js/Declaraciones.js"></script>
    <script src="../../js/Numeric.js" type="text/javascript"></script>
    <ajaxToolkit:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </ajaxToolkit:ToolkitScriptManager>
    <div class="demoarea">
        <asp:Label ID="Tit" runat="server" CssClass="Titulo" Text="Liquidaci�n de Correcci�n"
            Width="286px"></asp:Label><br />
    <asp:UpdatePanel id="UpdatePanel1" runat="server">
        <contenttemplate>
<TABLE style="WIDTH: 500px" width="100%" __designer:dtid="1125994396123201"><TBODY><TR onmouseover="Resaltar_On(this);" class="DivNegroFila" onmouseout="Resaltar_Off(this);" __designer:dtid="1125994396123202"><TD style="HEIGHT: 13px" class="TDNegroFila" __designer:dtid="1125994396123203"><asp:Label id="MsgResult" runat="server" __designer:wfdid="w16"></asp:Label><BR /><asp:Label id="Label10" runat="server" Font-Bold="True" Text="II. INFORMACI�N DEL RESPONSABLE O AGENTE RETENEDOR" __designer:dtid="1125994396123204" __designer:wfdid="w49"></asp:Label></TD></TR><TR __designer:dtid="1125994396123205"><TD style="WIDTH: 800px; HEIGHT: 162px" __designer:dtid="1125994396123206"><TABLE width="100%" __designer:dtid="1125994396123207"><TBODY><TR onmouseover="Resaltar_On(this);" onmouseout="Resaltar_Off(this);" __designer:dtid="1125994396123215"><TD style="WIDTH: 130px; HEIGHT: 15px" __designer:dtid="1125994396123216">&nbsp;<asp:Label id="Label45" runat="server" Width="94px" Font-Bold="True" Text="IDENTIFICACI�N" __designer:dtid="1125994396123218" __designer:wfdid="w54" CssClass="TitDecl"></asp:Label></TD><TD style="WIDTH: 91px; HEIGHT: 15px" __designer:dtid="1125994396123219">&nbsp;<asp:Label id="Label5" runat="server" Width="23px" Font-Bold="True" Text="DV" __designer:dtid="1125994396123220" __designer:wfdid="w55" CssClass="TitDecl"></asp:Label></TD><TD style="HEIGHT: 15px" colSpan=2><asp:Label id="Label11" runat="server" Width="187px" Font-Bold="True" Text="RAZON SOCIAL" __designer:dtid="1125994396123211" __designer:wfdid="w2" CssClass="TitDecl"></asp:Label></TD></TR><TR onmouseover="Resaltar_On(this);" onmouseout="Resaltar_Off(this);" __designer:dtid="1125994396123227"><TD style="WIDTH: 130px; HEIGHT: 19px; TEXT-ALIGN: left" __designer:dtid="1125994396123228"><asp:Label id="Nit" runat="server" __designer:dtid="1125994396123229" __designer:wfdid="w60" CssClass="TitDecl"></asp:Label></TD><TD style="WIDTH: 91px; HEIGHT: 19px" __designer:dtid="1125994396123230">- <asp:Label id="DV" runat="server" Width="23px" __designer:dtid="1125994396123231" __designer:wfdid="w61" CssClass="TitDecl"></asp:Label></TD><TD style="HEIGHT: 19px" colSpan=2><asp:Label id="Agente" runat="server" __designer:dtid="1125994396123214" __designer:wfdid="w3" CssClass="TitDecl"></asp:Label></TD></TR><TR onmouseover="Resaltar_On(this);" onmouseout="Resaltar_Off(this);"><TD style="HEIGHT: 19px" colSpan=4><asp:Label id="Label2" runat="server" Font-Bold="True" Text="CLASE DE DECLARACI�N" __designer:dtid="1125994396123171" __designer:wfdid="w74" CssClass="TitDecl"></asp:Label></TD></TR><TR onmouseover="Resaltar_On(this);" onmouseout="Resaltar_Off(this);"><TD style="HEIGHT: 19px; TEXT-ALIGN: left" colSpan=4><asp:DropDownList id="CmbClDec" runat="server" Width="401px" __designer:dtid="1407374883553335" __designer:wfdid="w13" DataSourceID="ObjClaseDec" DataTextField="cld_nom" DataValueField="cld_cod" Enabled="False">
                            </asp:DropDownList></TD></TR></TBODY></TABLE><TABLE width="100%" __designer:dtid="1125994396123163"><TBODY><TR><TD style="WIDTH: 6px" __designer:dtid="1125994396123168"></TD><TD style="WIDTH: 100px" class="TDNegroTexto" __designer:dtid="1125994396123170"><asp:Label id="Label14" runat="server" Width="97px" Font-Bold="True" Text="A�O GRAVABLE" __designer:dtid="1125994396123171" __designer:wfdid="w68" CssClass="TitDecl"></asp:Label></TD><TD style="WIDTH: 97px; TEXT-ALIGN: left" __designer:dtid="1125994396123172">&nbsp;<asp:Label id="AGravable" runat="server" Width="61px" __designer:dtid="1125994396123173" __designer:wfdid="w69" CssClass="TitDecl"></asp:Label></TD><TD style="WIDTH: 8px" __designer:dtid="1125994396123174"></TD><TD style="WIDTH: 100px" class="TDNegroTexto" __designer:dtid="1125994396123176"><asp:Label id="LbPGravable" runat="server" Width="133px" Font-Bold="True" Text="PERIODO GRAVABLE" __designer:dtid="1125994396123177" __designer:wfdid="w71" CssClass="TitDecl"></asp:Label></TD><TD style="WIDTH: 100px; TEXT-ALIGN: left" __designer:dtid="1125994396123178">&nbsp;<asp:Label id="PGravable" runat="server" Width="60px" __designer:dtid="1125994396123179" __designer:wfdid="w72" CssClass="TitDecl"></asp:Label></TD><TD style="WIDTH: 100px; TEXT-ALIGN: left"></TD><TD style="WIDTH: 100px; TEXT-ALIGN: left"></TD></TR><TR><TD style="WIDTH: 6px"></TD><TD style="TEXT-ALIGN: left" colSpan=2><asp:Label id="Label9" runat="server" Font-Bold="true" Text="N� Formulario que Corrige" __designer:dtid="1688944349544509" __designer:wfdid="w1" CssClass="TitDecl"></asp:Label></TD><TD style="WIDTH: 8px"></TD><TD style="WIDTH: 100px" class="TDNegroTexto"><asp:Label id="TxtDecCorrige" runat="server" Width="86px" __designer:dtid="1688944349544511" __designer:wfdid="w2" CssClass="TitDecl"></asp:Label></TD><TD style="WIDTH: 100px; TEXT-ALIGN: left"></TD><TD style="WIDTH: 100px; TEXT-ALIGN: left"></TD><TD style="WIDTH: 100px; TEXT-ALIGN: left"></TD></TR></TBODY></TABLE><asp:ObjectDataSource id="ObjProc" runat="server" __designer:dtid="2251799813685254" TypeName="Procesos" SelectMethod="GetLCAritmetica" OldValuesParameterFormatString="original_{0}" __designer:wfdid="w78"><SelectParameters __designer:dtid="2251799813685255">
<asp:ControlParameter ControlID="HdDCOD" PropertyName="Value" Name="DCOD"></asp:ControlParameter>
</SelectParameters>
</asp:ObjectDataSource> </TD></TR></TBODY></TABLE><BR /><asp:DataList id="DataList1" runat="server" ForeColor="#333333" DataSourceID="ObjProc" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" OnItemDataBound="DataList1_ItemDataBound" CellPadding="4">
<FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></FooterStyle>

<AlternatingItemStyle BackColor="White" ForeColor="#284775"></AlternatingItemStyle>

<ItemStyle BackColor="#F7F6F3" ForeColor="#333333"></ItemStyle>

<SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333"></SelectedItemStyle>
<HeaderTemplate>
<TABLE><TBODY><TR>
<TD style="WIDTH: 20px">C�digo</TD><TD style="WIDTH: 300px">Impuesto</TD><TD style="WIDTH: 100px">Base Gravable</TD><TD style="WIDTH: 50px">Tarifa</TD>
<TD style="WIDTH: 100px">Valor Impuesto</TD>
<TD style="WIDTH: 100px">Valor Correcci�n</TD>
</TR></TBODY></TABLE>
</HeaderTemplate>

<HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></HeaderStyle>
<ItemTemplate>
<TABLE><TBODY><TR><asp:HiddenField id="HdCodi" runat="server" __designer:wfdid="w1" value='<%#(DataBinder.Eval(Container.DataItem, "code_CODI"))%>'></asp:HiddenField><asp:HiddenField id="HdIsVb" runat="server" __designer:wfdid="w2" value='<%#(DataBinder.Eval(Container.DataItem, "code_ISVB"))%>'></asp:HiddenField><asp:HiddenField id="HdTICO" runat="server" __designer:wfdid="w3" value='<%#(DataBinder.Eval(Container.DataItem, "code_TICO"))%>'></asp:HiddenField><asp:HiddenField id="HdCimp" runat="server" __designer:wfdid="w4" value='<%#(DataBinder.Eval(Container.DataItem, "code_IMPTO"))%>'></asp:HiddenField><asp:HiddenField id="HdSeco" runat="server" __designer:wfdid="w5" value='<%#(DataBinder.Eval(Container.DataItem, "code_SECO"))%>'></asp:HiddenField><asp:HiddenField id="HdTMOV" runat="server" __designer:wfdid="w6" value='<%#(DataBinder.Eval(Container.DataItem, "code_TMOV"))%>'></asp:HiddenField><asp:HiddenField id="HdCART" runat="server" __designer:wfdid="w7" value='<%#(DataBinder.Eval(Container.DataItem, "code_CART"))%>'></asp:HiddenField><asp:HiddenField id="HdCCAR" runat="server" __designer:wfdid="w8" value='<%#(DataBinder.Eval(Container.DataItem, "code_CCAR"))%>'></asp:HiddenField><asp:HiddenField id="HdSum" runat="server" __designer:wfdid="w9" value='<%#(DataBinder.Eval(Container.DataItem, "code_SUM"))%>'></asp:HiddenField><asp:HiddenField id="HdIMPTO" runat="server" __designer:wfdid="w10" value='<%#(DataBinder.Eval(Container.DataItem, "code_IMPTO"))%>'></asp:HiddenField>
<asp:HiddenField id="HdTari" runat="server" __designer:wfdid="w11" value='<%#(DataBinder.Eval(Container.DataItem, "code_TARI"))%>'></asp:HiddenField>

<asp:HiddenField id="HdCTAR" runat="server" __designer:wfdid="w13" value='<%#(DataBinder.Eval(Container.DataItem, "CODE_CTAR"))%>'></asp:HiddenField><TD style="WIDTH: 20px; HEIGHT: 23px"><asp:Label id="Label1" runat="server" Text='<%# Bind("code_Codi") %>' __designer:wfdid="w14"></asp:Label></TD><TD style="WIDTH: 300px; HEIGHT: 23px"><asp:Label id="LbNomImp" runat="server" Text='<%# Bind("code_Nomb") %>' __designer:wfdid="w15"></asp:Label></TD><TD style="WIDTH: 100px; HEIGHT: 23px">
<ew:numericbox id="TxtValBas" runat="server" text=<%#(DataBinder.Eval(Container.DataItem, "code_vaba"))%> ReadOnly=true autoformatcurrency="True" cssclass="TxtNumLb" decimalsign="," groupingseparator="." enabled='<%#IIF(DataBinder.Eval(Container.DataItem, "code_ISVB")="S",True,False)%>'></ew:numericbox> </TD><TD style="WIDTH: 50px; HEIGHT: 23px">

<asp:TextBox id="TxtTari" runat="server" Width="33px" Text='<%# Bind("Code_Tari") %>' __designer:wfdid="w17" enabled='<%#IIF(DataBinder.Eval(Container.DataItem, "code_ISVB")="S",True,False)%>' cssclass="TxtNumLb"></asp:TextBox>

</TD>
<TD style="WIDTH: 100px; HEIGHT: 23px" align=right>
<ew:numericbox id="TxtVD" runat="server"  Text='<%#(DataBinder.Eval(Container.DataItem, "code_vade"))%>' ReadOnly="true"  __designer:wfdid="w18" autoformatcurrency="True" cssclass="TxtNumLb" decimalsign="," groupingseparator="." ></ew:numericbox> 
</TD>
<TD style="WIDTH: 100px; HEIGHT: 23px" align=right>
<ew:numericbox id="TxtR" runat="server" Text='<%# Redondear(DataBinder.Eval(Container.DataItem, "code_vaba")*DataBinder.Eval(Container.DataItem, "code_tari"))%>' autoformatcurrency="True" cssclass="TxtNumLb" decimalsign="," groupingseparator="."></ew:numericbox> 
</TD>
</TR></TBODY></TABLE>
</ItemTemplate>
</asp:DataList>&nbsp; 
</contenttemplate>
    </asp:UpdatePanel><asp:HiddenField ID="HdTAG" runat="server" />
        <asp:Button ID="BtnGuardar" runat="server" Text="Guardar" />
        <asp:HiddenField ID="HdCDec" runat="server" />
        <asp:HiddenField ID="HdFode" runat="server" />
        <asp:HiddenField ID="HdFecLim" runat="server" />
        <asp:ObjectDataSource ID="ObjClaseDec" runat="server" OldValuesParameterFormatString="original_{0}"
            SelectMethod="GetRecords" TypeName="Cargar_ClaseDec"></asp:ObjectDataSource><asp:HiddenField ID="HdDCOD" runat="server" />
    <br />
    <br />
    </div>
    
</asp:Content>

