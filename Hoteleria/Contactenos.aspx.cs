using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Contactenos : System.Web.UI.Page
{



    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void botonguardar_Click(object sender, EventArgs e)
    {
        try
        {

            MailMessage msg = new MailMessage();
            msg.From = new MailAddress("hotelnur2016@gmail.com");
            msg.To.Add("hotelnur2016@gmail.com");
            msg.Subject = "hoteleria";
            msg.Body = 
            "<b> **************************************************************** </b> " + "<br/>" +
            "<b> *******************  Nuevo Comentario ************************** </b> " + "<br/>" +
            "<b> **************************************************************** </b> " + "<br/>" 
            +"<b> Nombre del Cliente:</b> " + Nombre.Text + "<br/>"
            + "<b/> Correo: </b> " + Correo.Text + "<br/>"
            + "<b> comentario</b> " + comments.Text;
            msg.IsBodyHtml = true;

            SmtpClient clinent = new SmtpClient("smtp.gmail.com", 587);
            clinent.EnableSsl = true;
            clinent.Credentials = new System.Net.NetworkCredential("hotelnur2016@gmail.com", "123456789jose");
            clinent.Send(msg);

            lbmensaje.ForeColor = System.Drawing.Color.Black;
            Nombre.Text = "";
            comments.Text = "";
            Correo.Text = "";
            lbmensaje.Text = " Gracias por contactarnos.... Enseguida le llega un mensaje a su correo";


        }
        catch (Exception ex)
        {
            lbmensaje.ForeColor = System.Drawing.Color.Blue;
            lbmensaje.ForeColor = System.Drawing.Color.Red;
            lbmensaje.Text = "hubo un error" + ex.Message;
        }
    }
}