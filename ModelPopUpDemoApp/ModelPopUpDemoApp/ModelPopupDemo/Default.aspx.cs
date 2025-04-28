using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(Helper.ConnectionString);
    SqlDataAdapter da;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGrid();
        }
    }

    public void DeleteEmp(int PKId)
    {
        string query = "Delete from PersonalDetails where PKId=" + PKId;
        SqlCommand cmd = new SqlCommand(query, con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
    }
    public void BindGrid()
    {
        
         da = new SqlDataAdapter("Select PKId,FirstName,LastName,Gender from PersonalDetails", con);
         ds = new DataSet();
        da.Fill(ds, "PersonalDetails");
        gvEmp.DataSource = ds.Tables["PersonalDetails"];
        gvEmp.DataBind();
    }
    protected void gvEmp_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "getPersonalDetails")
        {
            //int pkid = Convert.ToInt32(e.CommandArgument);
            //da = new SqlDataAdapter("Select PKId,FirstName,LastName,Gender from PersonalDetails where PKId=" +pkid, con);
            //ds = new DataSet();
            //da.Fill(ds, "PersonalDetails");
            //dvEmp.DataSource = ds.Tables["PersonalDetails"];
            //dvEmp.DataBind();
            sdsEmp.SelectParameters["PKId"].DefaultValue = e.CommandArgument.ToString();
            sdsEmp.DataBind();
            dvEmp.ChangeMode(DetailsViewMode.ReadOnly);
            mpe.Show();
        }
        if (e.CommandName == "Delete")
        {
            int id = Convert.ToInt32(e.CommandArgument);
            DeleteEmp(id);
            Response.Redirect(Request.RawUrl);
        }
    }
    protected void dvEmp_ModeChanging(object sender, DetailsViewModeEventArgs e)
    {

        mpe.Show();
    }
    protected void dvEmp_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
    {
        gvEmp.DataBind();
    }
    protected void dvEmp_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
    {
        gvEmp.DataBind();
    }
    protected void btncancel_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect(Request.RawUrl);
    }
    protected void gvEmp_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }
}
