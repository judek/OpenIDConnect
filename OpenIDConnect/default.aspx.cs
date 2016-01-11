using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OpenIDConnect
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated)
            {
                Literal1.Text = "Welcome " + User.Identity.Name + "!" + "<br /><a href='https://accounts.google.com/logout'>Click here to logout</a>";
            }
         }
    }
}