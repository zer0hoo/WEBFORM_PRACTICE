using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstWebApplication
{
    public partial class Default2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void rbnColor_CheckedChanged(object sender, EventArgs e)  // sender -> reference to the control, which has raised the event(이 예제에서는 radio button)
        {
            // 아래 주석한 조건문으로 짠 반복되는 부분을, sender object를 이용해서 좀 더 유지보수성이 높은 코드로
            RadioButton rbn = (RadioButton) sender; // object 형식을 원하는 타입으로 캐스팅
            lblDemo.ForeColor = System.Drawing.Color.FromName(rbn.Text);

            //if (rbnRed.Checked) lblDemo.ForeColor = System.Drawing.Color.Red;
            //else if (rbnGreen.Checked) lblDemo.ForeColor = System.Drawing.Color.Green;
            //else lblDemo.ForeColor = System.Drawing.Color.Blue;
        }
    }
}