using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RedirectiongToAnotherPageDemoApp
{
    public partial class Target : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (PreviousPage == null)
            {
                string value = Request.QueryString["demo"];
                Response.Write("Hyperlink/Redirect" + value);
            }
            else if (PreviousPage.IsCrossPagePostBack)
            {
                //string value = Request.Form["txtDemo"];

                //TextBox txtDemo = (TextBox)PreviousPage.FindControl("txtDemo"); // controrl의 reference를 얻었고, control이 이전 페이지에서 가지고 있던 데이터, 속성을 사용 가능.
                //string value = txtDemo.Text;

                //string value = ((Source)PreviousPage).DemoText; // DemoText는 Source의 원소(?)임. 그래서 상위 타입인 Page의 Source로의 타입캐스팅 필요.
                string value = PreviousPage.DemoText; // aspx파일에서 PreviousPageType 설정해줌으로써 타입캐스팅 안해줘도 되게 됨.
                Response.Write("Cross Page Postback - " + value);
            }
            else
            {
                //string value = Context.Items["demo"].ToString();

                //TextBox txtDemo = (TextBox)PreviousPage.FindControl("txtDemo");
                //string value = txtDemo.Text;

                string value = ((Source)PreviousPage).DemoText; // DemoText는 Source의 원소(?)임. 그래서 상위 타입인 Page의 Source로의 타입캐스팅 필요.
                Response.Write("Transfer - " + value);
            }
        }
    }
}