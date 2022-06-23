using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_com
{
    public partial class ViewCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["productlist"];

            for(int i =0; i< cookie.Values.Count; i++)
            {
                ViewCartCheckBoxList.Items.Add(cookie.Values[i]);
            }

        }

        
    }
}