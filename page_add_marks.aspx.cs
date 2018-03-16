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

public partial class page_add_marks : System.Web.UI.Page
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
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Label2.Text = Convert.ToString(Convert.ToInt32(TextBox1.Text) + Convert.ToInt32(TextBox2.Text) + Convert.ToInt32(TextBox3.Text));
        Label3 .Text =Convert.ToString (Convert.ToInt32 (Label2.Text )/3.0f);
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();
        s = "select sname,sclass,syear from student where regno='" + ddl1.SelectedItem + "' order by syear desc";
        ds = dc.getdata(s);
        Label1.Text = ds.Tables[0].Rows[0][1].ToString();
        Label4.Text = ds.Tables[0].Rows[0][0].ToString();
        Label5.Text = ds.Tables[0].Rows[0][0].ToString();
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        s = "update student set estatus='YES' where regno='" + ddl1.SelectedItem + "' and sclass='" + Label1.Text + "' and syear='" + Label5.Text + "'"; ;
        dc.setdata(s);

        s = "insert into marks values('" + ddl1.SelectedItem + "','" + Label1.Text + "','" + Label5.Text + "'," + TextBox1.Text + "," + TextBox2.Text + "," + TextBox3.Text + "," + Label2.Text + "," + Label3.Text + ")";
        dc.setdata(s);
        
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        Label2.Text = "";
        Label3.Text = "";
        ddl1.SelectedIndex = 0;
    }
}
