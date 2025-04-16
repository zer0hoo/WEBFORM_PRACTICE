using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DataBoundControlsDemoApp
{
    public partial class DataGridDemo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void gvEmp_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Response.Write(gvEmp.SelectedValue + " - ");
            //Response.Write(gvEmp.SelectedDataKey.Values["Empname"]);
            int ind = gvEmp.SelectedIndex;
            GridViewRow gvr = gvEmp.Rows[ind]; // gvEmp.SelectedRow;
            Response.Write(gvr.Cells[3].Text);
            CheckBox chk = (CheckBox) gvr.Cells[3].Controls[0];
        }

        protected void gvEmp_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "email")
            {
                int ind = Convert.ToInt32(e.CommandArgument);
                int empId = Convert.ToInt32(gvEmp.DataKeys[ind].Value);
                Response.Write("Email sent to emp with id=" + empId);
            }
            else if (e.CommandName == "sms")
            {
                int ind = Convert.ToInt32(e.CommandArgument);
                int empId = Convert.ToInt32(gvEmp.DataKeys[ind].Value);
                Response.Write("SMS sent to emp with id=" + empId);
            }
        }

        protected void dvEmp_ModeChanged(object sender, EventArgs e)
        {
            if (dvEmp.CurrentMode == DetailsViewMode.ReadOnly) gvEmp.Enabled = true;
            else gvEmp.Enabled = false;
        }

        protected void dvEmp_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
        {
            if (e.Exception != null)
            {
                string msg = e.Exception.Message;
                Response.Write(msg);
                e.ExceptionHandled = true;
                e.KeepInEditMode = true;
            } else gvEmp.DataBind();
        }

        protected void dvEmp_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
        {
            if (e.Exception != null)
            {
                string msg = e.Exception.Message;
                Response.Write(msg);
                e.ExceptionHandled = true;
                e.KeepInInsertMode = true;
            }
            else gvEmp.DataBind();
        }
    }
}