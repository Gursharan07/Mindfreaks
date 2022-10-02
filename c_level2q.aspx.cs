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


public partial class c_level2q : System.Web.UI.Page
{

    SqlConnection cn=new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, System.EventArgs e)
    {
        cn.Open();
        SqlCommand cmd = new SqlCommand("Insert into c_level2q(question,a,b,c,d,answer) values(@question,@a,@b,@c,@d,@answer)", cn);
        cmd.Parameters.AddWithValue("@question", TextBox1.Text);
        cmd.Parameters.AddWithValue("@a", T2.Text);
        cmd.Parameters.AddWithValue("@b", T3.Text);
        cmd.Parameters.AddWithValue("@c", T4.Text);
        cmd.Parameters.AddWithValue("@d", T5.Text);
        cmd.Parameters.AddWithValue("@answer", T6.Text);
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("c_level2q.aspx");
    }
}