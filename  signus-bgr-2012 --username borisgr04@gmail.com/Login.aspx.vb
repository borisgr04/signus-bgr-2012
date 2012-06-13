
Partial Class Login
    Inherits PaginaComun
    Dim Vig As New Vigencias
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Context.Request.Browser.Adapters.Clear()
        Me.CmbVigencia.SelectedValue = Vig.GetActiva()
    End Sub

    Protected Sub cmdEnviar_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        'System.Threading.Thread.Sleep(10000)
        'If Me.TxtUsername.Text = "ADMIN" And Me.TxtClave.Text = "1234567890@" Then
        Dim u As String = Me.TxtUsername.Text.Trim
        Dim c As String = Me.TxtClave.Text.Trim

        If Membership.ValidateUser(u, c) = True Then
            Me.MsgModalPanel.Text = "Acceso Permitido :" + Now.ToLongTimeString
            Me.MsgModalPanel.ForeColor = Drawing.Color.Black
            Me.ImgRst.ImageUrl = "~/images/Ok.gif"
            Me.ModalPopup.Show()
            'Almacenar Vigencia Seleccionada
            Dim aCookie As New HttpCookie("DERWEB")
            aCookie.Expires = Now
            aCookie.Values("Vigencia") = UCase(Me.CmbVigencia.SelectedValue)
            Response.Cookies.Add(aCookie)

            FormsAuthentication.RedirectFromLoginPage(Me.TxtUsername.Text, False)
        Else
            Me.MsgModalPanel.Text = "Acceso Denegado : Usuario o Contre�a Inv�lidas"
            Me.MsgModalPanel.ForeColor = Drawing.Color.Black
            Me.MsgModalPanel.Font.Bold = False
            Me.ImgRst.ImageUrl = "~/images/Error.gif"
            Me.ModalPopup.Show()
        End If


        
    End Sub
End Class
