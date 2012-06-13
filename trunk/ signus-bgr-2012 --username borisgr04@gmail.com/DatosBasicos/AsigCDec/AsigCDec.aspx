<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="AsigCDec.aspx.vb" Inherits="DatosBasicos_AsigCDec_AsigCDec" title="Asignación de Declaraciones a Agente Recaudador" %>
<%@ Register Src="../../CtrlUsr/Terceros/ConsultaTer.ascx" TagName="ConsultaTer" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="SampleContent" Runat="Server">
    <script type='text/javascript'>
  
  // Add click handlers for buttons to show and hide modal popup on pageLoad
       


   

    function cancelClick() {
        var label = $get('ctl00_SampleContent_LbRpt');
        label.innerHTML = 'You hit cancel in the Confirm dialog on ' + (new Date()).localeFormat("T") + '.';
    }
        // Add click handlers for buttons to show and hide modal popup on pageLoad

        
     
        
         function enviar(tdoc,ced,dv,rsocial,tip_ter)
        {
           if(tip_ter=='AR'){
              document.aspnetForm.<%=Me.Nit.ClientID%>.value=ced;
              document.aspnetForm.<%=Me.Agente.ClientID%>.value=rsocial;
              document.aspnetForm.<%=Me.dv.ClientID%>.value=dv;
              __doPostBack("<%= button2.ClientID %>","");
           }
          
           var modalPopupBehavior = $find('programmaticModalPopupBehavior');
           modalPopupBehavior.hide();
          
         }

    </script>
<div class="demoarea">
    <ajaxToolkit:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server" EnablePageMethods="true"
        EnableScriptGlobalization="True" EnableScriptLocalization="True">
    </ajaxToolkit:ToolkitScriptManager>
    <asp:Label ID="Tit" runat="server" CssClass="Titulo" Text="Asignación de Declaraciones a Agentes Recaudadores"></asp:Label><p>
        &nbsp;<asp:UpdatePanel id="UpdatePanel1" runat="server" UpdateMode="Conditional">
            <contenttemplate>
