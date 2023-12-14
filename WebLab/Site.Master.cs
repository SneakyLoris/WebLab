using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;

namespace WebLab
{
    public partial class SiteMaster : MasterPage
    {
        public string Name
        {
            get => Greeting.InnerText;
            set
            {
                Greeting.InnerText = value.Trim();
                aExit.Visible = Greeting.InnerText.Trim() != "";
                aReg.Visible = !aExit.Visible;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["exit"] == "1")
            {
                Session["Name"] = null;
            }
            if (Session["Name"] != null && Session["Name"].ToString().Trim().Length > 0)
            {
                Name = Session["Name"].ToString();
            }
        }
    }
}