using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebLab
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void BtnSave_Click(object sender, EventArgs e)
        {
            User user = new User();
            if (Page.IsValid)
            {
                user.Id = 0;
                user.Login = TbLogin.Text;
                user.Password = TPassword.Text;
                user.Name = TbName.Text;
                user.Age = int.Parse(TbAge.Text);

                using (UserContext db = new UserContext())
                {
                    db.Users.Add(user);
                    db.SaveChanges();
                }

                Session["Name"] = TbName.Text;
                ((SiteMaster)Master).Name = TbName.Text;

                Response.Redirect("~/");
            }
            
        }
    }
}