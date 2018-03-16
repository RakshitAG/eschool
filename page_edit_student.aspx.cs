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

public partial class page_edit_student : System.Web.UI.Page
{
    datacon dc = new datacon();
    string s;
    int i;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            clearvalues();
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        s = "update student set mno='" + TextBox2.Text + "' where regno='" + TextBox1.Text + "'";
        dc.setdata(s);
        TextBox2.Text = "";
        Label9.Text = "";
        DataSet ds = new DataSet();
        s = "select * from student where regno='" + TextBox1.Text + "' order by syear desc";
        ds = dc.getdata(s);
        fillvalues(ds);

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();
        s = "select * from student where regno='" + TextBox1.Text + "' order by syear desc";
        ds = dc.getdata(s);
        
        if (ds.Tables[0].Rows.Count != 0)
        {
            fillvalues(ds);
        }
        else
        {
            clearvalues();
            Label9.Text = "Record Not Found";
        }
    }
    void fillvalues(DataSet ds)
    {
        Label9.Text = "";
            Label1.Text = ds.Tables[0].Rows[0][1].ToString();
            Label2.Text = ds.Tables[0].Rows[0][2].ToString();
            Label3.Text = ds.Tables[0].Rows[0][3].ToString() + " , " + ds.Tables[0].Rows[0][4].ToString() + " , " + ds.Tables[0].Rows[0][5].ToString();
            Label4.Text = ds.Tables[0].Rows[0][6].ToString();
            Label5.Text = ds.Tables[0].Rows[0][7].ToString();
            Label6.Text = ds.Tables[0].Rows[0][8].ToString();
            Label7.Text = ds.Tables[0].Rows[0][9].ToString();
            Label8.Text = ds.Tables[0].Rows[0][10].ToString();
    }
    void clearvalues()
    {
        Label1.Text = "";
        Label2.Text = "";
        Label3.Text = "";
        Label4.Text = "";
        Label5.Text = "";
        Label6.Text = "";
        Label7.Text = "";
        Label8.Text = "";

    }
}
