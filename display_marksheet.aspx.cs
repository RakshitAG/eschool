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

public partial class display_marksheet : System.Web.UI.Page
{
    datacon dc = new datacon();
    string s;
    protected void Page_Load(object sender, EventArgs e)
    {
        string sclass,regno;
        DataSet ds=new DataSet();

        sclass = Session["sclass"].ToString();
        regno = Session["regno"].ToString();
        s = "select * from student where regno='" + regno + "' and sclass='" + sclass + "'";
        ds = dc.getdata(s);
        Label1.Text = regno.ToString();
        
        Label2.Text = ds.Tables[0].Rows[0][1].ToString();
        Label3.Text = ds.Tables[0].Rows[0][9].ToString();
        Label4.Text = ds.Tables[0].Rows[0][10].ToString();
        Label5.Text = ds.Tables[0].Rows[0][12].ToString();
        Label6.Text = ds.Tables[0].Rows[0][2].ToString();                 
        Label7.Text = ds.Tables[0].Rows[0][9].ToString();                 
        Label8.Text = ds.Tables[0].Rows[0][11].ToString();
    
        DataSet ds1=new DataSet();
        s = "Select sname from school where scode='" + Label7.Text + "'";
        ds1 = dc.getdata(s);
        Label7.Text = ds1.Tables[0].Rows[0][0].ToString();

        DataSet ds2 = new DataSet();
        s = "select * from marks where regno='" + regno + "' and sclass='" + sclass + "'";
        ds2 = dc.getdata(s);

        Label9.Text = ds2.Tables[0].Rows[0][3].ToString();
        Label10.Text = ds2.Tables[0].Rows[0][4].ToString();
        Label11.Text = ds2.Tables[0].Rows[0][5].ToString();
        Label12.Text = ds2.Tables[0].Rows[0][6].ToString();
        Label13.Text = ds2.Tables[0].Rows[0][7].ToString();

    }

}
