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
    public partial class Delete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadStudents();
            }
        }

        private void LoadStudents()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["AdoNetDB"].ConnectionString;

            SqlConnection con = new SqlConnection(connectionString);
            {
                SqlCommand cmd = new SqlCommand("SELECT RollNumber, Name FROM Student", con);

                con.Open();

                SqlDataReader reader = cmd.ExecuteReader();

                ddlStudents.DataValueField = "RollNumber";
                ddlStudents.DataTextField = "Name";

                ddlStudents.DataSource = reader;
                ddlStudents.DataBind();

                ddlStudents.Items.Insert(0, new ListItem() { Value = "-1", Text = "--- Select Student ---" });

                con.Close();
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                int RollNumber = int.Parse(ddlStudents.SelectedValue); // Corrected ddlStudent to ddlStudents

                if (RollNumber == -1)
                {
                    lblMessage.Text = "Please select a student to delete.";
                    return;
                }

                string connectionString = ConfigurationManager.ConnectionStrings["AdoNetDB"].ConnectionString;

                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    string cmdText = $"DELETE FROM Student WHERE RollNumber = ({RollNumber})";
                    SqlCommand cmd = new SqlCommand(cmdText, con);

                    con.Open();
                    int rowsAffected = cmd.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        lblMessage.Text = "Student deleted successfully.";
                        LoadStudents(); // Reload the student list after deletion
                    }
                    else
                    {
                        lblMessage.Text = "Failed to delete student. Please try again.";
                    }
                }
            }
            catch (Exception ex)
            {
                lblMessage.Text = "Error in deleting student: " + ex.Message;
            }
        }
    }
}