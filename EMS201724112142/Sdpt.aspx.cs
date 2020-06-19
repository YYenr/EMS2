using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EMS201724112142
{
    public partial class Sdpt1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void All_Sdpt_Click(object sender, EventArgs e)
        {
            Response.Redirect("Sdpt.aspx");
        }

        protected void Search_Sdpt_Click(object sender, EventArgs e)
        {
            Response.Redirect("Sdpt2.aspx");
        }
    }
}