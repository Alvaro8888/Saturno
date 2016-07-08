using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;

/// <summary>
/// Summary description for Enviar
/// </summary>
public class Enviar
{

    MailMessage mensaje = new MailMessage();
    SmtpClient stmp = new SmtpClient();
    public bool Enviarcorreo( string correo  ,string comentario)
    {
        try
        {
            mensaje.From = new MailAddress(correo);
            mensaje.To.Add(new MailAddress("ja.clavijo95@gmail.com"));
            mensaje.Body = comentario;
            mensaje.Subject = "Holeria";
            stmp.Host = "smtp.gmail.com";
            stmp.Port = 587;
        stmp.DeliveryMethod = SmtpDeliveryMethod.Network;
            stmp.EnableSsl = true;
            stmp.UseDefaultCredentials = true;
            stmp.Send(mensaje);


            return true;
        }
        catch(Exception e)
        {
            Console.WriteLine(e.StackTrace);
            return false;
        }
    }
}