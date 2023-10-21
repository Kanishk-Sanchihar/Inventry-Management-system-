using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class searchsuppaspx : System.Web.UI.Page
{
    invent i=new invent();
    string s;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        s = "select * from suppliers where sid=" + TextBox1.Text;
        DataSet ds = new DataSet();
        ds=i.select(s);

        if (ds.Tables[0].Rows.Count == 0)
        {
            Response.Write("<script>alert('Record Not Found')</script>");
            TextBox1.Text = "";
            TextBox1.Focus();
        }
        else

            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        

        
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}