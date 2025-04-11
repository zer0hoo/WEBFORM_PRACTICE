using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MasterPagesDemoApp
{
    public partial class CSharp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDemo_Click(object sender, EventArgs e)
        {
            Label lbl = (Label) Master.FindControl("lblInMaster"); // 자식 페이지에서 master page의 원소에 접근하기 위한 방법 1.
            lbl.Text = "From button click of C# Page";
        }
    }
}