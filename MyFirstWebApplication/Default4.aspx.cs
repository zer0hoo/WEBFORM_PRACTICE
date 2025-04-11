using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstWebApplication
{
    public partial class Default4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)   // form 제출로 인한 postBack이 아닌, 페이지가 처음 호출됐거나 refresh 됐을 때만 동작하게 조건문 추가(this는 넣어주지 않아도 알아서 컴파일 해줌)
            {
                for (int i = 0; i < 10; i++)
                {
                    ListItem li = new ListItem();
                    li.Text = "Item" + i;
                    li.Value = i.ToString();
                    lstLeft.Items.Add(li);
                }
            } 
        }

        protected void btnMoveToRight_Click(object sender, EventArgs e)
        {
            ListItem li = lstLeft.SelectedItem;
            lstLeft.Items.Remove(li);
            li.Selected = false;
            lstRight.Items.Add(li);
        }

        protected void btnMoveToLeft_Click(object sender, EventArgs e)
        {
            ListItem ri = lstRight.SelectedItem;
            lstRight.Items.Remove(ri);
            ri.Selected = false;
            lstLeft.Items.Add(ri);
        }
    }
}