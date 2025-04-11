using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ValidattionControlsDemoApp
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write(DateTime.Now.ToString());
            if (!IsPostBack)
            {
                Page.Validate();
                ValidationSummary1.Style["diplay"] = "none";
            }
        }

        protected void cvUsername_ServerValidate(object source, ServerValidateEventArgs args) // 서버사이드에서 validation 컨트롤 하려면, 페이지 파일에서 js 말고 코드 비하인드에서 C# 코드 작성해주면 됨. 브라우저에서 scripting disable 돼있어도 서버에서 이렇게 제어해주면 validation 가능.
        {
            if (args.Value.Length < 8 || args.Value.Length > 15) args.IsValid = false;
            else args.IsValid = true;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Code for consume data from controls
            if (Page.IsValid)
            {
                return;
            }
            Response.Write("Saved");
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Write("Cancelled");
        }
    }
}