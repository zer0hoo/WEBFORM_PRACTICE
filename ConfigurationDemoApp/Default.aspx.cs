using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Trace.Warn("Custom", "Begin");
        Page.MetaKeywords = "asp.net,C#";
        Page.MetaDescription = "This is an asp.net site that hosts asp.net tutorials.";
        Response.Write("URL: " + Request.Url + "<br>");
        Response.Write("Path: " + Request.Path + "<br>");
        Response.Write("FilePath: " + Request.FilePath + "<br>");
        Response.Write("RawUrl: " + Request.RawUrl + "<br>");
        Trace.Warn("Custom", "End");

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        ltrDemo.Text = txtDemo.Text;
    }
    protected void btnThrowException_Click(object sender, EventArgs e)
    {
        throw new ApplicationException("error...");
    }
    protected void Page_Error(object sender, EventArgs e)
    {
       
    }
}