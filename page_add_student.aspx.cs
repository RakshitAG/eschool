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

public partial class page_add_student : System.Web.UI.Page
{
    datacon dc = new datacon();
    string s;
    int i;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            TextBox11.Text = DateTime.Now.Year.ToString();
            TextBox12.Text = DateTime.Now.Day + " - " + DateTime.Now.Month + " - " + DateTime.Now.Year;
            TextBox10.Text = Session["scode"].ToString();

            DataSet ds = new DataSet();
            s = "select stype from school where scode='" + Session["scode"] + "'";
            ds = dc.getdata(s);
            string stype = ds.Tables[0].Rows[0][0].ToString();
            ddl1.Items.Clear();
            
            ddl1.Items.Add("Nursery");
            ddl1.Items.Add("LKG");
            ddl1.Items.Add("UKG");
            ddl1.Items.Add("First");
            ddl1.Items.Add("Second");
            ddl1.Items.Add("Third");
            ddl1.Items.Add("Fourth");
            ddl1.Items.Add("Fifth");
            
            if (stype == "Secondary")
            {
                ddl1.Items.Add("Fifth");
                ddl1.Items.Add("Sixth");
                ddl1.Items.Add("Seventh");
                ddl1.Items.Add("Eighth");
                ddl1.Items.Add("Ninth");
                ddl1.Items.Add("Tenth");
            }
            if (stype == "Sr. Secondary")
            {
                ddl1.Items.Add("Fifth");
                ddl1.Items.Add("Sixth");
                ddl1.Items.Add("Seventh");
                ddl1.Items.Add("Eighth");
                ddl1.Items.Add("Ninth");
                ddl1.Items.Add("Tenth");
                ddl1.Items.Add("Eleventh");
                ddl1.Items.Add("Twelveth");
            }

            DataSet ds1 = new DataSet();
            s = "select sname from school where scode='" + Session["scode"].ToString() + "'";
            ds1 = dc.getdata(s);
            Label1.Text = "School Name : " + ds1.Tables[0].Rows[0][0].ToString();

            DataSet ds2 = new DataSet();
            s = "select regno from student order by regno desc";
            ds2 = dc.getdata(s);
            if (ds2.Tables[0].Rows.Count == 0)
                TextBox1.Text = "100001";
            else
                TextBox1.Text = Convert.ToString(Convert.ToInt32(ds2.Tables[0].Rows[0][0].ToString()) + 1);   


        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        s = "insert into student values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + ddl1.SelectedItem + "','" + TextBox11.Text + "','" + TextBox12.Text + "','NO')";
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
        ddl1.SelectedIndex = 0;
        TextBox1.Text = Convert.ToString(Convert.ToInt32(TextBox1.Text) + 1);
    }
}
