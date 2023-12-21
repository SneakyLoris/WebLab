using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace WebLab
{
    public partial class CreatePost : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void CreatePostOnclick(object sender, EventArgs e)
        {
            Post post = new Post();
            if (Page.IsValid && Session["Name"] != null)
            {
                post.Id = 0;
                post.Title = TbTitle.Text;
                post.Text = TbDescr.Text;
                post.PublishTime = DateTime.Now;

                for (int i = 0; i < RadioButtonThemes.Items.Count; i++)
                    if (RadioButtonThemes.Items[i].Selected)
                        post.Theme = RadioButtonThemes.Items[i].Text;

                if (CheckAnon.Checked)
                    post.CreatorId = 1;
                else post.CreatorId = (int)Session["Id"];



                using (PostContext db = new PostContext())
                {
                    db.Posts.Add(post);
                    db.SaveChanges();
                }

                Response.Redirect("~/");
            }
        }
    }
}