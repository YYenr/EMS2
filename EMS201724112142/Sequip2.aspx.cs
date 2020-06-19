using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EMS201724112142
{
    public partial class SSearch : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.Visible = false;
            GridView2.Visible = false;
            GridView3.Visible = false;
            GridView4.Visible = false;
            GridView5.Visible = false;
            GridView6.Visible = false;
            Info_id.Visible = false;
            Info_sname.Visible = false;
            Info_place.Visible = false;
            Info_date.Visible = false;
            Info_mname.Visible = false;
            Info_dname.Visible = false;
        }
        protected void All_Equip_Click(object sender, EventArgs e)
        {
            Response.Redirect("Sequip.aspx");
        }

        protected void Search_Equip_Click(object sender, EventArgs e)
        {
            Response.Redirect("Sequip2.aspx");
        }

        protected void Search_Click(object sender, EventArgs e)
        {
            if (RadioButtonList1.SelectedValue!=null)
            {
                if (RadioButtonList1.SelectedValue == "sid")
                {
                    //将输入的查询信息给Info_id控件
                    Info_id.Text = Info.Text;
                    Info_sname.Text = null;
                    Info_date.Text = null;
                    Info_place.Text = null;
                    Info_mname.Text = null;
                    Info_dname.Text = null;
                    //按编号查询到的结果，显示出来
                    GridView1.Visible = true;
                }
                else if (RadioButtonList1.SelectedValue == "sname")
                {
                    //将输入的查询信息给Info_sname控件
                    Info_sname.Text = Info.Text;
                    Info_id.Text = null;
                    Info_date.Text = null;
                    Info_place.Text = null;
                    Info_mname.Text = null;
                    Info_dname.Text = null;
                    //按设备名称查询到的结果，显示出来
                    GridView2.Visible = true;
                }
                else if (RadioButtonList1.SelectedValue == "sdate")
                {
                    Info_id.Text = null;
                    Info_sname.Text = null;
                    Info_place.Text = null;
                    Info_mname.Text = null;
                    Info_dname.Text = null;
                    //将输入的查询信息给Info_date控件
                    Info_date.Text = Info.Text;
                    //按日期查询到的结果，显示出来
                    GridView3.Visible = true;
                }
                else if (RadioButtonList1.SelectedValue == "splace")
                {
                    //将输入的查询信息给Info_place控件
                    Info_place.Text = Info.Text;
                    Info_id.Text = null;
                    Info_sname.Text = null;
                    Info_date.Text = null;
                    Info_mname.Text = null;
                    Info_dname.Text = null;
                    //按存放位置查询到的结果，显示出来
                    GridView4.Visible = true;
                }
                else if (RadioButtonList1.SelectedValue == "mname")
                {
                    //将输入的查询信息给Info_mname控件
                    Info_mname.Text = Info.Text;
                    Info_id.Text = null;
                    Info_sname.Text = null;
                    Info_date.Text = null;
                    Info_place.Text = null;
                    Info_dname.Text = null;
                    //按设备负责人名字查询到的结果，显示出来
                    GridView5.Visible = true;
                }
                else if (RadioButtonList1.SelectedValue == "dname")
                {
                    //将输入的查询信息给Info_dname控件
                    Info_dname.Text = Info.Text;
                    Info_id.Text = null;
                    Info_sname.Text = null;
                    Info_date.Text = null;
                    Info_place.Text = null;
                    Info_mname.Text = null;
                    //按设备负责的部门查询到的结果，显示出来
                    GridView6.Visible = true;
                }
            }
            
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
        }
    }
}