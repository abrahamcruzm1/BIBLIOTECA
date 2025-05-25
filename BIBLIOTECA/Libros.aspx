<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Libros.aspx.vb" Inherits="BIBLIOTECA.Libros" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
    &nbsp;</p>
<asp:Panel ID="Panel1" runat="server" Height="273px">
    <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="X-Large" Text="LIBROS ENLISTADOS"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IDLIBRO" DataSourceID="SqlDataSource1" PageSize="7" Width="865px" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" Height="103px" PageIndex="5">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="IDLIBRO" HeaderText="IDLIBRO" SortExpression="IDLIBRO" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="TITULO" HeaderText="TITULO" SortExpression="TITULO" />
            <asp:BoundField DataField="AUTOR" HeaderText="AUTOR" SortExpression="AUTOR" />
            <asp:BoundField DataField="CATEGORIA" HeaderText="CATEGORIA" SortExpression="CATEGORIA" />
            <asp:BoundField DataField="ANIO" HeaderText="AÑO" SortExpression="ANIO" />
            <asp:BoundField DataField="EXISTENCIAS" HeaderText="EXISTENCIAS" SortExpression="EXISTENCIAS" />
            <asp:TemplateField ShowHeader="False">
    <ItemTemplate>
        <asp:LinkButton ID="lkEliminar" runat="server" 
            Text="Eliminar" 
            CommandName="Delete"
            OnClientClick="return confirm('¿Desea eliminar el registro?');"
            ForeColor="Red" />
    </ItemTemplate>
</asp:TemplateField>

            <asp:CommandField ShowEditButton="True" />
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
    <p>
        <asp:Button ID="Button3" runat="server" Text="Agregar Libro" />
    </p>
    <p>
        &nbsp;</p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BIBLIOTECAESCOLARConnectionString %>" SelectCommand="SPS_LIBROS" SelectCommandType="StoredProcedure" DeleteCommand="SPD_LIBROS" DeleteCommandType="StoredProcedure" UpdateCommand="SPU_LIBROS" UpdateCommandType="StoredProcedure">
        <DeleteParameters>
            <asp:Parameter Name="IDLIBRO" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="IDLIBRO" Type="Int32" />
            <asp:Parameter Name="TITULO" Type="String" />
            <asp:Parameter Name="AUTOR" Type="String" />
            <asp:Parameter Name="CATEGORIA" Type="String" />
            <asp:Parameter Name="ANIO" Type="Int32" />
            <asp:Parameter Name="EXISTENCIAS" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
</asp:Panel>
<p>
</p>
    <asp:Panel ID="Panel2" runat="server" Height="319px" CssClass="float-start" Width="469px">
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="X-Large" Text="AGREGAR LIBROS"></asp:Label>
        <br />
        <br />
        <strong>
        <asp:Label ID="Label2" runat="server" Text="Titulo:"></asp:Label>
        </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </strong>
        <br />
        <strong>
        <asp:Label ID="Label5" runat="server" Text="Categoria: "></asp:Label>
        </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </strong>
        <br />
        <strong>
        <asp:Label ID="Label6" runat="server" Text="Autor:"></asp:Label>
        </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <strong>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </strong>
        <br />
        <strong>
        <asp:Label ID="Label7" runat="server" Text="Año: "></asp:Label>
        </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <strong>
        <asp:TextBox ID="TextBox4" runat="server" CssClass="offset-sm-0"></asp:TextBox>
        </strong>
        <br />
        <strong>
        <asp:Label ID="Label8" runat="server" Text="Existencia: "></asp:Label>
        </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        </strong>
        <br />
        &nbsp;<asp:Button ID="Button5" runat="server" Text="Agreguar" />
        &nbsp;&nbsp;<br />&nbsp;<asp:Label ID="Label3" runat="server"></asp:Label>
        <br />
        &nbsp;<asp:Button ID="Button6" runat="server" Text="Regresar" Width="78px" />
        <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BIBLIOTECAESCOLARConnectionString %>" DeleteCommand="SPD_LIBROS" DeleteCommandType="StoredProcedure" InsertCommand="SPI_LIBROS" InsertCommandType="StoredProcedure" SelectCommand="SPS_LIBROS" SelectCommandType="StoredProcedure" UpdateCommand="SPU_LIBROS" UpdateCommandType="StoredProcedure">
            <DeleteParameters>
                <asp:Parameter Name="IDLIBRO" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="TITULO" Type="String" />
                <asp:Parameter Name="AUTOR" Type="String" />
                <asp:Parameter Name="CATEGORIA" Type="String" />
                <asp:Parameter Name="ANIO" Type="Int32" />
                <asp:Parameter Name="EXISTENCIAS" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="IDLIBRO" Type="Int32" />
                <asp:Parameter Name="TITULO" Type="String" />
                <asp:Parameter Name="AUTOR" Type="String" />
                <asp:Parameter Name="CATEGORIA" Type="String" />
                <asp:Parameter Name="ANIO" Type="Int32" />
                <asp:Parameter Name="EXISTENCIAS" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        &nbsp;</asp:Panel>
<p>
</p>
<p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</p>
<p>
&nbsp;&nbsp;
    </p>
<p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
<p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
</p>
</asp:Content>
