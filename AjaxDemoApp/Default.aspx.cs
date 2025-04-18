using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AjaxDemoApp
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ddl1_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList ddl = (DropDownList)sender;
            txt1.Text = ddl.SelectedValue;
            txt2.Text = ddl.SelectedValue;
            txt3.Text = ddl.SelectedValue;

            System.Threading.Thread.Sleep(5000); // 5초 기다리는 시뮬레이션 하게 하려고 넣은 동작
        }
    }
}