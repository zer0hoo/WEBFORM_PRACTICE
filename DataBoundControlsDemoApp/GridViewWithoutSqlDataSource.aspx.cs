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
        DataView dvEmp;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["test"].ConnectionString;
            SqlCommand cmd = new SqlCommand("Select * from Emp", con);
            SqlDataAdapter daEmp = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            daEmp.Fill(ds, "Emp");
            gvEmp.DataSource = dvEmp = ds.Tables[0].DefaultView;
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

            dvEmp.Sort = gvEmp.Attributes["SortField"] + " " + gvEmp.Attributes["SortOrder"];
            gvEmp.DataBind();
            gvEmp.Attributes["SortField"] = e.SortExpression;
        }
    }
}