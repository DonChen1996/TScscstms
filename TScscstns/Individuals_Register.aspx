<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Individuals_Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>厦门天擎众创空间综合管理系统_个人注册</title>
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
        个人用户注册
    </h1>
        <table class="auto-style1" align="center">
           
            <tr>
                <td>
                    <h3>用户名</h3>
                </td>
                <td>
                      <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="姓名必填">用户名不得为空！</asp:RequiredFieldValidator>
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="检查用户名" Height="31px" Width="97px" />
                </td>
            </tr>

            <tr>
                <td>
                    <h3>密码</h3>
                </td>
                <td>
                      <asp:TextBox ID="txtPwd" runat="server" TextMode="Password"></asp:TextBox>
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
                    <h3><span lang="zh-cn">年龄</span></h3>
                </td>
                <td>
                    <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtAge" ErrorMessage="请输入一个0~100之间的整数" MaximumValue="100" MinimumValue="0" Type="Integer">输入0~100之间整数</asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <h3>姓名</h3>
                </td>
                <td>
                      <asp:TextBox ID="txtIndName" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>   

            <tr>
                <td>
                    <h3>联系地址</h3>
                </td>
                <td>
                      <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                </td>
                <td>
                     
                    &nbsp;</td>
            </tr>

            <tr>
                <td>
                    <h3>电话</h3>
                </td>
                <td>
                      <asp:TextBox ID="txtTel" runat="server"></asp:TextBox>
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
                <td>
                    <h3><span lang="zh-cn">性别</span></h3>
                </td>
                <td>

                    <asp:RadioButtonList ID="radSex" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                        <asp:ListItem Selected="True">男</asp:ListItem> 
                        <asp:ListItem >女</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>&nbsp;</td>
            </tr>

            <tr>
                <td>
                    <h3><span lang="zh-cn">学历</span></h3>
                </td>
                <td>
                    <asp:DropDownList ID="drpDiploma" runat="server">
                        <asp:ListItem>博士</asp:ListItem>
                        <asp:ListItem Selected="True" Value="硕士">硕士</asp:ListItem>
                        <asp:ListItem>本科</asp:ListItem>
                        <asp:ListItem>大专</asp:ListItem>
                        <asp:ListItem>其他</asp:ListItem>
                    </asp:DropDownList>
                 
                </td>
                <td>&nbsp;</td>
            </tr>

            <tr>
                <td class="auto-style1" colspan="3">
                     
                     <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="注册" Height="28px" style="text-align: center" Width="50px" />
                     
                 </td>
            </tr>
        </table>
  
    </form>
</body>
</html>
