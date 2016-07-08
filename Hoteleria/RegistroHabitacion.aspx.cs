using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RegistroHabitacion : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            CargarLista();

        if (IsPostBack)
            return;
        string stringid = Request.QueryString["id"];
        if (string.IsNullOrEmpty(stringid))
            return;
        try
        {
            int cliente_id = Convert.ToInt32(stringid);
            tblHabitacion obj = HabitacionBLL.SelectById(cliente_id);
            nombreTextBox.Text = Convert.ToString(obj.NumeroHabitacion);
            DropDownList1.Text = Convert.ToString(obj.Estado);
            apellido.Text = Convert.ToString(obj.Costo);
            Direccion.Text = Convert.ToString(obj.Descripcion);
            tipo.Text = Convert.ToString(obj.TipoHabitacionFK);

            TipoHabitacionIdHiddenField.Value = stringid;
        }
        catch (Exception ex)
        {

        }

    }
    protected void SaveButtonn_Click(object sender, EventArgs e)
    {
        int cliente_id = Convert.ToInt32(TipoHabitacionIdHiddenField.Value);

        bool estado = (DropDownList1.SelectedValue == "0");
        if (cliente_id == 0)
        {

            HabitacionBLL.Insert(Convert.ToInt32(nombreTextBox.Text), estado, Convert.ToInt32(apellido.Text), Direccion.Text, Convert.ToInt32(tipo.SelectedValue));
            nombreTextBox.Text = "";
            apellido.Text = "";
            Direccion.Text = "";

        }
        else
        {
            HabitacionBLL.Update(Convert.ToInt32(nombreTextBox.Text), estado, Convert.ToInt32(apellido.Text), Direccion.Text, Convert.ToInt32(tipo.SelectedValue), Convert.ToInt32(cliente_id));

        }
        ClienteGridView.DataBind();
    }
    private void CargarLista()
    {
        try
        {
            List<tblHabitacion> cliente = HabitacionBLL.SelectAll();
            ClienteGridView.DataSource = cliente;
            ClienteGridView.DataBind();


        }
        catch (Exception ex)
        {

        }
    }
    protected void ClienteGridView_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Eliminar")
        {
            try
            {
                int cliente_id = Convert.ToInt32(e.CommandArgument);
                HabitacionBLL.Delete(cliente_id);
                CargarLista();
            }
            catch (Exception ex)
            {

            }
        }
        if (e.CommandName == "Editar")
        {
            Response.Redirect("~/RegistroHabitacion.aspx?id=" + e.CommandArgument.ToString());

        }
    }
}