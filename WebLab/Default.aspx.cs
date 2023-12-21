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
        // TODO
        /*         сделать кнопки для создания, удаления поста только для авторизованных пользователей
         *         Сделать так чтобы это все работало на главной странице ✔
         *         сдеать форму для создания постов ✔
         *         radiobutton and combobox ✔
         *         в этой форму сделать проверку ошибок итд 
         *         добавить куки не куки (ViewState,  Query String,  Cookies,  Session State,  Application State.) 
         */
        List<Post> lst = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            using (PostContext db = new PostContext())
            {
                lst = db.Posts.ToList();
                ReorderAndBind();
            }
        }

        private void ReorderAndBind()
        {
            DataList1.DataSource = lst;
            DataList1.DataBind();
        }
    }
}