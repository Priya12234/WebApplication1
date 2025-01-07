﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try 
            {
                string filename = FileUpload1.FileName;
                string path = Server.MapPath("~/Files/")+filename;
                FileUpload1.SaveAs(path);
                Label1.Text = "File Uploaded Successfully";
            }
            catch (Exception ex) 
            {
                Label1.Text += ex.Message;
            }
        }
    }
}