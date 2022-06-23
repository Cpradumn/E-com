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
        string[] categories = { "furniture", "Electronics", "Camera", "HomeNeeds" };
        string[] furniture = { "sofa 13500 RS", "Chair 500 RS" };
        string[] Electronics = { "Sony Led TV 45600 RS", "Lenevo ThinkPad", "Hp ProBook 440 G6" };
        string[] Camera = { "Nikon", "canon", "Sony" };
        string[] HomeNeeds = { "Sugar", "Harpik", "cooker" };

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
            string categories = ddlcategories.SelectedItem.ToString();

            if (categories == "Electronics")
            {
                catcheckBox.DataSource = Electronics;
            }
            else if (categories == "HomeNeeds")
            {
                catcheckBox.DataSource = HomeNeeds;
            }
            else if (categories == "Camera")
            {
                catcheckBox.DataSource = Camera;
            }

            else if (categories == "furniture")
            {
                catcheckBox.DataSource = furniture;
            }


            catcheckBox.DataBind();
        }

        protected void catcheckBox_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void orderBtn_Click(object sender, EventArgs e)
        {
            string data = "Selected products";

            foreach(ListItem item in catcheckBox.Items)
            {
                if(item.Selected)
                {
                    data += item.Text + " ";
                }
            }
            messageLabel.Text = data;
        }
    }
}