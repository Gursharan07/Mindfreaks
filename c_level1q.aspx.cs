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


public partial class c_level1q : System.Web.UI.Page
{

    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        SqlCommand cmd = new SqlCommand("Insert into c_level1q(question,a,b,c,d,answer) values(@question,@a,@b,@c,@d,@answer)", cn);
        cmd.Parameters.AddWithValue("@question", TextBox8.Text);
        cmd.Parameters.AddWithValue("@a", TextBox2.Text);
        cmd.Parameters.AddWithValue("@b", TextBox3.Text);
        cmd.Parameters.AddWithValue("@c", TextBox4.Text);
        cmd.Parameters.AddWithValue("@d", TextBox7.Text);
        cmd.Parameters.AddWithValue("@answer", TextBox6.Text);
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("c_level1q.aspx");
    }
}