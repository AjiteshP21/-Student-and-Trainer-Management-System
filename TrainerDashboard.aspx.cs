using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ADONetWebApp
{
    public partial class TrainerDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["AdoNetDB"].ConnectionString;

            SqlConnection con = new SqlConnection(cs);

            SqlCommand cmd = new SqlCommand("Select * from Trainer",con);

            con.Open();

            SqlDataReader reader = cmd.ExecuteReader();

            gvTrainer.DataSource = reader;
            gvTrainer.DataBind();

            lblMessage.Text = "Trainer Loaded from Database";

        }
    }
}