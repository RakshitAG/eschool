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

public partial class list_staff : System.Web.UI.Page
{
    datacon dc = new datacon();
    string s;
    int i;

    protected void Page_Load(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();
        s = "select tcode,tname,dob,address,mno,qual,post,doj,salary from staff where scode='" + Session ["scode"].ToString ()+"'";
        ds = dc.getdata(s);
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();

    }
}
