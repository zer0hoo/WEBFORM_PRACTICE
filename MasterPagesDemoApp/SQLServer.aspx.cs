using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MasterPagesDemoApp
{
    public partial class SQLServer : System.Web.UI.Page
    {
        protected void Page_LoadComplete(object sender, EventArgs e)
        {
            Label lblInMaster = (Label)Master.FindControl("lblInMaster");
            lblInMaster.Text = "From Page Load of SQL Server";
        }
    }
}