using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EMS201724112142
{
    public partial class Seqp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Search_Equip_Click(object sender, EventArgs e)
        {
            Response.Redirect("Sequip2.aspx");
        }

        protected void All_Equip_Click(object sender, EventArgs e)
        {
            Response.Redirect("Sequip.aspx");

        }
    }
}