using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CSCI3321_ASPNET_FinalProject
{
    public partial class AddBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBkSub_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = WebConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;

            cmd.CommandText = "INSERT INTO Books VALUES ('" + txtBkTitle.Text + "', " + ddlAuthor.SelectedValue + ", '" + txtBkPrice.Text
                + "', '" + txtBkYear.Text + "-" + txtBkMonth.Text + "-" + txtBkDay.Text + "', " + ddlPublisher.SelectedValue + ", " + ddlGenre.SelectedValue + 
                ",'" + txtBkWrd.Text + "')";


            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();

            txtBkTitle.Text = " ";
            txtBkPrice.Text = " ";
            txtBkYear.Text = " ";
            txtBkMonth.Text = " ";
            txtBkDay.Text = " ";
            txtBkWrd.Text = " ";
        }

        protected void btnBooktbl_Click(object sender, EventArgs e)
        {
            Response.Redirect("BookTable.aspx");
        }
    }
}