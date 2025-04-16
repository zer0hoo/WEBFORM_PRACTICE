using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace DataBoundControlsDemoApp
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["test"].ConnectionString;
            SqlCommand cmd = new SqlCommand("Select * from Emp", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            lcDataReader.Text = "<table>";
            while (dr.Read())
            {
                lcDataReader.Text += "<tr>";
                lcDataReader.Text += "<td>" + dr["EmpId"];
                lcDataReader.Text += "<td>" + dr["EmpName"];
                lcDataReader.Text += "<td>" + dr["EmpSalary"];
                lcDataReader.Text += "</tr>";
            }
            lcDataReader.Text += "</table>";
            dr.Close();
            con.Close();
        }
    }
}