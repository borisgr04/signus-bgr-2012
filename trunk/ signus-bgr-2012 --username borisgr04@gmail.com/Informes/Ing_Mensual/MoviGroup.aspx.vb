Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls
Imports Microsoft.Reporting.WebForms
Imports AjaxControlToolkit
Imports system.data
Imports System.Collections.Generic
Partial Class Informes_MoviGroup
    Inherits PaginaComun

 

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Me.Opcion = Me.Tit.Text
        Me.SetTitulo()
        Me.MultiView1.ActiveViewIndex = 0
        If Not Me.IsPostBack Then
            Me.TFF.Text = String.Format("{0:d}", Now())
            Dim mes As Integer = Month(Now()) - 1
            Me.TFI.Text = (CStr(Day(Now())) + "/" + CStr(mes) + "/" + CStr(Year(Now())))
        End If
    End Sub
    Public Sub Cargar_Rpt()
        'Dim rptParam As ReportParameter = New ReportParameter("Titulo", Me.CMBCLADEC.SelectedItem.Text)
        'Dim rptParam1 = New ReportParameter("Ano_Grav", Me.CMBANO.SelectedItem.Text)
        'LIsta de Parametros
        'Dim paramList As New List(Of ReportParameter)
        'Agregar Parametro a Lista
        ' paramList.Add(rptParam)
        'paramList.Add(rptParam1)
        ' Actualizar Report
        'Rptview.LocalReport.SetParameters(paramList)

        Rptview.LocalReport.ReportPath = "Report\Consultas\RptMovIng.rdlc"
        Dim dtSource As ReportDataSource = New ReportDataSource("DtMovIn_MovIng", GetDatosP)
        Dim rptEntidad As New ReportDataSource("DtEntidad_ENTIDAD", Cargar_Logo())
        Rptview.LocalReport.DataSources.Clear()
        Rptview.LocalReport.DataSources.Add(dtSource)
        Rptview.LocalReport.DataSources.Add(rptEntidad)
        Rptview.LocalReport.Refresh()
        'Me.RenderReport(Me.ReportViewer1.LocalReport)

    End Sub
    Protected Sub BtnBuscar_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles BtnBuscar.Click
        Cargar_Rpt()
        Me.MultiView1.ActiveViewIndex = 0
    End Sub

    Function Filtrar() As String
        Dim cFiltro As String = ""
        If CBCLA.Checked = True Then
            Util.AddFiltro(cFiltro, "Mov_Cdec='" + CMBCLADEC.SelectedValue + "'")
        End If

        If CBFEC.Checked = True Then
            Util.AddFiltro(cFiltro, "Fec_Mov BetWeen to_date('" + TFI.Text + "','dd/mm/yyyy') And to_date('" + TFF.Text + "','dd/mm/yyyy')")
        End If

        If CBANO.Checked = True Then
            Util.AddFiltro(cFiltro, "Mov_Año = '" + CMBANO.SelectedValue + "'")
        End If

        If cbMes.Checked = True Then
            Util.AddFiltro(cFiltro, "Mov_Per = '" + CMBPER.SelectedValue + "'")
        End If

        If CBCTA.Checked = True Then
            Util.AddFiltro(cFiltro, "Pag_BaCo = '" + CMBBCO.SelectedValue + "'")
            Util.AddFiltro(cFiltro, "Pag_CTab = '" + CMBCTA.SelectedValue + "'")
        End If

        If CBCON.Checked = True Then
            Util.AddFiltro(cFiltro, "Mov_CCar = '" + CMBCON.SelectedValue + "'")
        End If
        'Me.MsgResult.Text = cFiltro
        Return cFiltro
    End Function
    Private Function GetDatosP() As DataTable


        Dim dt As DataTable = New DataTable
        Dim obj As Informes = New Informes(Me.CMBCLADEC.SelectedValue)


        dt = obj.Get_MovIng(Filtrar, Tipo_Grupo.SelectedValue)
        MsgResult.Text = Tipo_Grupo.SelectedValue
        If obj.lErrorG = True Then
            Me.MsgResult.Text = obj.Msg
        End If
        Return dt
    End Function
    Protected Overloads Function Cargar_Logo() As DataTable
        Dim ta As New DtEntidadTableAdapters.ENTIDADTableAdapter
        Dim dt As New DtEntidad.ENTIDADDataTable
        ta.Fill(dt)
        Dim row As DtEntidad.ENTIDADRow
        Dim Rut As String = Me.Img_Rpt

        For Each row In dt.Rows
            Dim fsArchivo As New IO.FileStream(Rut + row.ENT_LOGO, IO.FileMode.Open, IO.FileAccess.Read)
            Dim arregloBytes(fsArchivo.Length) As Byte
            fsArchivo.Read(arregloBytes, 0, fsArchivo.Length)
            fsArchivo.Close()
            row.ENT_IMG = arregloBytes
        Next
        Return dt
    End Function
End Class
