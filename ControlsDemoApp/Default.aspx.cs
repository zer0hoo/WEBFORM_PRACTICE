using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ControlsDemoApp
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Label1.Text = "a<b"; // Encode 해주지 않으면 <b가 태그 열리는 것으로 인식.
            //Label1.Text = Server.HtmlEncode("a<b");
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            Response.Write("Deleted");
        }

        protected void btnAdd_Command(object sender, CommandEventArgs e)
        {
            switch (e.CommandName)
            {
                case "Add":
                    Response.Write("Added");
                    break;
                case "Edit":
                    Response.Write("Edited");
                    break;
                case "Del":
                    Response.Write("Deleted");
                    break;
            }
        }

        protected void lbtn_Click(object sender, EventArgs e)
        {

        }
    }
}