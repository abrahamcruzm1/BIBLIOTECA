<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Alumnos.aspx.vb" Inherits="BIBLIOTECA.Alumnos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <strong>
        <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Text="ALUMNADO"></asp:Label>
        </strong>
        <br />
    </p>
    <asp:Panel ID="Panel1" runat="server" Height="308px">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="MATRICULA" DataSourceID="SqlDataSource1" PageSize="8" Width="956px" AllowCustomPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="MATRICULA" HeaderText="MATRICULA" ReadOnly="True" SortExpression="MATRICULA" />
                <asp:BoundField DataField="NOMBRE" HeaderText="NOMBRE" SortExpression="NOMBRE" />
                <asp:BoundField DataField="CARRERA" HeaderText="CARRERA" SortExpression="CARRERA" />
                <asp:BoundField DataField="TELEFONO" HeaderText="TELEFONO" SortExpression="TELEFONO" />
                <asp:BoundField DataField="CORREO" HeaderText="CORREO" SortExpression="CORREO" />
                <asp:CommandField ShowEditButton="True" />

                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="lkEliminar" runat="server"
                            Text="Eliminar"
                            CommandName="Delete"
                            OnClientClick="return confirm('¿Desea eliminar el registro?');"
                            ForeColor="Red" />
                    </ItemTemplate>
                </asp:TemplateField>


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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BIBLIOTECAESCOLARConnectionString %>" SelectCommand="SPS_ALUMNOS" SelectCommandType="StoredProcedure" DeleteCommand="SPD_ALUMNOS" DeleteCommandType="StoredProcedure" InsertCommand="SPI_ALUMNOS" InsertCommandType="StoredProcedure" UpdateCommand="SPU_ALUMNOS" UpdateCommandType="StoredProcedure">
            <DeleteParameters>
                <asp:Parameter Name="MATRICULA" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MATRICULA" Type="Int32" />
                <asp:Parameter Name="NOMBRE" Type="String" />
                <asp:Parameter Name="CARRERA" Type="String" />
                <asp:Parameter Name="TELEFONO" Type="String" />
                <asp:Parameter Name="CORREO" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="MATRICULA" Type="Int32" />
                <asp:Parameter Name="NOMBRE" Type="String" />
                <asp:Parameter Name="CARRERA" Type="String" />
                <asp:Parameter Name="TELEFONO" Type="String" />
                <asp:Parameter Name="CORREO" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Agregar Alumno" />
        <br />
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" Height="268px">
        <asp:Label ID="Label2" runat="server" Text="Agregar Alumnos" Font-Bold="True" Font-Italic="True" Font-Size="X-Large"></asp:Label>
        <br />
        <table class="w-100">
            <tr>
                <td style="height: 21px; width: 196px">MATRICULA :</td>
                <td style="height: 21px; width: 155px">
                    <asp:TextBox ID="TextBox1" runat="server" Width="147px"></asp:TextBox>
                </td>
                <td style="height: 21px"></td>
                <td style="height: 21px"></td>
                <td style="height: 21px"></td>
            </tr>
            <tr>
                <td style="width: 196px">NOMBRE :</td>
                <td style="width: 155px">
                    <asp:TextBox ID="TextBox2" runat="server" Width="147px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 196px">CARRERA :</td>
                <td style="width: 155px">
                    <asp:TextBox ID="TextBox3" runat="server" Width="147px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 196px">TELEFONO :</td>
                <td style="width: 155px">
                    <asp:TextBox ID="TextBox4" runat="server" Width="147px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 196px">CORREO :</td>
                <td style="width: 155px">
                    <asp:TextBox ID="TextBox5" runat="server" Width="147px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:Button ID="Button2" runat="server" Text="Agregar Registro" />
        <br />
        <asp:Label ID="Label3" runat="server"></asp:Label>
        <br />
        <asp:Button ID="Button3" runat="server" Text="Volver" />
        <br />
        <br />
    </asp:Panel>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