&nbsp; <asp:Label id="MsgResult" runat="server" Width="60px" Height="4px" __designer:wfdid="w8"></asp:Label>&nbsp;<BR />&nbsp; &nbsp;&nbsp; &nbsp; 
<TABLE style="WIDTH: 30%; HEIGHT: 50px">
<TBODY>
<TR onmouseover="Resaltar_On(this);" onmouseout="Resaltar_Off(this);">
<TD style="HEIGHT: 20px" colSpan=16>
<asp:Label id="Label10" runat="server" Font-Bold="True" __designer:dtid="844424930131982" Text="AGENTE RECAUDADOR" __designer:wfdid="w32"></asp:Label>
&nbsp; 
</TD>
</TR>
<TR onmouseover="Resaltar_On(this);" onmouseout="Resaltar_Off(this);">
<TD style="WIDTH: 90px; HEIGHT: 22px">&nbsp;
<asp:Label id="Label26" runat="server" Width="103px" Height="15px" Font-Bold="True" Text="NIT" CssClass="TitDecl" __designer:wfdid="w9"></asp:Label>
</TD>
<TD style="WIDTH: 34px; HEIGHT: 22px; TEXT-ALIGN: left">
<asp:Label id="Label25" runat="server" Width="45px" Font-Bold="True" Text="DV" CssClass="TitDecl" __designer:wfdid="w10">
</asp:Label>
</TD>
<TD style="WIDTH: 34px; HEIGHT: 22px; TEXT-ALIGN: left">
</TD>
<TD style="WIDTH: 65px; HEIGHT: 22px" colSpan=12>&nbsp;
<asp:Label id="Label20" runat="server" Width="198px" Font-Bold="True" Text="RAZON SOCIAL" CssClass="TitDecl" __designer:wfdid="w11"></asp:Label>
</TD>
<TD style="WIDTH: 3px; HEIGHT: 22px" colSpan=1></TD>
</TR>
<TR onmouseover="Resaltar_On(this);" onmouseout="Resaltar_Off(this);">
<TD style="WIDTH: 110px; HEIGHT: 11px; TEXT-ALIGN: right">
<asp:TextBox id="Nit" runat="server" Width="90px" Height="13px" __designer:wfdid="w12"></asp:TextBox>&nbsp; </TD><TD style="WIDTH: 34px; HEIGHT: 11px">-<asp:TextBox id="DV" runat="server" Width="20px" Height="13px" __designer:wfdid="w13" Enabled="False"></asp:TextBox></TD><TD style="WIDTH: 34px; HEIGHT: 11px"><asp:LinkButton id="BtnTipUs" onclick="BtnTipUs_Click" runat="server" __designer:dtid="844424930131983" __designer:wfdid="w1"> ...</asp:LinkButton></TD><TD style="WIDTH: 65px; HEIGHT: 11px" colSpan=12><asp:TextBox id="Agente" runat="server" Width="200px" Height="13px" __designer:wfdid="w14" Enabled="False"></asp:TextBox></TD><TD style="WIDTH: 3px; HEIGHT: 11px" colSpan=1><asp:RadioButton id="RdNit" runat="server" Width="58px" __designer:wfdid="w15" Checked="True" GroupName="Opcion"></asp:RadioButton> </TD></TR><TR onmouseover="Resaltar_On(this);" onmouseout="Resaltar_Off(this);"><TD style="WIDTH: 90px; HEIGHT: 11px; TEXT-ALIGN: left"><asp:Label id="Label1" runat="server" Width="100px" Font-Bold="True" Text="TIPO DE AGENTE" CssClass="TitDecl" __designer:wfdid="w16"></asp:Label></TD><TD style="HEIGHT: 11px" colSpan=14><asp:DropDownList id="CbTTcer" runat="server" Width="255px" __designer:wfdid="w31" DataValueField="TAG_COD" DataTextField="TAG_NOM" DataSourceID="ObjTTer"></asp:DropDownList></TD><TD style="WIDTH: 3px; HEIGHT: 11px" colSpan=1><asp:RadioButton id="RDtAg" runat="server" Width="60px" __designer:wfdid="w18" GroupName="Opcion"></asp:RadioButton></TD></TR><TR onmouseover="Resaltar_On(this);" onmouseout="Resaltar_Off(this);"><TD style="HEIGHT: 20px" colSpan=15>&nbsp; <asp:Button style="DISPLAY: none" id="Button2" onclick="Button2_Click" runat="server" Width="48px" Text="Button" __designer:wfdid="w20"></asp:Button></TD><TD style="WIDTH: 3px; HEIGHT: 20px" colSpan=1><asp:Button id="Button1" runat="server" Text="Guardar" __designer:wfdid="w21"></asp:Button></TD></TR><TR onmouseover="Resaltar_On(this);" onmouseout="Resaltar_Off(this);"><TD style="HEIGHT: 20px" colSpan=15>&nbsp; </TD><TD style="WIDTH: 3px; HEIGHT: 20px" colSpan=1></TD></TR></TBODY></TABLE><asp:ObjectDataSource id="ObjTTer" runat="server" __designer:wfdid="w22" OldValuesParameterFormatString="original_{0}" SelectMethod="GetRecords" TypeName="TTerc"></asp:ObjectDataSource> 
<asp:DataList id="DataList1" runat="server" __designer:dtid="562949953421325" __designer:wfdid="w23" DataSourceID="ObjClaseDec" OnItemDataBound="DataList1_ItemDataBound">
<HeaderTemplate __designer:dtid="562949953421326">
                <table __designer:dtid="562949953421327">
                    <tr __designer:dtid="562949953421328">
                        <td __designer:dtid="562949953421329" style="width: 476px; text-align: center">
                            CLASE DE DECLARACION</td>
                    </tr>
                </table>
            
