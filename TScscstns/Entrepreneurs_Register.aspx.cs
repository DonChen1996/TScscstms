using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Entrepreneur_Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string strSQL = "SELECT * FROM Entrepreneurs WHERE Company_Name='" + Company_Name.Text + "'";
        if (DbManager.ExecuteQuery(strSQL).Rows.Count > 0)
            Response.Write("<script>alert('公司名已注册')</script>");
        else
            Response.Write("<script>alert('尚未注册')</script>");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string strSQL = "SELECT * FROM Entrepreneurs WHERE Company_Name='" + Company_Name.Text + "'";
        //string strCategory = "";

        //添加数据库

        if (DbManager.ExecuteQuery(strSQL).Rows.Count > 0)
        {
            Response.Write("<script>alert('公司名已注册')</script>");
            Response.Write("<script>history.go(-1)</script>");
        }

        strSQL = "INSERT INTO Entrepreneurs(Company_Name,Password,Legal_Representative,Company_Address,Company_Tel,Email,Postcode,QQ,Primary_Business,Company_Introduction) VALUES ('" + Company_Name.Text + "','" + txtPwd.Text + "','" + txtLegalRepresentative.Text + "','" + txtCompanyAddress.Text + "','" + txtCompanyTel.Text + "','" + txtPostcode.Text + "','" + txtQQ.Text + "','" + txtPrimaryBusiness.Text + "','" + txtIntroduction.Text + "','" + "')";
        if (DbManager.ExecuteNonQuery(strSQL) > 0)

            Response.Write("<script>alert('注册成功')</script>");
    }
}