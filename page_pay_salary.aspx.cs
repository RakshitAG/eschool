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

public partial class page_pay_salary : System.Web.UI.Page
{
    datacon dc = new datacon();
    string s;
    int i;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataSet ds = new DataSet();
            Label1.Text = DateTime.Now.Day + " - " + DateTime.Now.Month + " - " + DateTime.Now.Year;
            s = "Select tcode from staff where scode='" + Session["scode"].ToString() + "'";
            ds = dc.getdata(s);

            for (i = 0; i < ds.Tables[0].Rows.Count; i++)
                ddl1.Items.Add(ds.Tables[0].Rows[i][0].ToString());            
        }
        ddl1.SelectedIndex = 0;
    }
    protected void ddl1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataSet ds=new DataSet ();
        s = "select tname,salary from staff where tcode='" + ddl1.SelectedItem + "'";
        ds = dc.getdata(s);
        Label2.Text = ds.Tables[0].Rows[0][0].ToString();        
        TextBox1.Text = ds.Tables[0].Rows[0][1].ToString();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        s = "insert into salarypaid values(" + ddl1.SelectedItem + ",'" + ddl2.SelectedItem + "'," + ddl3.SelectedItem + "," + TextBox1.Text + ",'" + Label1.Text + "')";
        dc.setdata(s);
        TextBox1.Text = "";
        ddl1.SelectedIndex = 0;
        ddl2.SelectedIndex = 0;
        ddl3.SelectedIndex = 0;
    }
}
