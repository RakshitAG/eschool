using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.OleDb;

/// <summary>
/// Summary description for datacon
/// </summary>
public class datacon
{
    OleDbConnection con;
    OleDbCommand cmd;
    OleDbDataAdapter da;

	public datacon()
	{
        con = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\eschool.mdb;Persist Security Info=True");
        con.Open();
	}

    public void setdata(string s)
    {
        cmd=new OleDbCommand (s,con);
        cmd.ExecuteNonQuery();
    }

    public DataSet getdata(string s)
    {
        DataSet ds = new DataSet();
        da = new OleDbDataAdapter(s, con);
        da.Fill(ds);
        return ds;
    }
}
