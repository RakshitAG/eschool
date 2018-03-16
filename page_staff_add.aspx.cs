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

public partial class page_staff_add : System.Web.UI.Page
{
    datacon dc = new datacon();
    string s;
    int i;   

    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox11.Text = DateTime.Now.Day + " - " + DateTime.Now.Month + " - " + DateTime.Now.Year;
        TextBox13.Text = Session["scode"].ToString();
        if (!IsPostBack)
        {            
            DataSet ds = new DataSet();
            s = "select tcode from staff order by tcode desc";
            ds = dc.getdata(s);
            if (ds.Tables[0].Rows.Count == 0)
                TextBox1.Text = "101";
            else
                TextBox1.Text = Convert.ToString(Convert.ToInt32(ds.Tables[0].Rows[0][0].ToString()) + 1);


            DataSet ds1 = new DataSet();
            s = "select post,amt from salaryrules";
            ds1 = dc.getdata(s);

            for (i = 0; i < ds1.Tables[0].Rows.Count; i++)
            {
                ddl1.Items.Add(ds1.Tables[0].Rows[i][0].ToString());
            
            }
            TextBox12.Text = ds1.Tables[0].Rows[ddl1.SelectedIndex][1].ToString();
            ddl1.SelectedIndex = 0;
        }
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    protected void ddl1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataSet ds1 = new DataSet();
        s = "select amt from salaryrules where post='" + ddl1.SelectedItem +"'";
        ds1 = dc.getdata(s);
        TextBox12.Text = ds1.Tables[0].Rows[0][0].ToString();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        s = "insert into staff values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox14 .Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox13.Text + "','" + ddl1.SelectedItem + "','" + TextBox11.Text + "'," + TextBox12.Text + ")";
        dc.setdata(s);

        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        TextBox9.Text = "";
        TextBox10.Text = "";
        TextBox11.Text = "";
        TextBox12.Text = "";
        TextBox13.Text = "";
        
        ddl1.SelectedIndex = 0;
        TextBox1.Text = Convert.ToString(Convert.ToInt32(TextBox1.Text) + 1);
        TextBox2 .Focus ();


    }
}
