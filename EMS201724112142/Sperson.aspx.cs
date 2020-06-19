using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EMS201724112142
{
    public partial class Sperson : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Search_Sper_Click(object sender, EventArgs e)
        {
            Response.Redirect("Sperson2.aspx");
        }

        protected void All_Sper_Click(object sender, EventArgs e)
        {
            Response.Redirect("Sperson.aspx");
        }
    }
}