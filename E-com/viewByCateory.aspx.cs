using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_com
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        string[] categories = { "furniture", "Electronics", "Camera", "Home Needs" };
        string[] furniture = { "sofa 13500 RS", "Chair 500 RS" };
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                ddlcategories.DataSource = categories;
                catcheckBox.DataSource = furniture;
                //catcheckBox.DataSource = Electronics;
                //catcheckBox.DataSource = camera;
                //catcheckBox.DataSource = HomeNeeds;

            }
            Page.DataBind();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string[] Electronics = { "Sony Led TV 45600 RS", "Lenevo ThinkPad", "Hp ProBook 440 G6" };
            string[] camera = { "Nikon", "canon", "Sony" };
            string[] HomeNeeds = { "Sugar", "Harpik", "cooker" };
        }
    }
}