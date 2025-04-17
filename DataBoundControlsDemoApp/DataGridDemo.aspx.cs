using System;
using System.Collections.Generic;
using System.Data;
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

        public bool IsEmpActive(object isActive)
        {
            if (isActive == DBNull.Value) return false;

            return Convert.ToBoolean(isActive);
        }

        public string GetYesOrNo(object isActive)
        {
            if (isActive == DBNull.Value)   // C#에서의 NULL이 아닌, DB에 저장된 데이터가 Null인 경우
            {
                return "Unknown";
            }
            else if (Convert.ToBoolean(isActive))
            {
                return "Yes";
            }
            else return "No";
        }

        protected void gvEmp_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Response.Write(gvEmp.SelectedValue + " - ");
            //Response.Write(gvEmp.SelectedDataKey.Values["Empname"]);
            int ind = gvEmp.SelectedIndex;
            GridViewRow gvr = gvEmp.Rows[ind]; // gvEmp.SelectedRow;
            Response.Write(gvr.Cells[3].Text);
            //CheckBox chk = (CheckBox) gvr.Cells[3].Controls[0];
            Label lbl = (Label)gvr.FindControl("lblIsActive");
            Response.Write(lbl.Text);
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

        protected void gvEmp_RowUpdating(object sender, GridViewUpdateEventArgs e) // 행이 업데이트 됐을 때 값 갱신해주는 역할 수행하는 함수
        {
            CheckBox chk = (CheckBox)gvEmp.Rows[e.RowIndex].FindControl("chkIsActive");
            e.NewValues["IsActive"] = chk.Checked;
            e.NewValues["UpdatedDate"] = DateTime.Now;
        }

        protected void dvEmp_ItemInserting(object sender, DetailsViewInsertEventArgs e)
        {
            e.Values["CreatedDate"] = DateTime.Now;
        }

        protected void dvEmp_ItemUpdating(object sender, DetailsViewUpdateEventArgs e)
        {
            CheckBox chk = (CheckBox)dvEmp.FindControl("chkIsActive");
            e.NewValues["IsActive"] = chk.Checked;
            e.NewValues["UpdatedDate"] = DateTime.Now;
        }

        decimal totalSalary;

        protected void gvEmp_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DataRowView drv = (DataRowView)e.Row.DataItem;
                decimal currentEmpSalary = Convert.ToDecimal(drv["EmpSalary"]);
                totalSalary += currentEmpSalary;
            } else if (e.Row.RowType == DataControlRowType.Footer)
            {
                Label lblTotalSalary = (Label)e.Row.FindControl("lblTotalSalary");
                lblTotalSalary.Text = totalSalary.ToString();
            }
        }
    }
}