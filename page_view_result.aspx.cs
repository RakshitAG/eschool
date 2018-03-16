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

public partial class page_view_result : System.Web.UI.Page
{
    datacon dc = new datacon();
    string s;
    int i;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();
        s = "select * from student where regno='" + TextBox1.Text + "'";
        ds = dc.getdata(s);

        if (ds.Tables[0].Rows.Count == 0)
        {
            Label1.Text = "Record Not Found";
            ddl1.Items.Clear();
        }
        else
        {
            ddl1.Items.Clear();
            Label1.Text = "";
            DataSet ds1 = new DataSet();
            s = "select sclass from student where regno='" + TextBox1.Text + "' and estatus='YES'";
            ds1 = dc.getdata(s);
            for (i = 0; i < ds1.Tables[0].Rows.Count; i++)
                ddl1.Items.Add(ds1.Tables[0].Rows[i][0].ToString());

            ddl1.SelectedIndex = 0;
        }
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Session["sclass"] = ddl1.SelectedItem;
        Session["regno"] = TextBox1.Text;
        Response.Redirect("display_marksheet.aspx");
    }
}
