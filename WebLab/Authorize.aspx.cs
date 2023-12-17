using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace WebLab
{
    public partial class Authorize : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        // не хватает перехода на главную странкицу
        protected void PasswordChecked(object sender, EventArgs e)
        {
            if(Page.IsValid)
            {
                using (UserContext db = new UserContext())
                {
                    List<User> users = db.Users.ToList();
                    foreach (User user in users)
                    {
                        if(user.Login == TbLogin.Text) // Пока без проверки пароля
                        {
                            Session["Name"] = user.Name;
                            ((SiteMaster)Master).Name = user.Name;
                            Response.Redirect("~/");
                        }
                    }
                }

            }
        }
    }
}