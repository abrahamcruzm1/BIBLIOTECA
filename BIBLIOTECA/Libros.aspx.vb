Public Class Libros
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Panel1.Visible = True
        Panel2.Visible = False
    End Sub

    Private Sub LimpiarCamposLibro()
        TextBox1.Text = ""
        TextBox2.Text = ""
        TextBox3.Text = ""
        TextBox4.Text = ""
        TextBox5.Text = ""
    End Sub





    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Panel1.Visible = False
        Panel2.Visible = True
    End Sub

    Protected Sub TextBox5_TextChanged(sender As Object, e As EventArgs) Handles TextBox5.TextChanged

    End Sub

    Protected Sub Button5_Click(sender As Object, e As EventArgs) Handles Button5.Click
        Try
            ' Configurar el SqlDataSource para ejecutar el procedimiento almacenado
            Me.SqlDataSource1.InsertCommand = "EXEC SPI_LIBROS @TITULO, @AUTOR, @CATEGORIA, @ANIO, @EXISTENCIAS"
            Me.SqlDataSource1.InsertParameters.Clear()

            ' Agregar parámetros
            Me.SqlDataSource1.InsertParameters.Add("TITULO", Me.TextBox1.Text)
            Me.SqlDataSource1.InsertParameters.Add("AUTOR", Me.TextBox2.Text)
            Me.SqlDataSource1.InsertParameters.Add("CATEGORIA", Me.TextBox3.Text)
            Me.SqlDataSource1.InsertParameters.Add("ANIO", Me.TextBox4.Text)
            Me.SqlDataSource1.InsertParameters.Add("EXISTENCIAS", Me.TextBox5.Text)

            ' Ejecutar el insert
            Me.SqlDataSource1.Insert()

            ' Mostrar mensaje de éxito
            Me.Label3.Text = "📚 Libro registrado correctamente."

            ' Limpiar campos (opcional)
            LimpiarCamposLibro()

        Catch ex As Exception
            ' Mostrar mensaje de error
            Me.Label3.Text = "❌ Error al registrar: " & ex.Message.ToString
        End Try
        Panel1.Visible = False
        Panel2.Visible = True
    End Sub

    Protected Sub Button6_Click(sender As Object, e As EventArgs) Handles Button6.Click
        Panel1.Visible = True
        Panel2.Visible = False
    End Sub

End Class