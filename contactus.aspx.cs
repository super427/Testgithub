using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.Net.Mail;
using System.Text;


public partial class contactus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSend_Click(object sender, EventArgs e)
    {
        register obj = new register();
        obj.sendmail(txtname.Text, txtmail.Text, txtmsg.Text);
        MailMessage mm1 = new MailMessage();
        StringBuilder strb = new StringBuilder();
        strb.Append("  <div style='width:800px;margin:0 auto; border:solid 1px #ccc;'><center> <span style='color:#87a310;font-style:italic;font-weight:bold;'>Hi, I Visited Your site Dream Castle.<span><br /><hr /></center><center><table border='1' style='border-color:#87a310;'><tr><th> Name:</th><td>" + txtname.Text + "</td></tr><tr><th> Email:</th><td>" + txtmail.Text + "</td></tr><tr><th>Message:</th><td>" + txtmsg.Text + "</td></tr></table></center></span></center></div>");
        mm1.IsBodyHtml = true;
        mm1.From = new MailAddress("rinkudhiman33@gmail.com", "Admin");
        mm1.To.Add(new MailAddress(txtmail.Text));
        mm1.Subject = "Visiting Site";
        mm1.Body = strb.ToString();
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.Port = 587;
        smtp.EnableSsl = true;
        smtp.Credentials = new NetworkCredential("rinkudhiman33@gmail.com", "hello");
        smtp.Send(mm1);

        Response.Write("message send");
        txtmail.Text = " ";
        txtmsg.Text = " ";
        txtname.Text = " ";

    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        txtmail.Text = " ";
        txtmsg.Text = " ";
        txtname.Text = " ";
    }
}