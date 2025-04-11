using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (ViewState["cnt"] == null)
            ViewState["cnt"] = 1;
        else
            ViewState["cnt"] = (int)ViewState["cnt"] + 1;
        lblDemo.Text = ViewState["cnt"].ToString();
        //ViewState["demo"] = new Demo();
    }
}

[Serializable]
public class Demo
{
    public int N;
}