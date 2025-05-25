<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="index.aspx.vb" Inherits="BIBLIOTECA.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!-- Menú principal -->
    <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" StaticDisplayLevels="1"
        BackColor="#E0E0E0" Font-Bold="True" ForeColor="Black" OnMenuItemClick="Menu1_MenuItemClick">
        <Items>
            <asp:MenuItem Text="Home" Value="Home" />
            <asp:MenuItem Text="Libros" Value="Libros" />
            <asp:MenuItem Text="Alumnos" Value="Alumnos" />
            <asp:MenuItem Text="Préstamos" Value="Prestamos" />
        </Items>
    </asp:Menu>

    <br />

    <!-- Panel HOME -->
    <asp:Panel ID="PanelHome" runat="server" Visible="True">
        <h2>Bienvenido al Sistema de Gestión de Biblioteca</h2>
        <p>
            Este sistema fue desarrollado para facilitar la administración de los recursos de la biblioteca escolar.
            Está orientado a personal administrativo o bibliotecarios encargados del préstamo y registro de libros.
        </p>
        <p>
            A través de este sistema podrás:
            <ul>
                <li>Registrar nuevos libros y llevar el control de su existencia.</li>
                <li>Registrar alumnos que podrán hacer uso del servicio de préstamo.</li>
                <li>Gestionar los préstamos de libros, incluyendo fechas de devolución y estado.</li>
            </ul>
        </p>
        <p>
            Navega usando el menú superior para acceder a los diferentes módulos del sistema.
        </p>
    </asp:Panel>

    <!-- Panel LIBROS -->
    <asp:Panel ID="PanelLibros" runat="server" Visible="False">
        <h2>Gestión de Libros</h2>

        <!-- Panel para mostrar libros -->
        <asp:Panel ID="PanelLibrosMostrar" runat="server">
            <h3>Listado de libros</h3>
            <!-- Aquí irá el GridView para mostrar libros -->
        </asp:Panel>

        <!-- Panel para agregar/editar/eliminar libros -->
        <asp:Panel ID="PanelLibrosCRUD" runat="server">
            <h3>Formulario de registro y edición</h3>
            <!-- Aquí irá el formulario con TextBox y botones -->
        </asp:Panel>
    </asp:Panel>

    <!-- Panel ALUMNOS -->
    <asp:Panel ID="PanelAlumnos" runat="server" Visible="False">
        <h2>Gestión de Alumnos</h2>

        <asp:Panel ID="PanelAlumnosMostrar" runat="server">
            <h3>Listado de alumnos</h3>
            <!-- GridView para alumnos -->
        </asp:Panel>

        <asp:Panel ID="PanelAlumnosCRUD" runat="server">
            <h3>Formulario de registro y edición de alumnos</h3>
            <!-- Formulario de alumnos -->
        </asp:Panel>
    </asp:Panel>

    <!-- Panel PRESTAMOS -->
    <asp:Panel ID="PanelPrestamos" runat="server" Visible="False">
        <h2>Gestión de Préstamos</h2>

        <asp:Panel ID="PanelPrestamosMostrar" runat="server">
            <h3>Préstamos registrados</h3>
            <!-- GridView para préstamos -->
        </asp:Panel>

        <asp:Panel ID="PanelPrestamosCRUD" runat="server">
            <h3>Formulario para registrar o actualizar préstamos</h3>
            <!-- Formulario para nuevo préstamo -->
        </asp:Panel>
    </asp:Panel>

</asp:Content>
