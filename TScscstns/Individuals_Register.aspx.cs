using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{

    protected void Button1_Click(object sender, EventArgs e)
    {

        string strSQL = "SELECT * FROM Individuals WHERE User_Name='" + txtName.Text + "'";
        //string strCategory = "";

        //添加数据库

        if (DbManager.ExecuteQuery(strSQL).Rows.Count > 0)
        {
            Response.Write("<script>alert('用户名已经被人使用,请用其他用户名注册')</script>");
            Response.Write("<script>history.go(-1)</script>");
        }

        strSQL = "INSERT INTO Individuals(User_Name,Password,Age,Name,Address,Tel,Email,Postcode,QQ,Gender,Education_Background) VALUES ('" + txtName.Text + "','" + txtPwd.Text + "','" + txtAge.Text + "','" + txtName.Text + "','" + txtAddress.Text + "','" + txtTel.Text + "','" + txtPostcode.Text + "','" + txtQQ.Text + "','" + radSex.SelectedValue.ToString() + "','" + drpDiploma.Text + "','" + "')";
        if (DbManager.ExecuteNonQuery(strSQL) > 0)

            Response.Write("<script>alert('注册成功')</script>");
    }
    
    
    protected void Button2_Click(object sender, EventArgs e)
    {
        string strSQL = "SELECT * FROM Individuals WHERE User_Name='" + txtName.Text + "'";
        if(DbManager.ExecuteQuery(strSQL).Rows.Count>0)
            Response.Write("<script>alert('用户名已经被人使用,请用其他用户名注册')</script>");
        else
            Response.Write("<script>alert('恭喜您,可以使用这个用户名注册')</script>");
    }
 
}
  