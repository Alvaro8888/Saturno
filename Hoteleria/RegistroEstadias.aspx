<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestraAdministrador.master" AutoEventWireup="true" CodeFile="RegistroEstadias.aspx.cs" Inherits="RegistroEstadias" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="row">
        <div class="col-md-6">
            <div>
                <asp:Label ID="lblFechaEntrada" runat="server" Text="Fecha de Entrada"></asp:Label>
            </div>
            <div>
                <br />
                <br />
                <br />
                <br />
                <br />
                <asp:Calendar  runat="server" ID="Calendar2"></asp:Calendar>
                <asp:TextBox ID="Fecha_entrada" runat="server" />
            </div>
            <div>
                <asp:Label ID="lblFechaSalida" runat="server" Text="Fecha Final"></asp:Label>
            </div>
            <div>

                <asp:Calendar  runat="server" ID="Calendar1"></asp:Calendar>
                <asp:TextBox ID="Fecha_final" runat="server" />
            </div>
            <div>
                <asp:Label ID="lblCosto" runat="server" Text="Costo Total"></asp:Label>
            </div>
            <div>
                <asp:TextBox ID="txtCosto" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div>
                <asp:Label ID="lblObservacion" runat="server" Text="Observacion"></asp:Label>
            </div>
            <div>
                <asp:TextBox ID="txtObservacion" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div>
                <asp:Label ID="lblHabitacion" runat="server" Text="Habitacion"></asp:Label>
            </div>
            <div>
                <asp:DropDownList ID="ddlHabitacion" runat="server" DataSourceID="sdsHabitacion1" DataTextField="lNumeroHabitacion" DataValueField="lHabitacion_iD"></asp:DropDownList>

                <asp:SqlDataSource runat="server" ID="sdsHabitacion1" ConnectionString='<%$ ConnectionStrings:DB_HotelConnectionString %>' SelectCommand="SELECT * FROM [Tbl_Habitacion]" OnSelecting="sdsHabitacion1_Selecting"></asp:SqlDataSource>
            </div>
            <div>
                <asp:Label ID="lblAdultos" runat="server" Text="Cantidad Adulto"></asp:Label>
            </div>
            <div>
                <asp:TextBox ID="CantidadAdultos" runat="server" placeholder="Cantidad Adultos"/>

            </div>
            <div>
                <asp:Label ID="lblNinhos" runat="server" Text="Cantidad Niños"></asp:Label>
            </div>
            <div>
                <asp:TextBox ID="CantidadNinhos" runat="server" placeholder="Cantidad Niños"/>

            </div>
            <div>
                <asp:Label ID="lblCliente" runat="server" Text="Cliente"></asp:Label>
            </div>
            <div>
                <asp:DropDownList ID="ddlCliente" runat="server" DataSourceID="sdsCliente" DataTextField="sNombre" DataValueField="lCliente_iD"></asp:DropDownList>

                <asp:SqlDataSource runat="server" ID="sdsCliente" ConnectionString='<%$ ConnectionStrings:DB_HotelConnectionString %>' SelectCommand="SELECT [lCliente_iD], [sNombre] FROM [Tbl_Cliente]"></asp:SqlDataSource>
            </div>
            <asp:LinkButton ID="SaveButtonn" runat="server"
                CssClass="btn btn-primary"
                ValidationGroup="tipoHabitacion"
                OnClick="SaveButtonn_Click">
                Guardar
            </asp:LinkButton>
        </div>
    </section>
</asp:Content>