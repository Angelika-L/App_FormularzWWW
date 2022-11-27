using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WynikAnkiety1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Label2.Text = "Osoba " + this.Request.QueryString["OS"];
        this.Label3.Text = "Wybrala " + this.Request.QueryString["WY"];
    }
}