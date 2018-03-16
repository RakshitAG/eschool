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

public partial class page_sal_rule : System.Web.UI.Page
{
    datacon dc = new datacon();
    string s;
    int i;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack )
        {
            DataSet ds = new DataSet();
            s = "select post from ptable";
            ds = dc.getdata(s);
            for (i = 0; i < ds.Tables[0].Rows.Count; i++)
                DropDownList1.Items.Add(ds.Tables[0].Rows[i][0].ToString());

           DropDownList1.SelectedIndex = 0;
        }

        fillgrid();
    }
    void fillgrid()
    {
        DataSet ds1 = new DataSet();
        s = "select * from salaryrules";
        ds1 = dc.getdata(s);
        GridView1.DataSource = ds1.Tables[0];
        GridView1.DataBind();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        s = "insert into salaryrules values('" + TextBox1.Text + "','" + DropDownList1 .SelectedItem  + "'," + TextBox2.Text + ")";
        dc.setdata(s);
        TextBox1.Text = "";
        TextBox2.Text = "";
        DropDownList1.SelectedIndex = 0;
        fillgrid();
        TextBox1.Focus();
        
    }
}
