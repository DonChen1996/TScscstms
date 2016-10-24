<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml">
    <HEAD runat="server"><TITLE>厦门天擎众创空间综合管理系统</TITLE><LINK 
href="images/Default.css" type=text/css rel=stylesheet><LINK 
href="images/xtree.css" type=text/css rel=stylesheet><LINK 
href="images/User_Login.css" type=text/css rel=stylesheet>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<META content="MSHTML 6.00.6000.16674" name=GENERATOR></HEAD>
<BODY id=userlogin_body><form id="form1" runat="server">
<DIV></DIV>

<DIV id=user_login>
<DL>
  <DD id=user_top>
  <UL>
    <LI class=user_top_l></LI>
    <LI class=user_top_c></LI>
    <LI class=user_top_r></LI></UL>
  <DD id=user_main>
  <UL>
    <LI class=user_main_l></LI>
    <LI class=user_main_c>
    <DIV class=user_main_box>
    <UL>
      <LI class=user_main_text>用户名： </LI>
      <LI class=user_main_input><asp:TextBox ID="txtName" runat="server"></asp:TextBox></LI></UL>
    <UL>
      <LI class=user_main_text>密 码： </LI>
      <LI class=user_main_input><asp:TextBox ID="txtPwd" runat="server" TextMode="Password"></asp:TextBox></LI></UL>
     <%--   <UL>
      <LI class=user_main_text>权 限： </LI>
      <LI class=user_main_input><asp:DropDownList runat="server" ID="Authority">
          <asp:ListItem></asp:ListItem>
          <asp:ListItem>个人用户</asp:ListItem>
          <asp:ListItem>企业用户</asp:ListItem>
          <asp:ListItem>管理员</asp:ListItem>
          </asp:DropDownList></LI></UL>--%>
    <UL>

      <LI class=user_main_text>验证码：</LI>
      <LI class=user_main_input><asp:TextBox ID="txtCode" runat="server"></asp:TextBox></LI>
        <li>
<img alt="" src="CheckCode.aspx" style="width: 194px; height: 25px" align="center" /></li>
        </UL></DIV></LI>
    <LI class=user_main_r>

        <asp:ImageButton ID="ImageButton1" runat="server" style="border-top-width: 0px;border-left-width: 0px;border-bottom-width: 0px; border-right-width: 0px;" ImageUrl="~/images/user_botton.gif" OnClick="ImageButton1_Click" />

        <%--static sample below--%>

     <%--   <INPUT class=IbtnEnterCssClass id=IbtnEnter 
    style="BORDER-TOP-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-RIGHT-WIDTH: 0px" 
    onclick='javascript: WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions("IbtnEnter", "", true, "", "", false, false))' 
    type=image src="images/user_botton.gif" name=IbtnEnter> --%>




    </LI></UL>
  <DD id=user_bottom>
  <UL>
    <LI class=user_bottom_l></LI>
    <LI class=user_bottom_cc><SPAN style="MARGIN-TOP: 40px"><a href="Entrepreneurs_Register.aspx">企业用户注册</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<A 
    href="Individuals_Register.aspx">个人注册</A>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</SPAN> </LI>
    <LI class=user_bottom_r></LI></UL></DD></DL></DIV><SPAN id=ValrUserName 
style="DISPLAY: none; COLOR: red"></SPAN><SPAN id=ValrPassword 
style="DISPLAY: none; COLOR: red"></SPAN><SPAN id=ValrValidateCode 
style="DISPLAY: none; COLOR: red"></SPAN>
<DIV id=ValidationSummary1 style="DISPLAY: none; COLOR: red"></DIV>

<DIV></DIV>

</form></BODY></HTML>

