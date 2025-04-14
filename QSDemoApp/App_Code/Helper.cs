using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QSDemoApp.App_Code
{
    public class Helper
    {
        public static string GetKeyValue(string key)
        {
            return HttpContext.Current.Request.QueryString[key]; // asp 페이지가 아닌 곳(이 파일 같이 클래스 같은)에서도 request, response 속성을 참조하는 방법
        }
    }
}