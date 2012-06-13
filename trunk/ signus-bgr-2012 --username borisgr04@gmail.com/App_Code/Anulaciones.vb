Imports Microsoft.VisualBasic
Imports System.Data
Imports System.Data.Common

Public Class Anulaciones
    Inherits BDDatos2
    Public NroAnulacion As String
    Public Function Insert(ByVal ANUL_TDAN As String, ByVal ANUL_TDOC As String, ByVal ANUL_NDOC As String, ByVal ANUL_OBSE As String) As String
        Me.Conectar()
        ComenzarTransaccion()
        Try
            'Me.querystring = "INSERT INTO ANULACIONES(ANUL_TDAN,ANUL_TDOC,ANUL_NDOC,ANUL_OBSE)VALUES(:ANUL_TDAN,:ANUL_TDOC,:ANUL_NDOC,:ANUL_OBSE)"
            querystring = "ANULAR_DOC"
            CrearComando(querystring, CommandType.StoredProcedure)
            Dim pReturn As DbParameter = AsignarParametroReturn(20)
            AsignarParametroCad("iANUL_TDAN", ANUL_TDAN)
            AsignarParametroCad("iANUL_TDOC", ANUL_TDOC)
            AsignarParametroCad("iANUL_NDOC", ANUL_NDOC)
            AsignarParametroCad("iANUL_OBSE", ANUL_OBSE)
            num_reg = EjecutarComando()
            NroAnulacion = pReturn.Value.ToString()
            Me.Msg = MsgOk + "<BR> Número de Filas Afectadas " + num_reg.ToString
            Me.lErrorG = False
            ConfirmarTransaccion()
        Catch ex As Exception
            CancelarTransaccion()
            Me.lErrorG = True
            Me.Msg = "Error de App:" + ex.Message
        Finally
            Me.Desconectar()
        End Try
        Return Msg

    End Function
End Class
