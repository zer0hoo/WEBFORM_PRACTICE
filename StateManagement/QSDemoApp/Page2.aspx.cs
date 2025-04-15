using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QSDemoApp
{
    public partial class Page2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write(Context.Items["demo"].ToString()); // Page1에서 수신한 context를 이용해 화면에 내용 렌더링
        }
    }
}