Imports System.Data.SqlClient

Public Class Prestamos
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Panel1.Visible = True
        Panel2.Visible = False

    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList1.SelectedIndexChanged
        If DropDownList1.SelectedValue = "" Then
            Label6.Text = "⚠️ Debes seleccionar un alumno."
            Label6.ForeColor = Drawing.Color.Red
            Exit Sub
        End If

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Try
            Dim fechaEntrega As Date = Date.Parse(TextBox1.Text)
            Dim fechaHoy As Date = Date.Today

            If fechaEntrega <= fechaHoy Then
                Label6.Text = "❌ Error: La fecha de devolución debe ser posterior a hoy."
                Label6.ForeColor = Drawing.Color.Red
                Exit Sub
            End If

            Dim connStr As String = ConfigurationManager.ConnectionStrings("BIBLIOTECAESCOLARConnectionString").ToString()
            Using conn As New SqlConnection(connStr)
                Dim cmd As New SqlCommand("SPI_PRESTAMOS", conn)
                cmd.CommandType = CommandType.StoredProcedure

                cmd.Parameters.AddWithValue("@MATRICULA", DropDownList1.SelectedValue)
                cmd.Parameters.AddWithValue("@IDLIBRO", DropDownList2.SelectedValue)
                cmd.Parameters.AddWithValue("@FECHAPRESTAMO", fechaHoy)
                cmd.Parameters.AddWithValue("@FECHADEVOLUCION", fechaEntrega)
                cmd.Parameters.AddWithValue("@ESTADO", "PRESTADO")

                conn.Open()
                cmd.ExecuteNonQuery()
                LimpiarControles()
                Label6.Text = "✅ Préstamo registrado exitosamente."
                Label6.ForeColor = Drawing.Color.Green
            End Using

        Catch ex As Exception
            Label6.Text = "❌ Error al registrar: " & ex.Message
            Label6.ForeColor = Drawing.Color.Red
        End Try

    End Sub
    Private Sub LimpiarControles()
        ' Limpiar los TextBox
        TextBox1.Text = ""           ' Fecha de devolución (o el que tengas)

        ' Reiniciar los DropDownList
        DropDownList1.ClearSelection()
        DropDownList2.ClearSelection()

        ' (Opcional) Limpiar mensajes
        Label6.Text = ""
    End Sub

    Protected Sub DropDownList2_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList2.SelectedIndexChanged

    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Panel1.Visible = False
        Panel2.Visible = True
    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Panel1.Visible = True
        Panel2.Visible = False
    End Sub
End Class