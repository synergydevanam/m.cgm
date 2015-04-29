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
        if (!IsPostBack)
        {
            DropDownExpireMonth.Items.Add(new ListItem("Month", "-1"));
            DropDownExpireMonth.Items.Add(new ListItem("January", "1"));
            DropDownExpireMonth.Items.Add(new ListItem("February", "2"));
            DropDownExpireMonth.Items.Add(new ListItem("March", "3"));
            DropDownExpireMonth.Items.Add(new ListItem("April", "4"));
            DropDownExpireMonth.Items.Add(new ListItem("May", "5"));
            DropDownExpireMonth.Items.Add(new ListItem("June", "6"));
            DropDownExpireMonth.Items.Add(new ListItem("July", "7"));
            DropDownExpireMonth.Items.Add(new ListItem("August", "8"));
            DropDownExpireMonth.Items.Add(new ListItem("September", "9"));
            DropDownExpireMonth.Items.Add(new ListItem("October", "10"));
            DropDownExpireMonth.Items.Add(new ListItem("November", "11"));
            DropDownExpireMonth.Items.Add(new ListItem("December", "12"));

            for (int i = DateTime.Now.Year, j = i + 10; i <j; i++)
            {
                DropDownExpireYear.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }

            DropDownExpireDay.Items.Add(new ListItem("Day", "-1"));
            for (int i = 1; i < 32; i++)
            {
                DropDownExpireDay.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }
        }
    }
}