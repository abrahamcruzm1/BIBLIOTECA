Public Class Alumnos
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Panel1.Visible = True
        Panel2.Visible = False
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Panel1.Visible = False
        Panel2.Visible = True
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Try
            Me.SqlDataSource1.InsertCommand = "SPI_ALUMNOS"
            Me.SqlDataSource1.InsertCommandType = SqlDataSourceCommandType.StoredProcedure
            Me.SqlDataSource1.InsertParameters.Clear()

            Me.SqlDataSource1.InsertParameters.Add("MATRICULA", Me.TextBox1.Text)
            Me.SqlDataSource1.InsertParameters.Add("NOMBRE", Me.TextBox2.Text)
            Me.SqlDataSource1.InsertParameters.Add("CARRERA", Me.TextBox3.Text)
            Me.SqlDataSource1.InsertParameters.Add("TELEFONO", Me.TextBox4.Text)
            Me.SqlDataSource1.InsertParameters.Add("CORREO", Me.TextBox5.Text)

            Me.SqlDataSource1.Insert()

            Me.Label3.Text = "✅ Alumno registrado correctamente."
            Me.Label3.ForeColor = Drawing.Color.Green

            LimpiarCamposLibro()

        Catch ex As Exception
            Me.Label3.Text = "❌ Error: " & ex.Message
            Me.Label3.ForeColor = Drawing.Color.Red
        End Try

        Panel1.Visible = False
        Panel2.Visible = True


    End Sub
    Private Sub LimpiarCamposLibro()
        TextBox1.Text = ""
        TextBox2.Text = ""
        TextBox3.Text = ""
        TextBox4.Text = ""
        TextBox5.Text = ""
    End Sub



    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged

    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Panel1.Visible = True
        Panel2.Visible = False
    End Sub
End Class