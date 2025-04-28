using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Helper
/// </summary>
public class Helper
{
    public static string ConnectionString
    {
        get
        {
            return System.Configuration.ConfigurationManager.ConnectionStrings["EmpDBConnectionString"].ConnectionString;
        }
    }
}