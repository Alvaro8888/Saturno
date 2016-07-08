using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BotonReserva_Click(object sender, EventArgs e)
    {
        if (habitacionescom.SelectedItem.Text == "Simple") //ListItem
        {
            Response.Redirect("HabitacionSimple.aspx");
        }
        if (habitacionescom.SelectedItem.Text == "Doble")
        {
            Response.Redirect("HabitacionDoble.aspx");
        }
        if (habitacionescom.SelectedItem.Text == "Triple")
        {
            Response.Redirect("HabitacionTriple.aspx");
        }
        if (habitacionescom.SelectedItem.Text == "Suite")
        {
            Response.Redirect("HabitacionSuite.aspx");
        }
    }
}