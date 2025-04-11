using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstWebApplication
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            lblSelectedDate.Text = Calendar1.SelectedDate.ToLongDateString(); // Response.Write는 출력되는 화면의 소스코드를 보면 html 태그 밖에 삐져나와있음. 쓰지 않는 게 좋음.

        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        // 두번째 파라미터에 있는 eventArgs로부터 상속받은 파라미터를 적절히 이용할 줄 알아야 함.
        // 이 달력 객체에 대해서는 EventArgs로부터 상속받은 eventArgs가 파라미터로 들어와있음.
        {
            if (e.Day.IsWeekend)
            {
                e.Day.IsSelectable = false;
                e.Cell.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}