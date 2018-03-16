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

public partial class list_student : System.Web.UI.Page
{
    datacon dc = new datacon();
    string s;
    int i;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataSet ds = new DataSet();
            s = "select distinct syear from student";
            ds = dc.getdata(s);
            for (i = 0; i < ds.Tables[0].Rows.Count; i++)
                ddl1.Items.Add(ds.Tables[0].Rows[i][0].ToString());

            ddl1.SelectedIndex = 0;
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();
        s = "select sclass from student where syear='" + ddl1.SelectedItem + "'";
        ds = dc.getdata(s);
        ddl2.Items.Clear();
        for (i = 0; i < ds.Tables[0].Rows.Count; i++)
            ddl2.Items.Add(ds.Tables[0].Rows[i][0].ToString());

        ddl2.SelectedIndex = 0;

    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();
        s = "select regno,sname,fname,address,city,state,mno,doj  from student where scode='" + Session["scode"] + "' and sclass='" + ddl2.SelectedItem + "' and syear='" + ddl1.SelectedItem + "'";
        ds = dc.getdata(s);
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
    }
}
