using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ControlsDemoApp
{
    public partial class Default2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                for (int i = 4; i < 10; i++)
                {
                    ListItem li1 = new ListItem("Item" + i, "Item " + i.ToString());
                    lbDemo.Items.Add(li1);
                    ListItem li2 = new ListItem("Item" + i, "Item " + i.ToString());
                    ddlDemo.Items.Add(li2);
                    ListItem li3 = new ListItem("Item" + i, "Item " + i.ToString());
                    cblDemo.Items.Add(li3);
                    ListItem li4 = new ListItem("Item" + i, "Item " + i.ToString());
                    rblDemo.Items.Add(li4);
                }
            }
        }

        protected void lst_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (sender is DropDownList)
            {
                DropDownList lst = (DropDownList) sender;
                Response.Write(lst.SelectedValue);
            }
            else if (sender is ListBox)
            {
                ListBox lb = (ListBox) sender;
                //Response.Write(lb.SelectedValue);
                string str = "";
                foreach (int ind in lb.GetSelectedIndices())
                {
                    str += lb.Items[ind].Value + " ";
                }
                Response.Write(str);
            }
            else if (sender is CheckBoxList)
            {
                CheckBoxList cbl = (CheckBoxList) sender;
                string str = "";
                foreach (ListItem li in cbl.Items)
                {
                    if (li.Selected) str += li.Value + " ";
                }
                Response.Write(str);
            }
            else if (sender is RadioButtonList)
            {
                RadioButtonList rbl = (RadioButtonList) sender;
                Response.Write(rbl.SelectedValue);
            }
        }
    }

}