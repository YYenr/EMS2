using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EMS201724112142
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //String id = Request.QueryString["userid"];
            //String isM = Request.QueryString["isM"];
            //Session["ID"] = Request.QueryString["userid"];
            //Session["isM"] = Request.QueryString["isM"];
            if (Session["ID"] != null && Session["NAME"] != null && Session["PSW"] !=null && Session["isM"] != null)
            {
                if(Session["isM"].ToString()=="Y")
                {
                    User.Text = "管理员:" + Session["NAME"].ToString();
                }else
                {
                    User.Text = "员工:" + Session["NAME"].ToString();
                }
            }
            else
            {
                Response.Write("<script language=javascript>" +
                        "alert('您还没有登录,请先登录');" +
                        "window.location = 'Login.aspx';</script>");
                Login.Visible = true;
            }
        }
        protected void Logout_Click(object sender, EventArgs e)
        {
            User.Text = "注销成功";
            Session.Abandon();
            Login.Visible = true;
        }
        protected void Login_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}