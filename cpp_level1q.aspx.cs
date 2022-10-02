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


public partial class cpp_level1q : System.Web.UI.Page
{

    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        string Ques, a, b, c, d, Ans;
        Ques = TextBox1.Text;
        a = TextBox7.Text;
        b = TextBox3.Text;
        SqlCommand cmd = new SqlCommand("Insert into cpp_level1q(question,a,b,c,d,answer) values(@question,@a,@b,@c,@d,@answer)", cn);
        cmd.Parameters.AddWithValue("@question", (TextBox1.Text).ToString());
        //cmd.Parameters.AddWithValue("@a", (TextBox7.Text).ToString());
        //cmd.Parameters.AddWithValue("@b", (TextBox3.Text).ToString());
        cmd.Parameters.AddWithValue("@a",a);
        cmd.Parameters.AddWithValue("@b", b);

        cmd.Parameters.AddWithValue("@c", (TextBox4.Text).ToString());
        cmd.Parameters.AddWithValue("@d", (TextBox5.Text).ToString());
        cmd.Parameters.AddWithValue("@answer", (TextBox6.Text).ToString());
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("cpp_level1q.aspx");
    }
}