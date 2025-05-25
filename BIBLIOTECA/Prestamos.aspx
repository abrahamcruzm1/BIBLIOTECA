<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Prestamos.aspx.vb" Inherits="BIBLIOTECA.Prestamos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <strong>
        <asp:Label ID="Label1" runat="server" style="font-size: large" Text="Control De Prestamos" Font-Bold="True" Font-Size="X-Large"></asp:Label>
        </strong>
    </p>
    <asp:Panel ID="Panel1" runat="server" Height="274px">
        <table class="w-100" style="width: 71%">
            <tr>
                <td style="width: 202px; height: 27px;">
                    <asp:Label ID="Label2" runat="server" Text="Matricula: "></asp:Label>
                </td>
                <td style="height: 27px">
                   <asp:DropDownList ID="DropDownList1" runat="server"
    DataSourceID="SqlDataSource1"
    DataTextField="NOMBRE"
    DataValueField="MATRICULA"
    AppendDataBoundItems="True">
    
    <asp:ListItem Text="-- Seleccione un alumno --" Value="" />
</asp:DropDownList>

                    <asp:Label ID="Label4" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 202px; height: 21px;">
                    <asp:Label ID="Label3" runat="server" Text="Libros: "></asp:Label>
                </td>
                <td style="height: 21px">
<asp:DropDownList ID="DropDownList2" runat="server"
    DataSourceID="SqlDataSource2"
    DataTextField="TITULO"
    DataValueField="IDLIBRO"
    AppendDataBoundItems="True"
    Width="200px">
    
    <asp:ListItem Text="-- Seleccione un libro --" Value="" />
</asp:DropDownList>

                </td>
            </tr>
            <tr>
                <td style="width: 202px; height: 31px;">Fecha De Devolucion</td>
                <td style="height: 31px">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <em>
                    <asp:Label ID="Label5" runat="server" Text="aaaa-mm-dd"></asp:Label>
                    </em></td>
            </tr>
            <tr>
                <td style="width: 202px">
                    <asp:Button ID="Button1" runat="server" Text="Registrar Prestamo" />
                </td>
                <td>
                    <asp:Label ID="Label6" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BIBLIOTECAESCOLARConnectionString %>" SelectCommand="SPS_ALUMNOS" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BIBLIOTECAESCOLARConnectionString %>" SelectCommand="SPS_LIBROS" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        <br />
        <asp:Button ID="Button2" runat="server" Text="Historial De Prestamos" Width="183px" />
    </asp:Panel>
    <p>
    </p>
    <asp:Panel ID="Panel2" runat="server" Height="322px">
        <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="X-Large" Text="HISTORIAL DE PRESTAMOS"></asp:Label>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="IDPRESTAMO" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" Width="945px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="FECHAPRESTAMO" HeaderText="FECHAPRESTAMO" SortExpression="FECHAPRESTAMO" />
                <asp:BoundField DataField="FECHADEVOLUCION" HeaderText="FECHADEVOLUCION" SortExpression="FECHADEVOLUCION" />
                <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" />
                <asp:BoundField DataField="NOMBREALUMNO" HeaderText="NOMBREALUMNO" SortExpression="NOMBREALUMNO" />
                <asp:BoundField DataField="TITULOLIBRO" HeaderText="TITULOLIBRO" SortExpression="TITULOLIBRO" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:BIBLIOTECAESCOLARConnectionString %>" SelectCommand="SPS_PRESTAMOS" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        <asp:Button ID="Button3" runat="server" style="height: 29px" Text="Volver" Width="183px" />
        <br />
    </asp:Panel>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
