using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class userlogin : System.Web.UI.Page
{
        protected void Page_Load(object sender, EventArgs e)
         {
            SqlConnection con =new SqlConnection();
        if(Page.IsPostBack==false)
        {
            txtemail.Text = "";
            txtpassword.Text = "";
        }
    }
    protected void btnlogin1_Click(object sender, EventArgs e)
    {
        login log = new login();
        Int32 b;
        b = log.checkuser(txtemail.Text, txtpassword.Text);
        if (b == 1)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = commonclass.connectionstring;
            commonclass.connection(con);
            SqlCommand cmd = new SqlCommand("getuser", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("emailid", SqlDbType.VarChar, (50)).Value = txtemail.Text;

            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                string roleid;
                roleid = Convert.ToString(dr["roleid"]);
                Session["userid"] = Convert.ToString(dr["userid"]);
                if (roleid == "3")
                {
                    Response.Redirect("~/Default.aspx");
                }
                else if (roleid == "2")
               {
                    Response.Redirect("~/OPTICIAN/MyAccount.aspx");
                }
                else
                {
                    Response.Redirect("~/ADMIN/MyAccount.aspx");
                } dr.Close();
                dr.Dispose();
            }
        }

        if (b == -1)
        {
            lblmsg.Text = "wrong user";
        }
        if (b == 2)
        {
            lblmsg.Text = "wrong pwd";
            txtemail.Text = "";
            txtpassword.Text = "";
        }
    }

    protected void btncancel_Click(object sender, EventArgs e)
    {
        txtemail.Text = "";
        txtpassword.Text = "";
        Response.Redirect("userlogin.aspx");
    }
 protected void lkforgot_Click(object sender, EventArgs e)
    {

    }
    protected void lkregister_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/UserMasterPage1.master/Registration.aspx");
    }
}