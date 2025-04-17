using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DataBoundControlsDemoApp
{
    public partial class EmployeeWithDepartmentDetails : System.Web.UI.Page
    {

        public string GetDepartmentName(object deptId)
        {
            //SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["test"].ConnectionString);
            //SqlCommand cmd = new SqlCommand("Select DeptName from Department where deptid=" + deptId);
            //con.Open();
            //string deptName = cmd.ExecuteScalar().ToString();
            //con.Close();

            //return deptName;

            dvDept.RowFilter = "DeptId=" + deptId;
            DataRowView drv = dvDept[0];

            return drv["DeptName"].ToString();
        }

        DataView dvDept;
        protected void Page_Load(object sender, EventArgs e)
        {
            //SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["test"].ConnectionString);
            //SqlDataAdapter da = new SqlDataAdapter("Select DeptId, DeptName from Department", con);
            //DataSet ds = new DataSet();
            //da.Fill(ds, "Department");
            //dvDept = ds.Tables[0].DefaultView;
            DataSourceSelectArguments args = new DataSourceSelectArguments();
            dvDept = (DataView)sdsDepartment.Select(args);
        }
    }
}