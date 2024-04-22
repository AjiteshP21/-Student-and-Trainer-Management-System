using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ADONetWebApp
{
    public partial class Home : System.Web.UI.Page
    {
        //Page Level Event
        protected void Page_Load(object sender, EventArgs e)
        {
            //Page_Load is mostly used we can do every work of Page Init, Page Prerender 
            //txtAspx.Text = "ASPX TextBox";
            //txtHTML.Value = "HTML TextBox";

            //if(IsPostBack)
            //{
            //    Response.Write("Post Request: Page_Load <br/>");
            //}
            //else
            //{
            //    Response.Write("Get Request: Page_Load <br/>");
            //}
        }
        protected void Page_Init(object sender, EventArgs e)
        {
            //Response.Write("Page_Init <br/>");
        }
        protected void Page_PreRender(object sender, EventArgs e)
        {
            //Response.Write("Page_PreRender <br/>");
        }

        protected void btnLoad_Click(object sender, EventArgs e)
        {
            //Response.Write("btnLoad_Click <br/>");

        }
        protected void btnCreateStudent_Click(object sender, EventArgs e)
        {
            //Response.Write("btnLoad_Click <br/>");

        }
    }
}