using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EMS201724112142
{
    public partial class Sperson2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.Visible = false;
            GridView2.Visible = false;
            GridView3.Visible = false;
            GridView4.Visible = false;
            GridView5.Visible = false;
            Info_id.Visible = false;
            Info_name.Visible = false;
            Info_phone.Visible = false;
            Info_ism.Visible = false;
            Info_did.Visible = false;
        }

        protected void All_Sper_Click(object sender, EventArgs e)
        {
            Response.Redirect("Sperson.aspx");
        }

        protected void Search_Sper_Click(object sender, EventArgs e)
        {
            Response.Redirect("Sperson2.aspx");
        }

        protected void Search_Click(object sender, EventArgs e)
        {
            if (RadioButtonList1.SelectedValue != null)
            {
                if (RadioButtonList1.SelectedValue == "id")
                {
                    //将输入的查询信息给Info_id控件
                    Info_id.Text = Info.Text;
                    Info_name.Text = null;
                    Info_phone.Text = null;
                    Info_ism.Text = null;
                    Info_did.Text = null;
                    //按编号查询到的结果，显示出来
                    GridView1.Visible = true;
                }
                else if (RadioButtonList1.SelectedValue == "name")
                {
                    Info_id.Text = null;
                    Info_name.Text = Info.Text;
                    Info_phone.Text = null;
                    Info_ism.Text = null;
                    Info_did.Text = null;
                    GridView2.Visible = true;
                }
                else if (RadioButtonList1.SelectedValue == "phone")
                {
                    Info_id.Text = null;
                    Info_name.Text = null;
                    Info_phone.Text = Info.Text;
                    Info_ism.Text = null;
                    Info_did.Text = null;
                    GridView3.Visible = true;
                }
                else if (RadioButtonList1.SelectedValue == "ism")
                {
                    if(Info.Text == "Y" || Info.Text == "是" || Info.Text == "管理员")
                    {
                        Info.Text = "Y";
                    }
                    else if(Info.Text == "N" || Info.Text == "不是")
                    {
                        Info.Text = "N";
                    }
                    Info_id.Text = null;
                    Info_name.Text = null;
                    Info_phone.Text = null;
                    Info_ism.Text = Info.Text;
                    Info_did.Text = null;
                    GridView4.Visible = true;
                }
                else if (RadioButtonList1.SelectedValue == "did")
                {
                    Info_id.Text = null;
                    Info_name.Text = null;
                    Info_phone.Text = null;
                    Info_ism.Text = null;
                    Info_did.Text = Info.Text;
                    GridView5.Visible = true;
                }
                
            }
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}