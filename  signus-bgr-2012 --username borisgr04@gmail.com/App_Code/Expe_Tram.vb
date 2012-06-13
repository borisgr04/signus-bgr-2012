Imports Microsoft.VisualBasic
Imports System.ComponentModel
Imports System.Data

Public Class Expe_Tram
    Inherits BDDatos2

    Public Function Insert(ByVal NumExpe As String, ByVal Tramite_Ant As String, ByVal Tramite_Act As String, _
                           ByVal numDocumento As String, ByVal observacion As String) As String

        Dim queryString As String = "NUEVO_EXPE_TRAM"
        Dim na As Integer

        Try
            Me.Conectar()
            ComenzarTransaccion()
            If lErrorG = False Then
                CrearComando(queryString, CommandType.StoredProcedure)
                AsignarParametroCad("P_TRAMITE_ANT", Tramite_Ant)
                AsignarParametroCad("P_TRAMITE_ACT", Tramite_Act)
                AsignarParametroCad("P_NUM_EXPE", NumExpe)
                AsignarParametroCad("P_NUM_DOC", numDocumento)
                AsignarParametroCad("P_OBSERVACION", observacion)
                AsignarParametroCad("P_USUARIO_AP", Membership.GetUser().UserName)
                na = EjecutarComando()
            Else
                lErrorG = True
            End If
            ConfirmarTransaccion()
            lErrorG = False
        Catch ex As Exception
            Msg = "Error de App: " + ex.Message
            CancelarTransaccion()
            lErrorG = True
        Finally
            Me.Desconectar()
        End Try

        Return Msg
    End Function

    Public Function UpdateDocumento(ByVal EXTR_PLAN As [Byte](), ByVal EXTR_DOC As [Byte](), ByVal EXTR_PDF As [Byte](), ByVal EXTR_ID As String) As String
        Dim na As Integer
        Me.Conectar()
        ComenzarTransaccion()
        Try
            Me.querystring = "UPDATE EXPE_TRAM SET EXTR_DOC = :EXTR_DOC, EXTR_PLAN = :EXTR_PLAN, EXTR_PDF = :EXTR_PDF WHERE EXTR_ID = :EXTR_ID"
            CrearComando(querystring)
            AsignarParametroBLOB(":EXTR_DOC", EXTR_DOC)
            AsignarParametroBLOB(":EXTR_PLAN", EXTR_PLAN)
            AsignarParametroBLOB(":EXTR_PDF", EXTR_PDF)
            AsignarParametroNumber(":EXTR_ID", EXTR_ID)
            na = EjecutarComando()
            Me.Msg = MsgOk + "<BR> Número de Filas Afectadas " + na.ToString
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

    Public Function UpdateDocumentoNull(ByVal EXTR_ID As String) As String
        Dim na As Integer
        Me.Conectar()
        ComenzarTransaccion()
        Try
            Me.querystring = "UPDATE EXPE_TRAM SET EXTR_DOC = NULL WHERE EXTR_ID = :EXTR_ID"
            CrearComando(querystring)
            AsignarParametroNumber(":EXTR_ID", EXTR_ID)
            na = EjecutarComando()
            Me.Msg = MsgOk + "<BR> Número de Filas Afectadas " + na.ToString
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

    Public Function UpdateDatos(ByVal EXTR_DATO1 As String, ByVal EXTR_ID As String) As String
        Dim na As Integer
        Me.Conectar()
        ComenzarTransaccion()
        Try
            Me.querystring = "UPDATE EXPE_TRAM SET EXTR_DATO1 = :EXTR_DATO1 WHERE EXTR_ID = :EXTR_ID"
            CrearComando(querystring)
            AsignarParametroCadena(":EXTR_DATO1", EXTR_DATO1)
            AsignarParametroCadena(":EXTR_ID", EXTR_ID)
            na = EjecutarComando()
            Me.Msg = MsgOk + "<BR> Número de Filas Afectadas " + na.ToString
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



    Public Function Delete(ByVal EXTR_ID As String, ByVal FECHA_ANULA As String, ByVal OBS_ANULA As String) As String

        Dim queryString As String = "ELIMINAR_EXPE_TRAM"
        Dim na As Integer

        Try
            Me.Conectar()
            ComenzarTransaccion()
            CrearComando(queryString, CommandType.StoredProcedure)
            AsignarParametroCad("P_EXTR_ID", EXTR_ID)
            AsignarParametroCad("P_FEC_ANULA", FECHA_ANULA)
            AsignarParametroCad("P_OBS_ANULA", OBS_ANULA)
            na = EjecutarComando()
            ConfirmarTransaccion()
            lErrorG = False
            Msg = "Se realizo el Proceso"
        Catch ex As Exception
            Msg = "Error de App: " + ex.Message
            CancelarTransaccion()
            lErrorG = True
        Finally
            Me.Desconectar()
        End Try

        Return Msg
    End Function

    <DataObjectMethodAttribute(DataObjectMethodType.Select, True)> _
    Public Function GetPorId(ByVal EXTR_ID As String) As DataTable
        Dim dataTb As New DataTable
        Me.Conectar()
        Me.querystring = "select * from EXPE_TRAM WHERE EXTR_ID = :EXTR_ID"
        CrearComando(querystring)
        AsignarParametroCadena(":EXTR_ID", EXTR_ID)
        dataTb = EjecutarConsultaDataTable()
        Me.Desconectar()
        Return dataTb
    End Function

    <DataObjectMethodAttribute(DataObjectMethodType.Select, True)> _
    Public Function GetPorNumExpe(ByVal numExpediente As String) As DataTable
        Dim dataTb As New DataTable
        Me.Conectar()
        Me.querystring = "select * from VEXPE_TRAM WHERE EXTR_NUME = :EXTR_NUME order by extr_id"
        CrearComando(querystring)
        AsignarParametroCadena(":EXTR_NUME", numExpediente)
        dataTb = EjecutarConsultaDataTable()
        Me.Desconectar()
        Return dataTb
    End Function

    <DataObjectMethodAttribute(DataObjectMethodType.Select, True)> _
    Public Function GetTramiteRelacion(ByVal tramiteDesde As String) As DataTable
        Dim dataTb As New DataTable
        Me.Conectar()
        Me.querystring = "SELECT * FROM VTRAMRELA WHERE TRRE_DESD =:TRRE_DESD"
        CrearComando(querystring)
        AsignarParametroCadena(":TRRE_DESD", tramiteDesde)
        dataTb = EjecutarConsultaDataTable()
        Me.Desconectar()

        Return dataTb
    End Function
End Class
