using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ADONetWebApp
{
    public partial class CreateStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadTrainers();
            }
        }
        private void LoadTrainers()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["AdoNetDB"].ConnectionString;

            SqlConnection con = new SqlConnection(connectionString);
            {
                SqlCommand cmd = new SqlCommand("SELECT * FROM trainer", con);

                con.Open();

                SqlDataReader reader = cmd.ExecuteReader();

                ddlTrainers.DataValueField = "Id";
                ddlTrainers.DataTextField = "Name";

                ddlTrainers.DataSource = reader;
                ddlTrainers.DataBind();

                ddlTrainers.Items.Insert(0, new ListItem() { Value = "-1", Text = "--- Select Trainer ---" });

                con.Close();
            }
        }
        protected void btncreate_Click(object sender, EventArgs e)
        {
            try
            {
                string name = txtName.Text;
                //string gender = txtGender.Text;
                var items = rblGender.Items.Cast<ListItem>();
                string gender = items.FirstOrDefault(i => i.Selected == true)?.Value; // class ka default value null hota he iske le liye apan ? use ker rahe he ? ka Matlab null he to age kuch ker mat
                                                                                      //string trainer=txtTrainer.Text;
                int trainerId = int.Parse(ddlTrainers.SelectedValue);

                string connectionString = ConfigurationManager.ConnectionStrings["AdoNetDB"].ConnectionString;

                SqlConnection con = new SqlConnection(connectionString);

                string cmdText = $"insert into Student values ('{name}', '{gender}', {trainerId})";
                SqlCommand cmd = new SqlCommand(cmdText, con);

                con.Open();
                int rowsAffected = cmd.ExecuteNonQuery();

                if (rowsAffected > 0)
                {
                    Response.Redirect("StudentDashboard.aspx");
                }

                else
                {
                    lblMessage.Text = "Failed to create student. Please try again.";

                }
            }
            catch
            {
                lblMessage.Text = "Error in creating Student";
            }
            
        }
    }
}