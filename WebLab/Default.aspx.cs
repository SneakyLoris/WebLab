using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebLab
{
    public partial class _Default : Page
    {
        List<User> lst = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            using (UserContext db = new UserContext())
            {
                lst = db.Users.Where(u => u.Age >= 18).ToList();
                ReorderAndBind();
            }
            AddBut.Visible = Session["Name"] != null && Session["Name"].ToString().Trim().Length > 0;
            DelBut.Visible = Session["Name"] != null && Session["Name"].ToString().Trim().Length > 0;
        }

        private void ReorderAndBind()
        {
            var fld = Request.QueryString["fld"];
            if (fld == null) fld = "id";
            switch (fld)
            {
                case "id":
                    {
                        lst = lst.OrderBy(u => u.Id).ToList();
                        break;
                    }
                case "name":
                    {
                        lst = lst.OrderBy(u => u.Name).ToList();
                        break;
                    }
                case "login":
                    {
                        lst = lst.OrderBy(u => u.Login).ToList();
                        break;
                    }
                case "age":
                    {
                        lst = lst.OrderBy(u => u.Age).ToList();
                        break;
                    }
            }
            DataList1.DataSource = lst;
            DataList1.DataBind();
        }
    }
}