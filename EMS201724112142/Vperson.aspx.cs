using EMS201724112142.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EMS201724112142
{
    public partial class Vperson : System.Web.UI.Page
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

        protected void Person_Manage_Click(object sender, EventArgs e)
        {
            Response.Redirect("Vperson.aspx");
        }

        protected void Person_Search_Click(object sender, EventArgs e)
        {
            Response.Redirect("Sperson.aspx");
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Insert")
            {
                GridView1.DataSourceID = "";
                GridView1.DataBind();
            }
        }

        protected void DetailsView1_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
        {
            GridView1.DataSourceID = "SqlDataSource1";
            GridView1.DataBind();
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if((e.Row.RowState == (DataControlRowState.Edit | DataControlRowState.Alternate)) || (e.Row.RowState == DataControlRowState.Edit))
            {
                TextBox curText;
                for(int i = 0; i < e.Row.Cells.Count; i++)
                {
                    if(e.Row.Cells[i].Controls.Count!=0)
                    {
                        curText = e.Row.Cells[i].Controls[0] as TextBox;
                        if(curText!=null)
                        {
                            curText.Width = Unit.Pixel(100);
                        }
                    }
                }
            }       
        }
        //人员统计LINQ+EF
        protected void Person_Count_Click(object sender, EventArgs e)
        {
            Label1.Visible = true;
            GridView1.Visible=false;
            Database1Entities db = new Database1Entities();
            var result = from d in db.Department
                         join p in db.Employee
                         on d.Did equals p.Did
                         into num
                         select new
                         {
                             部门名称 = d.Dname,
                             人员数量 = num.Count()
                         };
            StringBuilder sb = new StringBuilder();
            foreach (var m in result)
            {
                sb.Append(string.Format("<br/>{0}共拥有{1}位员工", m.部门名称, m.人员数量));
            }
            Label1.Text = sb.ToString();
        }
    }
}