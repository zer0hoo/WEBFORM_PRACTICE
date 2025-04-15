using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StateManagementDemoApp
{

    public partial class Default : System.Web.UI.Page
    {
        int Counter;
        static int SharedCounter; // static member는 자동적으로 모든 class의 instance들 사이에서 공유됨

        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write(DateTime.Now.ToLongDateString());
            lblCounter.Text = (++Counter).ToString();    // 얘는 항상 1임
            lblSharedCounter.Text = (++SharedCounter).ToString(); // 얘는 렌더링 될 떄마다 계속 1씩 늘어남
        }

        protected void btnSumbit_Click(object sender, EventArgs e)
        {
            MyData.Data += txtDemo.Text + "<br>";
        }
    }
}