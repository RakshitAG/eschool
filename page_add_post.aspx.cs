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

public partial class page_add_post : System.Web.UI.Page
{
    datacon dc = new datacon();
    string s;
    int i;
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();
        s = "select post from ptable";
        ds = dc.getdata(s);
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        s = "insert into ptable values('" + TextBox1.Text + "')";
        dc.setdata(s);
        TextBox1.Text = "";
        TextBox1.Focus();
    }
}
