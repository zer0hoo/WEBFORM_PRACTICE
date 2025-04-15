<%@ Application Language="C#" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
        // Code that runs on application startup

    }
    
    void Application_End(object sender, EventArgs e) 
    {
        //  Code that runs on application shutdown

    }

    void Application_BeginRequest(object sender, EventArgs e)
    {
        string path = Request.Path;
        if (path.StartsWith("/product"))
        {
            string [] split = path.Split('/');
            string file = split[2].Split('.')[0];            
            Context.RewritePath("~/Computer.aspx", "", "Id=" + file);
        }
    }
    
    void Application_Error(object sender, EventArgs e) 
    { 
        // Code that runs when an unhandled error occurs
        Exception ex = Context.Error.InnerException;
        if (ex is ApplicationException)
        {
            //log...
            Response.Write(ex.Message);
            Context.ClearError();
            //Response.Redirect("~/");
        }
    }

    void Session_Start(object sender, EventArgs e) 
    {
        // Code that runs when a new session is started

    }

    void Session_End(object sender, EventArgs e) 
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }
       
</script>
