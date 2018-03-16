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

public partial class page_login : System.Web.UI.Page
{
    datacon dc = new datacon();
    string s;
    int i;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if (RadioButton1.Checked == true)
            Response.Redirect("page_home_student.aspx");
        else if (RadioButton3 .Checked ==true && TextBox1 .Text =="admin" && TextBox2 .Text =="admin")
        {
            Response.Redirect("page_home_admin.aspx");
        }
        else
        {
            DataSet ds = new DataSet();
            s = "Select * from operator where ocode='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'";
            ds = dc.getdata(s);

            if (ds.Tables[0].Rows.Count != 0)
            {
                Session["ocode"] = TextBox1.Text;
                Session["scode"] = ds.Tables[0].Rows[0][11].ToString();
                Response.Redirect("page_home_operator.aspx");
            }
            else
            {
                TextBox1.Text = "";
                TextBox2.Text = "";
            }
        }
    }
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
    {

    }
}
