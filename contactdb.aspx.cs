using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System;
using System.Collections.Generic;

public partial class contactdb : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, System.EventArgs e)
    {
        cn.Open();
        SqlCommand cmd = new SqlCommand("Insert into dbcontact(Name,Email,Message) values(@Name,@Email,@Message)", cn);
        cmd.Parameters.AddWithValue("@Name",TextBox1.Text);
        cmd.Parameters.AddWithValue("@Email",TextBox2.Text);
        cmd.Parameters.AddWithValue("@Message",TextBox3.Text);
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("contactdb.aspx");
    }
}