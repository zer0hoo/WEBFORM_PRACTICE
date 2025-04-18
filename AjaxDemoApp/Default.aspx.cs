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
            if (!IsPostBack) lblServerTime.Text = DateTime.Now.ToLongTimeString();
        }

        protected void ddl1_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList ddl = (DropDownList)sender;
            txt1.Text = ddl.SelectedValue;
            txt2.Text = ddl.SelectedValue;
            txt3.Text = ddl.SelectedValue;
            ScriptManager1.AddHistoryPoint("sv", ddl.SelectedValue);
            ScriptManager1.AddHistoryPoint("ddl", ddl.ID);

            throw new ApplicationException("Some error");

            //System.Threading.Thread.Sleep(5000); // 5초 기다리는 시뮬레이션 하게 하려고 넣은 동작
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            lblServerTime.Text = DateTime.Now.ToLongTimeString();
        }

        protected void btnShowServerTime_Click(object sender, EventArgs e)
        {
            string script = "alert('" + DateTime.Now.ToLongTimeString() + "');";
            //Page.ClientScript.RegisterStartupScript(typeof(Page), "k1", script, true);
            ScriptManager.RegisterStartupScript(btnShowServerTime, UpdatePanel4.GetType(), "k1", script, true);
        }

        protected void ScriptManager1_Navigate(object sender, HistoryEventArgs e)
        {
            string selectedValue = e.State["sv"];
            txt1.Text = selectedValue;
            txt2.Text = selectedValue;
            txt3.Text = selectedValue;
            if (ddl1.ID == e.State["ddl"])
                ddl1.SelectedValue = e.State["sv"];
            if (ddl2.ID == e.State["ddl"])
                ddl2.SelectedValue = e.State["sv"];
            if (ddl3.ID == e.State["ddl"])
                ddl3.SelectedValue = e.State["sv"];
            if (ddl4.ID == e.State["ddl"])
                ddl4.SelectedValue = e.State["sv"];

            UpdatePanel1.Update();
        }

        protected void ScriptManager1_AsyncPostBackError(object sender, AsyncPostBackErrorEventArgs e)
        {
            ScriptManager1.AsyncPostBackErrorMessage = "My custom Error message - " + e.Exception.Message;
        }
    }
}