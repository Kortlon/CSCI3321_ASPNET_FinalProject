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
    public partial class AddAuthors : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAut_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = WebConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;

            //INSERT INTO Products VALUES (ProductName_fromUser, CategoryID_fromUser,Unit_fromUser,Price_fromUser)
            cmd.CommandText = "INSERT INTO Authors VALUES ('" + txtAutLast.Text + "', '" + txtAutFirst.Text + "', '" + txtAutGender.Text
                + "', '" + txtAutYear.Text + "-" + txtAutMonth.Text + "-" + txtAutDay.Text + "' )";

            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();

            txtAutLast.Text = " ";
            txtAutFirst.Text = " ";
            txtAutGender.Text = " ";
            txtAutYear.Text = "YYYY";
            txtAutMonth.Text = "MM";
            txtAutDay.Text = "DD";

        }
    }
}