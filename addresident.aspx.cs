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
            int i, j;
            DropDownDateOfBirthDay.Items.Add(new ListItem("Day", "-1"));
            DropDownAdmissionDateDay.Items.Add(new ListItem("Day", "-1"));
            DropDownDateOfBirthDay.SelectedIndex = 0;
            DropDownAdmissionDateDay.SelectedIndex = 0;
            for (i = 1; i < 32; i++)
            {
                DropDownDateOfBirthDay.Items.Add(new ListItem(i.ToString(), i.ToString()));
                DropDownAdmissionDateDay.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }
            DropDownDateOfBirtYear.Items.Add(new ListItem("Year", "-1"));
            DropDownAdmissionDateYear.Items.Add(new ListItem("Year", "-1"));
            DropDownAdmissionDateYear.SelectedIndex = 0;
            DropDownDateOfBirtYear.SelectedIndex = 0;
            for (i = 1930; i < DateTime.Now.Year; i++)
            {
                DropDownDateOfBirtYear.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }
            for (i = 2000; i < DateTime.Now.Year; i++)
            {
                DropDownAdmissionDateYear.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }

            DropDownProperty.Items.Add(new ListItem("Property", "-1"));
            DropDownProperty.SelectedIndex = 0;
            for (i = 1; i < 6; i++)
            {
                DropDownProperty.Items.Add(new ListItem("Property " + i.ToString(), i.ToString()));
            }
        }
    }
}