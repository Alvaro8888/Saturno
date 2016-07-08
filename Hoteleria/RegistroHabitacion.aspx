<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestraAdministrador.master" AutoEventWireup="true" CodeFile="RegistroHabitacion.aspx.cs" Inherits="RegistroHabitacion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <section class="row">
        <div class="col-md-6">
            <asp:panel id="ErrorPanel" runat="server" visible="false"
                cssclass="alert alert-danger" role="alert">
                Error al Guardar el tipo de Habitacion
            </asp:panel>

            <br /><br />
            <div class="form-group">
                <label>Numero Habitacion</label>
                <asp:textbox id="nombreTextBox" runat="server" cssclass="form-control"></asp:textbox>
                <asp:requiredfieldvalidator runat="server"
                    controltovalidate="nombreTextBox"
                    display="Dynamic"
                    forecolor="Red"
                    validationgroup="tipoHabitacion"
                    errormessage="Debe ingresar el nombre">
                </asp:requiredfieldvalidator>
            </div>
            <div>

                <asp:label runat="server" ID="ddlestado" text="Estado"></asp:label>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    
                    <asp:ListItem Text="No Disponible" value="1"/>
                    <asp:ListItem Text="Disponible" value="0"/>

                </asp:DropDownList>
              
            </div>

            <div class="form-group">
                <label>Costo</label>
                <asp:textbox id="apellido" runat="server" cssclass="form-control"></asp:textbox>
                <asp:requiredfieldvalidator runat="server"
                    controltovalidate="apellido"
                    display="Dynamic"
                    forecolor="Red"
                    validationgroup="tblClientes"
                    errormessage="Debe ingresar el apellido">
                </asp:requiredfieldvalidator>
            </div>

            <div class="form-group">
                <label>Descripcion</label>
                <asp:textbox id="Direccion" runat="server" cssclass="form-control"></asp:textbox>
                <asp:requiredfieldvalidator runat="server"
                    controltovalidate="Direccion"
                    display="Dynamic"
                    forecolor="Red"
                    validationgroup="tblClientes"
                    errormessage="Debe ingresar el Direccion">
                </asp:requiredfieldvalidator>
            </div>

         



            <div>

                <asp:label runat="server" text="Tipo Habitacion "></asp:label>
                <asp:dropdownlist id="tipo" runat="server" height="16px" width="145px" datasourceid="SqlDataSource2" datatextfield="sNombre" datavaluefield="lTipoHabitacion_iD" style="margin-left: 0px"></asp:dropdownlist>
                <asp:sqldatasource id="SqlDataSource2" runat="server" connectionstring="<%$ ConnectionStrings:DB_HotelConnectionString %>" selectcommand="SELECT [sNombre], [lTipoHabitacion_iD] FROM [Tbl_TipoHabitacion]"></asp:sqldatasource>
            </div>
          
             <div class="col-md-12">
                <asp:GridView ID="ClienteGridView" runat="server"
                    CssClass="table" GridLines="None"
                    AutoGenerateColumns="false"
                    OnRowCommand="ClienteGridView_RowCommand">
                    <Columns>
                        <asp:TemplateField HeaderText="Editar">
                            <ItemTemplate>
                                <asp:LinkButton ID="EditButton" runat="server" CommandName="Editar"
                                    CommandArgument='<%# Eval("HabitacionID") %>'>
                                <i class="glyphicon glyphicon-pencil"></i>
                            </asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Eliminar">
                            <ItemTemplate>
                                <asp:LinkButton ID="DeleteButton" runat="server" CommandName="Eliminar"
                                    CommandArgument='<%# Eval("HabitacionID") %>'>
                                <i class="glyphicon glyphicon-remove"></i>
                            </asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="NumeroHabitacion" HeaderText="Numero Habitacion" />
                        <asp:BoundField DataField="EstadoForDisplay" HeaderText="Estado" />
                        <asp:BoundField DataField="Costo" HeaderText="Costo" />
                        <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" />
                        <asp:BoundField DataField="TipoHabitacionFK" HeaderText="Tipo Habitacion" />
                    </Columns>

                </asp:GridView>
            </div>


            <br />


            <asp:linkbutton id="SaveButtonn" runat="server"
                cssclass="btn btn-primary"
                validationgroup="tipoHabitacion"
                onclick="SaveButtonn_Click">
                Guardar
            </asp:linkbutton>
            <asp:hyperlink runat="server" cssclass="btn"
                navigateurl="~/ListaTipoHabitacion.aspx">
                Cancelar
            </asp:hyperlink>

            <asp:hiddenfield id="TipoHabitacionIdHiddenField" runat="server"
                value="0" />

        </div>
    </section>

</asp:Content>

