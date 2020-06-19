using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EMS201724112142
{
    public partial class Vequip : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Session["isM"] != null)
                {
                    if (Session["isM"].ToString() == "N")
                    {
                        Response.Write("<script language=javascript>" +
                            "alert('抱歉,您没有资格查看');" +
                            "window.location = 'index.aspx';</script>");
                    }
                }
            }             
        }

        protected void Equip_Manage_Click(object sender, EventArgs e)
        {
            Response.Redirect("Vequip.aspx");
        }
        protected void Equip_Search_Click(object sender, EventArgs e)
        {
            Response.Redirect("Sequip.aspx");
        }
        protected void DetailsView1_ItemUpdating(object sender, DetailsViewUpdateEventArgs e)
        {
            FileUpload file = (FileUpload)DetailsView1.FindControl("FileUpload1");
            if (file.HasFile)
            {
                string filename = file.FileName;
                string path = Server.MapPath("~/img/") + filename;
                file.SaveAs(path);
                SqlDataSource1.UpdateParameters["Epic"].DefaultValue = "~/img/" + filename;
                //连接数据库
                String cnstr = @"Data Source=(LocalDB)\MSSQLLocalDB;" + "AttachDbFilename=|DataDirectory|Database1.mdf;" + "Integrated Security=True";
                SqlConnection conn = new SqlConnection(cnstr);
                //打开数据库连接
                conn.Open();
                //传入sql语句
                String sql = "update Equipment set Epic='" + SqlDataSource1.UpdateParameters["Epic"].DefaultValue + "' WHERE Eid = '"+SqlDataSource1.UpdateParameters["Eid"].DefaultValue+"'";
                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.ExecuteNonQuery();
                conn.Close();
            }
            else
            {
                SqlDataSource1.UpdateParameters["Eid"].DefaultValue = "";
            }
        }

        protected void DetailsView1_ItemInserting(object sender, DetailsViewInsertEventArgs e)
        {
            FileUpload file = (FileUpload)DetailsView1.FindControl("FileUpload2");
            if (file.HasFile)
            {
                string filename = file.FileName;
                string path = Server.MapPath("~/img/") + filename;
                file.SaveAs(path);
                SqlDataSource1.InsertParameters["Epic"].DefaultValue = "~/img/" + filename;
                //连接数据库
                String cnstr = @"Data Source=(LocalDB)\MSSQLLocalDB;" + "AttachDbFilename=|DataDirectory|Database1.mdf;" + "Integrated Security=True";
                SqlConnection conn = new SqlConnection(cnstr);
                //打开数据库连接
                conn.Open();
                //传入sql语句
               String sql = "insert into Equipment(Eid,Ename,Esize,Epic,Eprice,Edate,Eplace,manager)" +
                    "values('" + SqlDataSource1.InsertParameters["Eid"].DefaultValue + "','" + SqlDataSource1.InsertParameters["Ename"].DefaultValue + "','" + SqlDataSource1.InsertParameters["Esize"].DefaultValue + "'," +
                    "'" +SqlDataSource1.InsertParameters["Epic"].DefaultValue + "','" + SqlDataSource1.InsertParameters["Eprice"].DefaultValue + "','" + SqlDataSource1.InsertParameters["Edate"].DefaultValue + "'," +
                    "'" + SqlDataSource1.InsertParameters["Eplace"].DefaultValue + "','" + SqlDataSource1.InsertParameters["manager"].DefaultValue + "')";
                SqlCommand cmd = new SqlCommand(sql, conn);
                conn.Close();
            }
            else
            {
                SqlDataSource1.UpdateParameters["Eid"].DefaultValue = "";
            }
        }
    }
}