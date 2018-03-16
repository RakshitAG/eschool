<%@ Page Language="C#" AutoEventWireup="true" CodeFile="page_login.aspx.cs" Inherits="page_login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
     <title>Untitled Page</title>
<link rel="stylesheet" href="styles/layout.css" type="text/css" />
</head>
<body>

<div class="wrapper col0">
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col1">
  <div id="header" style="left: 0px; top: 0px; height: 46px; text-align: right;">
    <div id="logo" style="width: 332px">
  
    
      <h1><a href="#">Educational Forum</a></h1>
      <p>A Product Of Rajasthan Govt.</p>
    </div>
    <br class="clear" />
      <br />
      <strong><span style="text-decoration: underline">"Execution of Avitivities of School
          in Automated Mode and Automted Execution of a Task"</span></strong></div>
</div>
<br />
<br />
<!-- ####################################################################################################### -->
<div class="wrapper col2" style="text-align: center">
    <span><span style="color: beige"><strong><span style="font-size: 16pt">LOGIN FORM</span></strong><br />
    </span></span></div>
<!-- ####################################################################################################### -->
<div class="wrapper col3" style="height: 27px">
 <div id="Div1">
    <div class="clear">
        <form id="form1" runat="server">    
        <table>            
            <td style="text-align: center"><asp:RadioButton ID="RadioButton1" runat ="server" GroupName="A" OnCheckedChanged="RadioButton1_CheckedChanged" Text="Student Login" /></td>
            <td style="text-align: center"><asp:RadioButton ID="RadioButton2" runat ="server" GroupName="A" Text="Operator Login" /></td>
            <td style="text-align: center"><asp:RadioButton ID="RadioButton3" runat ="server" GroupName="A" Text="Admin Login" OnCheckedChanged="RadioButton3_CheckedChanged" /></td>
        </table>
        <br />
        
        <table>
            <tr>
                <td style="width: 160px; text-align: center;">
                    Enter Your Code&nbsp;</td>
                <td style="width: 100px; text-align: center;">
                    <asp:TextBox ID="TextBox1" runat="server" Width="147px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 160px; text-align: center;">
                    Enter Your Password</td>
                <td style="width: 100px; text-align: center;">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="149px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="text-align: center;" colspan="2">
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" Font-Bold="True" Font-Underline="True" ForeColor="#660000">Enter</asp:LinkButton></td>
            </tr>
        </table>    
    
    </form>
  </div>
   
</div>

<!-- ####################################################################################################### --><!-- ####################################################################################################### --><div class="wrapper col5">
  <div id="footer" style="text-align: center">
      <span style="font-family: Arial; font-size: 16pt; color: lightyellow;"><strong>Activities of School In Automated Mode<br />
          (AcSAM)<br />
          <br />
      </strong><span style="font-size: 12pt">Execution can be done in Automated Mode, AnyTime
          AnyWhere AnyOne.........</span></span></div>
</div>
<!-- ####################################################################################################### -->
</body>
</html>
