<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Entrepreneurs_Register.aspx.cs" Inherits="Entrepreneur_Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>厦门天擎众创空间综合管理系统_企业用户</title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>

</head>
<body>
   
    <form id="form1" runat="server">
    <h1 class="auto-style1">
        <img src="images/Logo_Smaller.png" /><br />
        企业用户注册
    </h1>
        <table align="center">
           
            <tr>
                <td>
                    <h3>公司名称</h3>
                </td>
                <td>
                      <asp:TextBox ID="Company_Name" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Company_Name" ErrorMessage="姓名必填">公司名不得为空！</asp:RequiredFieldValidator>
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="检查公司是否注册" Height="31px" Width="126px" />
                </td>
            </tr>

            <tr>
                <td>
                    <h3>密码</h3>
                </td>
                <td>
                      <asp:TextBox ID="txtPwd" runat="server" TextMode="Password"></asp:TextBox>
                    <span lang="zh-cn"></span>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPwd" ErrorMessage="密码必填">
                        密码不能为空！
                    </asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td>
                    <h3><span lang="zh-cn">校验密码</span> </h3>
                </td>
                <td>
                    <asp:TextBox ID="txtRePwd" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPwd" ControlToValidate="txtRePwd" ErrorMessage="密码不一致">两次密码不同</asp:CompareValidator>
                </td>
                
            </tr>

           
            <tr>
                <td>
                    <h3>法定代表人</h3>
                </td>
                <td>
                      <asp:TextBox ID="txtLegalRepresentative" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>   

            <tr>
                <td>
                    <h3>公司地址</h3>
                </td>
                <td>
                      <asp:TextBox ID="txtCompanyAddress" runat="server"></asp:TextBox>
                </td>
                <td>
                     
                    &nbsp;</td>
            </tr>

            <tr>
                <td>
                    <h3>公司电话</h3>
                </td>
                <td>
                      <asp:TextBox ID="txtCompanyTel" runat="server"></asp:TextBox>
                </td>
                <td>
                  &nbsp;
                </td>
            </tr>
            
            <tr>
                <td>
                    <h3>Email</h3>
                </td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </td>
                 <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="请输入一个合法的E-mail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                    邮箱格式不正确
                </asp:RegularExpressionValidator>
            </td>
            </tr>

           

            <tr>
                <td>
                    <h3>邮编</h3>
                </td>
                <td>
                      <asp:TextBox ID="txtPostcode" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
              <tr>
                <td>
                    <h3>QQ</h3>
                  </td>
                <td>
                      <asp:TextBox ID="txtQQ" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td><strong>主营业务</strong></td>
                <td>
                    <asp:TextBox ID="txtPrimaryBusiness" runat="server"></asp:TextBox>
                </td>
                 <td>
                    &nbsp;
                </td>

            </tr>

            <tr>
                <td>
                    公司简介
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtIntroduction" runat="server" Height="85px" Width="418px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td colspan="3" align="center">
                     
                     <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="注册" Height="28px" style="text-align: center" Width="50px" />
                     
                 </td>
            </tr>
        </table>
    </form>
</body>
</html>
