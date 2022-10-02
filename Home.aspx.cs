using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Data;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        /*updatecounter();
        findView();*/
    }

   /* private void findView()
    {
        String mycon = "Data Source=(localdb)\v11.0; Initial Catalog=mind; Integrated Security=True";
        String myquery = "Select * from ViewCounter";
        SqlConnection con = new SqlConnection(mycon);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        Label1.Text = "Website View Counter : " + ds.Tables[0].Rows[0]["viewcount"].ToString();
        con.Close();
    }

    private void updatecounter()
    {
        String mycon = "Data Source=(localdb)\v11.0; Initial Catalog=mind; Integrated Security=True";
        String updatedata = "Update ViewCounter set viewcount=viewcount+1";
        SqlConnection con = new SqlConnection(mycon);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = updatedata;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
    }*/


}