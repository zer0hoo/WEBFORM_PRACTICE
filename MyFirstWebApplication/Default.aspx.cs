using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstWebApplication
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //TextBox1.Text = "Load";
        }
        protected void btnSayHello_Click(object sender, EventArgs e)
        {
            ltrMessage.Text = "Hello " + txtName.Text;
        }
    }
}