using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (txtCode.Text != Request.Cookies["CheckCode"].Value.ToString())
            Response.Write("<script>alert('验证码错误！')</script>");
        else
        {
            string strSQL = "SELECT * FROM Individuals WHERE User_Name='" + txtName.Text + "' AND Password='" + txtPwd.Text + "'";
            if (DbManager.ExecuteQuery(strSQL).Rows.Count > 0)
            {
                Session["pass"] = 1;
                Response.Redirect("Index.aspx");
            }
            else
                Response.Write("<script>alert('用户名或密码错误！')</script>");
        }
        //    string strSQL = "SELECT * FROM Individuals WHERE User_Name='" + txtName.Text + "' AND Password='" + txtPwd.Text + "'";
        //    if (DbManager.ExecuteQuery(strSQL).Rows.Count > 0)
        //    {
        //        Session["name"] = txtName.Text;
        //        Response.Redirect("Index.aspx");
        //    }
        //    else
        //        Response.Write("<script>alert('用户名或密码错误！')</script>");
        //}
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["pass"] = 0;
    }
}