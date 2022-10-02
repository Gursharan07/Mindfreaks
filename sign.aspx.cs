using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sign : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string a = "incorrect password";
        if (TextBox1.Text == "Guru" && TextBox2.Text == "champ")
        {
            Session["Uname"] = TextBox1.Text;
            Response.Redirect("home_admin.aspx");
        }
        else
        {
            Label1.Text = "Invalid User name or password";
        }
    }
    
}