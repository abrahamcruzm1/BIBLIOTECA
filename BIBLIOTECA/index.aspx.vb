Public Class index
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        ' Puedes poner aquí lógica de carga inicial si es necesario
    End Sub

    Protected Sub Menu1_MenuItemClick(ByVal sender As Object, ByVal e As MenuEventArgs)
        ' Oculta todos los paneles primero
        PanelHome.Visible = False
        PanelLibros.Visible = False
        PanelAlumnos.Visible = False
        PanelPrestamos.Visible = False

        ' Muestra el panel correspondiente
        Select Case e.Item.Value
            Case "Home"
                PanelHome.Visible = True
            Case "Libros"
                PanelLibros.Visible = True
            Case "Alumnos"
                PanelAlumnos.Visible = True
            Case "Prestamos"
                PanelPrestamos.Visible = True
        End Select
    End Sub

End Class
