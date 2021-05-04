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
    public partial class AddPublisher : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPub_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = WebConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;

            //INSERT INTO Products VALUES (ProductName_fromUser, CategoryID_fromUser,Unit_fromUser,Price_fromUser)
            cmd.CommandText = "INSERT INTO Publishers VALUES ('" + txtPublisherName.Text + "', '" + txtPubAddress.Text + "', '" + txtPubCity.Text
                + "', '" + txtPubPostal.Text + "', '" + txtCountry.Text + "', '" + txtPhoneNum.Text + "' )";

            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();


            txtPublisherName.Text = " ";
            txtPubAddress.Text = " ";
            txtPubCity.Text = " ";
            txtPubPostal.Text = " ";
            txtCountry.Text = " ";
            txtPhoneNum.Text = " ";
        }
    }
}