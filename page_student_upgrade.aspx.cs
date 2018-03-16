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

public partial class page_student_upgrade : System.Web.UI.Page
{
    datacon dc = new datacon();
    string s;
    int i;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataSet ds = new DataSet();
            s = "select distinct syear from student";
            ds = dc.getdata(s);
            for (i = 0; i < ds.Tables[0].Rows.Count; i++)
                ddl1.Items.Add(ds.Tables[0].Rows[i][0].ToString());

            ddl1.SelectedIndex = 0;
        }
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        string newyear, newclass="";

        newyear = Convert.ToString (Convert.ToInt32(ddl1.SelectedItem.ToString ()) + 1);        
        switch (ddl2.SelectedItem.ToString())
        {
            case "Nursery":
                newclass = "LKG";
            break;

            case "LKG":
                newclass="UKG";
            break;
        
            case "UKG":
                newclass= "First";
            break;
        
            case "First":
                newclass= "Second";
            break;
        
            case "Second":
                newclass= "Third";
                break;
        
            case "Third":
                newclass = "Fourth";
            break;
        
            case "Fourth":
                newclass = "Fifth";
            break;
        
            case "Fifth":
                newclass = "Sixth";
            break;
        
            case "Sixth":
                newclass= "Seventh";
            break;
        
            case "Seventh":
                newclass= "Eighth";
            break;
        
            case "Eighth":
                newclass= "Nineth";
            break;

            case "Nineth":
                newclass = "Tenth";
            break;
        
            case "Tenth":
                newclass = "Elenventh";
            break;
        
            case "Elenventh":
                newclass = "Twelveth";
            break;
        }

        DataSet ds1 = new DataSet();
        string a,b,c,d,f,g,h,j,k,l,m,n,p;

        s="select regno from marks where per>="+ TextBox1 .Text +" and sclass='" + ddl2.SelectedItem +"' and syear='" + ddl1.SelectedItem +"'";
        ds1=dc.getdata (s);

        
        int t;
        for (t = 0; t < ds1.Tables[0].Rows.Count; t++)
        {
            DataSet ds = new DataSet ();
            s = "select * from student where regno='"+ds1.Tables[0].Rows [i][0].ToString ()+"' and sclass='" + ddl2.SelectedItem +"' and syear='" + ddl1.SelectedItem +"'";
            ds = dc.getdata(s);
            for (i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                a = ds.Tables[0].Rows[i][0].ToString();
                b = ds.Tables[0].Rows[i][1].ToString();
                c = ds.Tables[0].Rows[i][2].ToString();
                d = ds.Tables[0].Rows[i][3].ToString();
                f = ds.Tables[0].Rows[i][4].ToString();
                g = ds.Tables[0].Rows[i][5].ToString();
                h = ds.Tables[0].Rows[i][6].ToString();
                j = ds.Tables[0].Rows[i][7].ToString();
                k = ds.Tables[0].Rows[i][8].ToString();
                l = ds.Tables[0].Rows[i][9].ToString();
                m = newclass;
                n = newyear;
                p = ds.Tables[0].Rows[i][12].ToString();

                s = "insert into student values('" + a + "','" + b + "','" + c + "','" + d + "','" + f + "','" + g + "','" + h + "','" + j + "','" + k + "','" + l + "','" + m + "','" + n + "','" + p + "','NO')";
                dc.setdata(s);
            }
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();
        s = "select sclass from student where syear='" + ddl1.SelectedItem + "' and sclass<>'Twelveth'";
        ds = dc.getdata(s);
        ddl2.Items.Clear();
        for (i = 0; i < ds.Tables[0].Rows.Count; i++)
            ddl2.Items.Add(ds.Tables[0].Rows[i][0].ToString());

        ddl2.SelectedIndex = 0;

    }
}
