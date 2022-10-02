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


public partial class contactus : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void button_Click(object sender, EventArgs e)
    {

        cn.Open();
        SqlCommand cmd = new SqlCommand("Insert into dbcontact(Name,Email,Message) values(@Name,@Email,@Message)", cn);
        cmd.Parameters.AddWithValue("@Name", name.Text);
        cmd.Parameters.AddWithValue("@Email", email.Text);
        cmd.Parameters.AddWithValue("@Message", msg.Text);
        cmd.ExecuteNonQuery();
        cn.Close();
  
    }
    protected void email_TextChanged(object sender, System.EventArgs e)
    {

    }
}