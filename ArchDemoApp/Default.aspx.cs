using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ArchDemoApp.App_Code;

namespace ArchDemoApp
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write(Demo.SayHello());
            Response.Write(Demo2.SayBye ());
        }
    }

}