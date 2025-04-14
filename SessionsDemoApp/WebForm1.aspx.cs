﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SessionsDemoApp
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int n = 0;
            if (Session.IsNewSession)
                n = (int) Session["cnt"];
            n++;
            Session["cnt"] = n;
            lblCounter.Text = n.ToString();
        }
    }
}