</HeaderTemplate>
<HeaderStyle BackColor="Silver" BorderColor="Gray" Font-Bold="True" __designer:dtid="562949953421330"></HeaderStyle>
<ItemTemplate __designer:dtid="562949953421331">
<TABLE __designer:dtid="562949953421332"><TBODY><TR __designer:dtid="562949953421333"><TD style="WIDTH: 100px" __designer:dtid="562949953421334"><asp:Label id="Asg_Cod" runat="server" Width="51px" Text='<%# bind("CLD_COD") %>' __designer:dtid="562949953421335" __designer:wfdid="w25"></asp:Label></TD><TD style="WIDTH: 100px" __designer:dtid="562949953421336"><asp:Label id="Asg_Nom" runat="server" Width="219px" Text='<%# bind("CLD_NOM") %>' __designer:dtid="562949953421337" __designer:wfdid="w26"></asp:Label></TD> 
<td style="WIDTH: 100px">
    <asp:TextBox ID="Asg_FecIni" Width="87px"  runat="server" Text='<%# bind("TEDE_FINI", "{0:d}") %>'></asp:TextBox>
      <ajaxToolkit:CalendarExtender
       ID="cFecInicio" runat="server" TargetControlID="Asg_FecIni" 
       Format="dd/MM/yyyy" >
   </ajaxToolkit:CalendarExtender>
</td> 
<TD style="WIDTH: 100px" __designer:dtid="562949953421338"><asp:CheckBox id="ASg_est" runat="server" Width="77px" __designer:dtid="562949953421339" __designer:wfdid="w27"></asp:CheckBox></TD></TR></TBODY></TABLE> 
</ItemTemplate>
</asp:DataList> <asp:ObjectDataSource id="ObjClaseDec" runat="server" __designer:dtid="562949953421341" __designer:wfdid="w24" OldValuesParameterFormatString="original_{0}" SelectMethod="COnsultarAsig" TypeName="AsigCDec"><SelectParameters>
<asp:ControlParameter ControlID="Nit" PropertyName="Text" Name="TEDE_TNIT" Type="String"></asp:ControlParameter>
</SelectParameters>
</asp:ObjectDataSource> 
</contenttemplate>
            <triggers>
<asp:AsyncPostBackTrigger ControlID="BtnTipUs" EventName="Click"></asp:AsyncPostBackTrigger>
<asp:AsyncPostBackTrigger ControlID="Button2" EventName="Click"></asp:AsyncPostBackTrigger>
</triggers>
        </asp:UpdatePanel>&nbsp; &nbsp;&nbsp;
    </p>
    <p>
        &nbsp;&nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp;
        <asp:UpdatePanel id="UpdatePanel4" runat="server" UpdateMode="Conditional">
            <contenttemplate>
<!-- Mensaje de Salida--><asp:Button style="DISPLAY: none" id="hiddenTargetControlForModalPopup" runat="server"></asp:Button> <ajaxToolkit:ModalPopupExtender id="ModalPopup" runat="server" TargetControlID="hiddenTargetControlForModalPopup" RepositionMode="RepositionOnWindowScroll" PopupDragHandleControlID="programmaticPopupDragHandle" PopupControlID="programmaticPopup" DropShadow="True" BehaviorID="programmaticModalPopupBehavior" BackgroundCssClass="modalBackground">
            </ajaxToolkit:ModalPopupExtender>&nbsp; <asp:Panel id="programmaticPopup" runat="server" Width="625px" Height="229%" CssClass="ModalPanel2"><asp:Panel id="programmaticPopupDragHandle" runat="Server" Height="30px" CssClass="BarTitleModal2">
             <div style="padding-right: 5px; padding-left: 5px; padding-bottom: 5px; vertical-align: middle;
                 padding-top: 5px">
                 <div style="float: left">
                     Buscar Agente Recaudador
                 </div>
                 <div style="float: right">
                     <input id="hideModalPopupViaClientButton" type="button" value="X"  /></div>
             </div>
         </asp:Panel> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<BR />&nbsp; &nbsp; &nbsp;&nbsp; <uc1:ConsultaTer id="ConsultaTer" runat="server" Ret="AR" Tipo="AR"></uc1:ConsultaTer> <BR /><BR /><BR /></asp:Panel> 
</contenttemplate>
            <triggers>
<asp:AsyncPostBackTrigger ControlID="BtnTipUs" EventName="Click"></asp:AsyncPostBackTrigger>
</triggers>
        </asp:UpdatePanel>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />
        &nbsp;</p>

</div>
</asp:Content>

