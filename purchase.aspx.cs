using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class purchase : System.Web.UI.Page
{
    invent i = new invent();
    string s;

    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = DateTime.Now.ToShortDateString();
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //int quantity = Convert.ToInt32(TextBox2.Text);
        invent i = new invent();
        string s;
        

        s = "select * from register where iname ='" + TextBox1.Text+"'";
        DataSet ds = new DataSet();
        ds = i.select(s);
        s = "insert into purchase values (" + DropDownList1.Text + ",'" + TextBox1.Text + "'," + TextBox2.Text + ",'" + Label1.Text + "')";
        i.command(s);


        if (ds.Tables[0].Rows.Count == 0)
        {
            s = "insert into register values ('" + TextBox1.Text + "'," + TextBox2.Text + ")";
            i.command(s);
                      
        }

        else
        {
            s = "update register set quantity=quantity+" + TextBox2.Text + " where iname='" + TextBox1.Text + "'";
            i.command(s);

            

        }
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox1.Focus();

        Label2.Text = "Record inserted successfully";
    }
}