using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class rejestracja : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            this.MultiView1.SetActiveView(View1);
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }

    protected void MultiView1_ActiveViewChanged(object sender, EventArgs e)
    {
        if(this.MultiView1.ActiveViewIndex==1)
        {
            this.TextBox3.Text = this.TextBox1.Text;
            this.TextBox4.Text = this.TextBox2.Text;
        }

        if (this.MultiView1.ActiveViewIndex == 2)
        {
            this.TextBox10.Text = this.TextBox1.Text;
            this.TextBox11.Text = this.TextBox2.Text;
        }
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (this.DropDownList1.SelectedValue.ToString() == "Student")
            this.MultiView1.SetActiveView(View2);

            if (this.DropDownList1.SelectedValue.ToString() == "Gosc")
            this.MultiView1.SetActiveView(View3);
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        this.Response.Redirect("rejestracja wynik.aspx?KOT=" + this.TextBox3.Text + " " + this.TextBox5.Text);
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        this.Response.Redirect("rejestracja wynik.aspx?KOT=" + this.TextBox10.Text + " " + this.TextBox13.Text);
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        this.TextBox10.Text = "";
        this.TextBox11.Text = "";
        this.TextBox12.Text = "";
        this.TextBox13.Text = "";
        this.TextBox14.Text = "";
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        this.TextBox4.Text = "";
        this.TextBox2.Text = "";
        this.TextBox3.Text = "";
        this.TextBox5.Text = "";
        this.TextBox6.Text = "";
        this.TextBox7.Text = "";
        this.TextBox8.Text = "";
        this.TextBox9.Text = "";
    }
}