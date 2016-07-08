<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestraAdministrador.master" AutoEventWireup="true" CodeFile="RegistroCliente.aspx.cs" Inherits="RegistroCliente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="row">
        <div class="col-md-6">
            <asp:Panel ID="ErrorPanel" runat="server" Visible="false"
                CssClass="alert alert-danger" role="alert">
                Error al Guardar el tipo de Habitacion
            </asp:Panel>

            <br />
            <br />
            <br />
            <br />
            <br />
            <div class="form-group">
                <label>Nombre</label>&nbsp;<asp:TextBox ID="nombreTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server"
                    ControlToValidate="nombreTextBox"
                    Display="Dynamic"
                    ForeColor="Red"
                    ValidationGroup="tipoHabitacion"
                    ErrorMessage="Debe ingresar el nombre">
                </asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
                <label>Apellido</label>
                <asp:TextBox ID="apellido" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server"
                    ControlToValidate="apellido"
                    Display="Dynamic"
                    ForeColor="Red"
                    ValidationGroup="tblClientes"
                    ErrorMessage="Debe ingresar el apellido">
                </asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
                <label>Direccion</label>
                <asp:TextBox ID="Direccion" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server"
                    ControlToValidate="Direccion"
                    Display="Dynamic"
                    ForeColor="Red"
                    ValidationGroup="tblClientes"
                    ErrorMessage="Debe ingresar el Direccion">
                </asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
                <label>Telefono</label>
                <asp:TextBox ID="Telefono" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server"
                    ControlToValidate="Telefono"
                    Display="Dynamic"
                    ForeColor="Red"
                    ValidationGroup="tblClientes"
                    ErrorMessage="Debe ingresar el Telefono ">
                </asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
                <label>Documentacion</label>
                <asp:TextBox ID="Documentacion" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server"
                    ControlToValidate="Documentacion"
                    Display="Dynamic"
                    ForeColor="Red"
                    ValidationGroup="tblClientes"
                    ErrorMessage="Debe ingresar el Documentacion">
                </asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <label>Pais</label><br />
                <asp:DropDownList id="Paises" runat="server" CssClass="form-control" ></asp:DropDownList>
                
            </div>

            <br />


            <asp:LinkButton ID="SaveButtonn" runat="server"
                CssClass="btn btn-primary"
                ValidationGroup="tipoHabitacion"
                OnClick="SaveButtonn_Click">
                Guardar
            </asp:LinkButton>
            <asp:HyperLink runat="server" CssClass="btn"
                NavigateUrl="~/ListaTipoHabitacion.aspx">
                Cancelar
            </asp:HyperLink>

            <asp:HiddenField ID="TipoHabitacionIdHiddenField" runat="server"
                Value="0" />

        </div>
    </section>
</asp:Content>

