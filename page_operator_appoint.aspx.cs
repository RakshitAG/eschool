using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class page_operator_appoint : System.Web.UI.Page
{
    datacon dc = new datacon();
    string s;
    int i;

    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox11.Text = DateTime.Now.Day + " - " + DateTime.Now.Month + " - " + DateTime.Now.Year;

        if (!IsPostBack)
        {
            DataSet ds = new DataSet();
            s = "select scode from school";
            ds = dc.getdata(s);
            for (i = 0; i < ds.Tables[0].Rows.Count; i++)
                ddl1.Items.Add(ds.Tables[0].Rows[i][0].ToString());

            ddl1.SelectedIndex = 0;
        }

        DataSet ds1 = new DataSet();
        s = "select ocode from operator order by ocode desc";
        ds1 = dc.getdata(s);
        if (ds1.Tables[0].Rows.Count == 0)
            TextBox1.Text = "10001";
        else
            TextBox1.Text = Convert.ToString(Convert.ToInt32(ds1.Tables[0].Rows[0][0].ToString()) + 1);   
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        s = "insert into operator values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "','" + ddl1.SelectedItem + "'," + TextBox12.Text + ",'" + TextBox13 .Text +"')";
        dc.setdata(s);

        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        TextBox9.Text = "";
        TextBox10.Text = "";        
        TextBox12.Text = "";        
        ddl1.SelectedIndex = 0;
        TextBox1.Text = Convert.ToString(Convert.ToInt32(TextBox1.Text) + 1);
    }
}
