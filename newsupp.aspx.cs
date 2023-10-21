using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class newsupp : System.Web.UI.Page
{
    invent i = new invent();
    string s;
    protected void Page_Load(object sender, EventArgs e)
    {
        s = "select sid from suppliers order by sid desc";
        DataSet ds = new DataSet();
        ds = i.select(s);

        if (ds.Tables[0].Rows.Count == 0)
            Label1.Text = "1";
        else
            Label1.Text = Convert.ToString(Convert.ToInt32(ds.Tables[0].Rows[0][0].ToString()) + 1);

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        invent i = new invent();
        string s;

        s="insert into suppliers values("+Label1.Text+",'"+TextBox2.Text+"','"+TextBox3.Text+"')";

        i.command(s);

        
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox2.Focus();
        Label2.Text = "Record Inserted Successfully";
        
       ;


    }
}