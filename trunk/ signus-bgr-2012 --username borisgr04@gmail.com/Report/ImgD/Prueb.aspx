<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Prueb.aspx.vb" Inherits="Report_ImgD_Prueb" title="Untitled Page" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a"
    Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SampleContent" Runat="Server">
    <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt"
        Height="400px" Width="400px">
        <LocalReport ReportPath="Report\ImgD\RptTerc.rdlc">
        </LocalReport>
    </rsweb:ReportViewer>
    <asp:Image ID="Image1" runat="server" ImageUrl="~/gen_img.jpg" Width="404px" />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Button" />
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
</asp:Content>

