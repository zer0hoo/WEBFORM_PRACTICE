using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MasterPagesDemoApp
{
    public partial class CoursesMasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblInMaster.Text = "From Page Load of Master";
        }

        protected void btnDemo_Click(object sender, EventArgs e)
        {
            lblInMaster.Text = "From Button Click of Master Page";
        }

        public string MasterLabelText
        {
            get { return lblInMaster.Text; }
            set { lblInMaster.Text = value; }
        }

    }
}