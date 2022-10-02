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


public partial class c_level3q : System.Web.UI.Page
{

    SqlConnection cn=new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, System.EventArgs e)
    {
        cn.Open();
        SqlCommand cmd = new SqlCommand("Insert into c_level3q(question,a,b,c,d,answer) values(@question,@a,@b,@c,@d,@answer)", cn);
        cmd.Parameters.AddWithValue("@question", Tb1.Text);
        cmd.Parameters.AddWithValue("@a", Tb2.Text);
        cmd.Parameters.AddWithValue("@b", Tb3.Text);
        cmd.Parameters.AddWithValue("@c", Tb4.Text);
        cmd.Parameters.AddWithValue("@d", Tb5.Text);
        cmd.Parameters.AddWithValue("@answer", Tb6.Text);
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("c_level3q.aspx");
    }
}
