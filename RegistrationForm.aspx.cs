using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class RegistrationForm : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = ConfigurationManager.ConnectionStrings["swe"].ConnectionString;
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        if(!Page.IsPostBack)
        {
            getcountry();
        }
    }
    public void getcountry()
    {
        Country cn = new Country();
        DataSet ds = new DataSet();
        ds = cn.DisplayCountry(0);
        if(ds!=null)
        { 
            if(ds.Tables[0].Rows.Count >0)
            {
                ddlcountry.DataTextField = "Country_Name";
                ddlcountry.DataValueField = "Country_Id";
                ddlcountry.DataSource = ds;
                ddlcountry.DataBind();
            }
        }
        ListItem li = new ListItem();
        li.Text = "select any page";
        li.Value = "0";
        li.Selected = true;
        ddlcountry.Items.Add(li);


    }
    public void getstate()
    {
        State st = new State();
        DataSet ds = new DataSet();
        ds = st.DisplayState(Convert.ToInt32(ddlcountry.SelectedValue));
        if (ds.Tables[0].Rows.Count > 0)
        {
            ddlstate.DataTextField = "State_Name";
            ddlstate.DataValueField = "State_Id";
            ddlstate.DataSource = ds;
            ddlstate.DataBind();
        }
     }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Int32 roleid = 3;
        string status = "Active";
        string gender = "";
        if (radfemale.Checked == true)
        {
            gender = "Female";
        }
        else if (radMale.Checked == true)
        {
            gender = "Male";
        }

        register obj = new register();
        obj.insertuser(roleid, status,txtfname.Text, txtlname.Text,txtdob.Text, gender, txtcontno.Text, txtemail.Text, txtpwd.Text, txtaddress.Text, txtCity.Text, Convert.ToInt32(ddlstate.SelectedValue), Convert.ToInt32(ddlcountry.SelectedValue));
        clear();
     }

    protected void Button2_Click(object sender, EventArgs e)
{
    clear();
      
}
    public void clear()
    {
        txtfname.Text = "";
        txtlname.Text = "";
        txtdob.Text = "";
        txtemail.Text = "";
        txtaddress.Text = "";
        //ddlcountry.SelectedValue = "";
        txtCity.Text = "";
        txtcontno.Text = "";
        txtpwd.Text = "";
       // ddlstate.SelectedValue = "";
    }
    protected void ddlcountry_SelectedIndexChanged(object sender, EventArgs e)
    {
        getstate();
    }
}
