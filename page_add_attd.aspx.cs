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

public partial class page_add_attd : System.Web.UI.Page
{
    datacon dc = new datacon();
    string s;
    int i;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataSet ds = new DataSet();
            s = "Select distinct regno from student where scode='" + Session["scode"].ToString() + "'";
            ds = dc.getdata(s);

            for (i = 0; i < ds.Tables[0].Rows.Count; i++)
                ddl1.Items.Add(ds.Tables[0].Rows[i][0].ToString());

            ddl1.SelectedIndex = 0;
        }
    }
    protected void ddl1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();
        ddl2.Items.Clear();

        s = "select sname,sclass,syear from student where regno='" + ddl1.SelectedItem + "'";
        ds = dc.getdata(s);
        
        Label1.Text = ds.Tables[0].Rows[0][0].ToString();
        Label2.Text = ds.Tables[0].Rows[0][2].ToString();

        for(i=0;i<ds.Tables [0].Rows.Count ;i++)
            ddl2.Items .Add(ds.Tables[0].Rows[i][1].ToString());
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        s = "insert into attd values('" + ddl1.SelectedItem + "','" + ddl2.SelectedItem + "','" + Label2.Text + "'," + TextBox1.Text + "," + TextBox2.Text + ")";
        dc.setdata(s);
        ddl2.SelectedIndex = 0;
        Label1.Text = "";
        Label2.Text = "";
        TextBox1.Text = "";
        TextBox2.Text = "";
        ddl2.SelectedIndex = 0;
    }
}
