using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace ControlDemoApp
{
    public partial class LoginUserControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(BackgroundColor)) BackgroundColor = "AliceBlue"; // 배경색 설정안돼있으면 기본 컬러 부여
        }

        public event AuthenticatedHandler Authenticated;    // 이벤트를 발생시키기 위해 우선 선언을 해주어야 함. delegate로 EventHandler를 선언, On 접두사로 연결되는 핸들러에 매개변수 전달

        public string UsernameLabel
        {
            get
            {
                return ltrUserName.Text;
            }
            set
            {
                ltrUserName.Text = value;
            }
        }

        public string PasswordLabel
        {
            get { return ltrPassword.Text; }
            set
            {
                ltrPassword.Text = value;
            }
        }

        public string ReturnUrl // 이렇게 필드 선언해두면 페이지 파일에서 파라미터로 사용 가능
        {
            get;
            set;
        }

        public Boolean isAuthenticated
        {
            get;
            set;
        }

        public string InvalidUserMessage
        {
            get;
            set;
        }

        public string BackgroundColor
        {
            get;
            set;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string un = txtUserName.Text;
            string pwd = txtPassword.Text;
            if (un != "" && pwd != "" && un != pwd) // 유효성 검증됐을 경우
            {
                isAuthenticated = true;
                // 유저 컨트롤 호출 시에 명시적으로 연결되어있지 않다면 Authenticated는 null 상태를 유지함.
                if (Authenticated != null)
                {
                    AuthenticatedEventArgs args = new AuthenticatedEventArgs() { AuthenticatedUsername = un };
                    Authenticated(this, args);    // 선언한 이벤트 객체 null 아니면 = 이 함수 호출 시에 Authenticated 이벤트에 핸들러가 연결되어 있다면(OnAuthenticated로 파라미터 전달된 경우) -> 이벤트 발생시킴.
                }
                //if (string.IsNullOrEmpty(ReturnUrl)) Response.Redirect("~/"); // ReturnUrl이 파라미터로 설정돼있지 않을 경우
                //else Response.Redirect(ReturnUrl);  // ReturnUrl이 설정돼있는 경우
            }
            else
            {
                isAuthenticated = false;
                if (string.IsNullOrEmpty(InvalidUserMessage)) lblError.Text = "Invalid Username or Password";
                else lblError.Text = InvalidUserMessage;

            }
        }
    }

    public delegate void AuthenticatedHandler(object sender, AuthenticatedEventArgs e);

    public class AuthenticatedEventArgs : EventArgs    // EventArgs를 상속받아 이벤트 처리에 사용될 새로운 데이터 정의
    {
        public string AuthenticatedUsername
        {
            get;
            set;
        }
    }

}