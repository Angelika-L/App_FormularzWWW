using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ankieta : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (this.CheckBox1.Checked || this.CheckBox2.Checked || this.CheckBox3.Checked)
        {
            this.Label1.Visible = true;
        }
        else
        {
            this.Label1.Visible = false;
        }
    }

    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        if (this.CheckBox1.Checked)
        {
            this.CheckBoxList1.Visible = true;
        }
        else
        {
            this.CheckBoxList1.Visible = false;
            foreach (ListItem i in this.CheckBoxList1.Items)
            {
                i.Selected = false;
            }
        }
    }

    protected void CheckBoxList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void CheckBoxList3_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
    {
        if (this.CheckBox2.Checked)
        {
            this.CheckBoxList2.Visible = true;
        }
        else
        {
            this.CheckBoxList2.Visible = false;
            foreach (ListItem i in this.CheckBoxList2.Items)
            {
                i.Selected = false;
            }
        }
    }

    protected void CheckBox3_CheckedChanged(object sender, EventArgs e)
    {
        if (this.CheckBox3.Checked)
        {
            this.CheckBoxList3.Visible = true;
        }
        else
        {
            this.CheckBoxList3.Visible = false;
            foreach (ListItem i in this.CheckBoxList3.Items)
            {
                i.Selected = false;
            }
        }
    }

    protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        String Osoba = this.TextBox1.Text + " " + this.TextBox2.Text;
        String Wynik = "";
        foreach (ListItem i in this.CheckBoxList1.Items)
        {
            if (i.Selected)
            { Wynik += i.Value + ";"; }
        }
        foreach (ListItem i in this.CheckBoxList2.Items)
        {
            if (i.Selected)
            { Wynik += i.Value + ";"; }
        }
        foreach (ListItem i in this.CheckBoxList3.Items)
        {
            if (i.Selected)
            { Wynik += i.Value + ";"; }
        }

        this.Label2.Text = "Osoba " + Osoba + " wybrala " + Wynik;
        this.Response.Redirect("strona222.aspx?OS=" + Osoba + "&WY=" + Wynik);
    }
}