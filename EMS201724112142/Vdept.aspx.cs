using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EMS201724112142
{
    public partial class Vdept : System.Web.UI.Page
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

        protected void Dept_Manage_Click(object sender, EventArgs e)
        {
            Response.Redirect("Vdept.aspx");
        }

        protected void Dept_Search_Click(object sender, EventArgs e)
        {
            Response.Redirect("Sdpt.aspx");
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if ((e.Row.RowState == (DataControlRowState.Edit | DataControlRowState.Alternate)) || (e.Row.RowState == DataControlRowState.Edit))
            {
                TextBox curText;
                for (int i = 0; i < e.Row.Cells.Count; i++)
                {
                    if (e.Row.Cells[i].Controls.Count != 0)
                    {
                        curText = e.Row.Cells[i].Controls[0] as TextBox;
                        if (curText != null)
                        {
                            curText.Width = Unit.Pixel(100);
                        }
                    }
                }
            }
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
    }
}