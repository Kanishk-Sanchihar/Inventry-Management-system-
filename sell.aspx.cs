using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class sell : System.Web.UI.Page
{
    invent i = new invent();
    string s;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = DateTime.Now.ToShortDateString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        invent i = new invent();
        string s;

        s = "select * from register where iname='" + TextBox2.Text+"'";
        DataSet ds = new DataSet();
        ds = i.select(s);

        if (ds.Tables[0].Rows.Count == 0)
        
            {
             Response.Write("<script>alert('Item Not Found')</script>");
             TextBox1.Text = "";
             TextBox1.Focus();

            }


        else
        {
            int avail_qty=Convert.ToInt32(ds.Tables[0].Rows[0][1].ToString());
            int demand_qty = Convert.ToInt32(TextBox3.Text);

            if (avail_qty < demand_qty)
                Response.Write("<Script>alert('Insufficient Quantity')</script>");
            else
            {
                s = "insert into sell values (" + TextBox1.Text + ",'" + TextBox2.Text + "'," + TextBox3.Text + ",'" + Label2.Text + "')";
                i.command(s);

                s = "update register set quantity=quantity-" + TextBox3.Text + " where iname='" + TextBox2.Text + "'";
                Label1.Text = s;
                i.command(s);
            }
        }
          

        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
       

        TextBox1.Focus();
        Label1.Text = "Item Sell successfully";

       
        
    }
}