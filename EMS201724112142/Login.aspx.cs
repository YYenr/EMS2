using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EMS201724112142
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            //获取输入的账号和密码
            String userid = id.Text;
            String password = psw.Text;
            //连接数据库
            String cnstr = @"Data Source=(LocalDB)\MSSQLLocalDB;" +"AttachDbFilename=|DataDirectory|Database1.mdf;" +"Integrated Security=True";
            SqlConnection conn = new SqlConnection(cnstr);
            //打开数据库连接
            conn.Open();
            //传入sql语句
            String sql = "select * from Employee where id='" + userid + "' and password='" + password + "'";
            SqlCommand cmd = new SqlCommand(sql, conn);
            //获取数据
            SqlDataReader myReader = cmd.ExecuteReader();
            //判断是否读到数据
            if (myReader.Read())
            {
                Session["ID"] = userid;//将编号存到Session中的ID
                Session["PSW"] = password;//将密码存到Session中的PSW
                Session["NAME"] = myReader["name"].ToString();
                Session["isM"] = myReader["isManager"].ToString();//将是否为管理人Y或N存到Session中的isM
                if (myReader["isManager"].ToString()=="Y")
                {
                    
                    Response.Write("<script language=javascript>" +
                        "alert('欢迎管理员" + Session["NAME"] + "进入EMS..');" +
                        "window.location = 'index.aspx?userid=" + userid + "&isM="+ Session["isM"] + "';</script>");
                }
                else
                {
                    Response.Write("<script language=javascript>" +
                        "alert('欢迎员工" + Session["NAME"] + "进入EMS..');" +
                        "window.location = 'index.aspx?userid=" + userid + "&isM=" + Session["isM"] + "';</script>");
                }
            }
            else
            {
                Label1.Text = "账号或密码错误，请重新登录！";
            }
            myReader.Close();
            //关闭与数据库的连接
            conn.Close();
        }

    }
}