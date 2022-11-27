using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Strona : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Label4.Text += DateTime.Now.ToLongTimeString() + "--";
        if(!Page.IsPostBack)
            {
            this.Label3.Text += DateTime.Now.ToLongDateString() + "; " + DateTime.Now.ToLongTimeString();
             }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        this.Label1.Text = "Witaj na mojej stronie " + this.TextBoxl.Text + " XD";
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        this.Label2.Text += this.Calendar1.SelectedDate.ToLongDateString() + " ; ";
    }
}