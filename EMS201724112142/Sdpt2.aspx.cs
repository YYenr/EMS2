using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EMS201724112142
{
    public partial class Sdpt2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.Visible = false;
            GridView2.Visible = false;
            GridView3.Visible = false;
            Info_did.Visible = false;
            Info_dname.Visible = false;
            Info_dsuper.Visible = false;
        }

        protected void Search_Sdpt_Click(object sender, EventArgs e)
        {
            Response.Redirect("Sdpt2.aspx");
        }

        protected void All_Sdpt_Click(object sender, EventArgs e)
        {
            Response.Redirect("Sdpt.aspx");
        }

        protected void Search_Click(object sender, EventArgs e)
        {
            if (RadioButtonList1.SelectedValue != null)
            {
                if (RadioButtonList1.SelectedValue == "did")
                {
                    //将输入的查询信息给Info_did控件
                    Info_did.Text = Info.Text;
                    Info_dname.Text = null;
                    Info_dsuper.Text = null;
                    //按编号查询到的结果，显示出来
                    GridView1.Visible = true;
                }
                else if (RadioButtonList1.SelectedValue == "dname")
                {
                    //将输入的查询信息给Info_dname控件
                    Info_dname.Text = Info.Text;
                    Info_did.Text = null;
                    Info_dsuper.Text = null;
                    //按设备名称查询到的结果，显示出来
                    GridView2.Visible = true;
                }
                else if (RadioButtonList1.SelectedValue == "dsuper")
                {
                    Info_did.Text = null;
                    Info_dname.Text = null;
                    //将输入的查询信息给Info_dsuper控件
                    Info_dsuper.Text = Info.Text;
                    //按日期查询到的结果，显示出来
                    GridView3.Visible = true;
                }
            }
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}