using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class wyszukiwanieTytulu : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["WT"] = (string)this.TextBox1.Text;
        this.Response.Redirect("WynikiWyszukiwania.aspx");

    }
}