using System;

namespace WebApplication1
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnNext1_Click(object sender, EventArgs e)
        {
            MultiView1.SetActiveView(View2);
        }

        protected void btnPrevious1_Click(object sender, EventArgs e)
        {
            MultiView1.SetActiveView(View1);
        }

        protected void btnNext2_Click(object sender, EventArgs e)
        {
            // Fill summary labels with data from View1 and View2
            lblName.Text = txtName.Text;
            lblGender.Text = rbMale.Checked ? "Male" : rbFemale.Checked ? "Female" : "Not Specified";
            lblAddress.Text = txtAddress.Text;
            lblDegree.Text = txtDegree.Text;
            lblEmail.Text = txtEmail.Text;
            lblContact.Text = txtContact.Text;

            MultiView1.SetActiveView(View3);
        }

        protected void btnPrevious2_Click(object sender, EventArgs e)
        {
            MultiView1.SetActiveView(View2);
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Add code here to process or save the data
            Response.Write("Data Submitted Successfully!");
        }
    }
}