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
public partial class mcq : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    String str;
    int count;
    int c = 0;
    String str1;
  
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
        }
       
    }
    protected void countme()
    {
        int i;
      
        do
        {
            i = 1;
            count = count+i;
           
            i++;
        } while (i == 1);

        str = count.ToString();
        Label1.Text = str;
    }
    
    protected void DataList1_SelectedIndexChanged(object sender, System.EventArgs e)
    {

       }
    protected void Button2_Click(object sender, System.EventArgs e)
    {
       
     
    }

    protected void R1_CheckedChanged(object sender, EventArgs e)
    {
        RadioButton rs1 = (sender as RadioButton);
        if (rs1.Checked)
        {
            Label ans = (rs1.NamingContainer).FindControl("lblans") as Label;
            lblans.Text = ans.Text;
           TextBox1.Text= ans.Text;
           cn.Open();
           SqlCommand cmd = new SqlCommand("Select * from c_level1q where answer=@a", cn);
           cmd.Parameters.AddWithValue("@a", TextBox1.Text);
           SqlDataAdapter da = new SqlDataAdapter(cmd);
           DataSet ds = new DataSet();
           da.Fill(ds);
           cmd.ExecuteNonQuery();
           if (ds.Tables[0].Rows.Count > 0)
           {


               countme();
               error.Text = "answer is correct";
               /*Response.Redirect("finallevel.aspx");*/
           }
           else
           {
               error.Text = "Answer is Incorrect";
           }
           cn.Close();    

          
        }
    }
    protected void R2_CheckedChanged(object sender, EventArgs e)
    {
        RadioButton R2 = (sender as RadioButton);
        if (R2.Checked)
        {

            Label yo = (R2.NamingContainer).FindControl("lblans0") as Label;
            lblans.Text = yo.Text;
            TextBox1.Text = yo.Text;
            cn.Open();
            SqlCommand cmd = new SqlCommand("Select * from c_level1q where answer=@a", cn);
            cmd.Parameters.AddWithValue("@a", TextBox1.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            cmd.ExecuteNonQuery();
            if (ds.Tables[0].Rows.Count > 0)
            {
                countme();
                error.Text = "answer is correct";
               // Response.Redirect("finallevel.aspx");

            }
            else
            {
                error.Text = "Answer is Incorrect";
            }
            cn.Close();    
        
        }
    }
    protected void R3_CheckedChanged(object sender, EventArgs e)
    {

        RadioButton Rb3 = (sender as RadioButton);
        if (Rb3.Checked)
        {

            Label an = (Rb3.NamingContainer).FindControl("lblans1") as Label;
            lblans.Text = an.Text;
            TextBox1.Text = an.Text;
            cn.Open();
            SqlCommand cmd = new SqlCommand("Select * from c_level1q where answer=@a", cn);
            cmd.Parameters.AddWithValue("@a", TextBox1.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            cmd.ExecuteNonQuery();
            if (ds.Tables[0].Rows.Count > 0)
            {



                countme();
                error.Text = "answer is correct";
              //  Response.Redirect("finallevel.aspx");
            }
            else
            {
                error.Text = "Answer is Incorrect";
            }
            cn.Close();    
        

        }
    }
    protected void R4_CheckedChanged(object sender, EventArgs e)
    {
        RadioButton R4 = (sender as RadioButton);
        if (R4.Checked)
        {

            Label su = (R4.NamingContainer).FindControl("lblans2") as Label;
            lblans.Text = su.Text;
            TextBox1.Text = su.Text;
            cn.Open();
            SqlCommand cmd = new SqlCommand("Select * from c_level1q where answer=@a", cn);
            cmd.Parameters.AddWithValue("@a", TextBox1.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            cmd.ExecuteNonQuery();
            if (ds.Tables[0].Rows.Count > 0)
            {
                error.Text = "answer is correct";

                countme();
             //   Response.Redirect("finallevel.aspx");
            }
            else
            {
                error.Text = "Answer is Incorrect";
            }
            cn.Close();    
        

        }
    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void seconds_TextChanged(object sender, EventArgs e)
    {
       
         
    }
    public void submit()
    {
        if (count >= 10)
        {
            Session["name"] = Label1.Text;
            Response.Redirect("WebForm3.aspx");
        }
        else
        {
            Session["Uname"] = Label1.Text;
            Response.Redirect("splashmain.aspx");

        }
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {

        if (count >= 10)
        {
            Session["name"] = Label1.Text;
            Response.Redirect("WebForm3.aspx");
        }
        else
        {
           Session["Uname"] = Label1.Text;
            Response.Redirect("splashmain.aspx");

        }
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {

    }
    protected void Timer1_Tick1(object sender, EventArgs e)
    {
       // Label2.Text = DateTime.Now.ToString();
        submit();
    }
}