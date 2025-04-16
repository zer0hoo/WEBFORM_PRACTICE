using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace DataBoundControlsDemoApp
{
    public partial class GridViewWithoutSqlDataSource : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) BindDataToGrid("");
            
        }

        void BindDataToGrid(string sort="")
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["test"].ConnectionString;
            SqlCommand cmd = new SqlCommand("Select * from Emp", con);
            SqlDataAdapter daEmp = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            daEmp.Fill(ds, "Emp");
            DataView dvEmp;
            gvEmp.DataSource = dvEmp = ds.Tables[0].DefaultView;
            dvEmp.Sort = sort;

            gvEmp.DataBind();
        }

        protected void gvEmp_Sorting(object sender, GridViewSortEventArgs e)
        {
            if (gvEmp.Attributes["SortField"] == null)
                gvEmp.Attributes["SortField"] = e.SortExpression;

            if (gvEmp.Attributes["SortOrder"] == null)
                gvEmp.Attributes["SortOrder"] = "Desc";

            if (gvEmp.Attributes["SortField"] == e.SortExpression)
                gvEmp.Attributes["SortOrder"] = (gvEmp.Attributes["SortOrder"].ToString() == "ASC") ? "DESC" : "ASC";
            else
                gvEmp.Attributes["SortOrder"] = "Asc";

            BindDataToGrid(gvEmp.Attributes["SortField"] + " " + gvEmp.Attributes["SortOrder"]);
            //dvEmp.Sort = gvEmp.Attributes["SortField"] + " " + gvEmp.Attributes["SortOrder"];
            //gvEmp.DataBind();
            gvEmp.Attributes["SortField"] = e.SortExpression;
        }

        

        protected void gvEmp_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvEmp.EditIndex = e.NewEditIndex;
            gvEmp.DataBind();
        }

        protected void gvEmp_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvEmp.EditIndex = -1;
            gvEmp.DataBind();
        }

        protected void gvEmp_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            TextBox txtName, txtSalary;
            CheckBox chkIsActive;

            txtName = (TextBox)gvEmp.Rows[e.RowIndex].Cells[1].Controls[0];
            txtSalary = (TextBox)gvEmp.Rows[e.RowIndex].Cells[2].Controls[0];
            chkIsActive = (CheckBox)gvEmp.Rows[e.RowIndex].Cells[3].Controls[0];

            int id = Convert.ToInt32(gvEmp.DataKeys[e.RowIndex]);
            // Code to update goes here
            BindDataToGrid("");
        }
    }
}