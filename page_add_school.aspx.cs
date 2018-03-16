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

public partial class page_add_school : System.Web.UI.Page
{
    datacon dc = new datacon();
    string s;
    int i;
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();
        s = "select scode from school order by scode desc";
        ds = dc.getdata(s);
        if (ds.Tables[0].Rows.Count == 0)
            TextBox1.Text = "1001";
        else
            TextBox1.Text = Convert.ToString(Convert.ToInt32(ds.Tables[0].Rows[0][0].ToString()) + 1);

        TextBox9.Text = DateTime.Now.Day + " - " + DateTime.Now.Month + " - " + DateTime.Now.Year;

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        string stype="";
        if (RadioButton1.Checked == true)
            stype = RadioButton1.Text;
        else if (RadioButton2.Checked == true)
            stype = RadioButton2.Text;
        else if (RadioButton3.Checked == true)
            stype = RadioButton3.Text;

        s = "insert into school values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + ddl1.SelectedItem + "','" + stype + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "')";
        dc.setdata(s);
        TextBox2 .Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        
        RadioButton1.Checked = true;
        ddl1.SelectedIndex = 0;
        TextBox1.Text = Convert.ToString (Convert.ToInt32(TextBox1.Text) + 1);

    }
}
