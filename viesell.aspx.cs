using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class viesell : System.Web.UI.Page
{
    invent i = new invent();
    string s;

    protected void Page_Load(object sender, EventArgs e)
    {
       

         s = "select * from sell";

        
        DataSet ds = new DataSet();
        ds = i.select(s);

      

        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
