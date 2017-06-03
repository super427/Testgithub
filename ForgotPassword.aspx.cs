using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ForgotPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        login log = new login();
        log.forgotpassword(txtemail.Text);
        lblmsg.Text = "Your Password has been sent on your Email";
        txtemail.Text = "";
       
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/userlogin.aspx");
    }
}