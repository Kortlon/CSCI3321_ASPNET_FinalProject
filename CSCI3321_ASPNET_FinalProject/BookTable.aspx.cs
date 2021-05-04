﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CSCI3321_ASPNET_FinalProject
{
    public partial class BookTable : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = WebConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;

                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;

                cmd.CommandText = "SELECT * From Books " +
                    "INNER JOIN Authors ON Books.AuthorID = Authors.AuthorID " +
                    "INNER JOIN Genres ON Books.GenreID = Genres.GenreID " +
                    "INNER JOIN Publishers ON Books.PublisherID = Publishers.PublisherID"
                    ;

                conn.Open();

                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {

                        TableRow tr = new TableRow();
                        TableCell tc = new TableCell();
                        tc.Text = reader["Title"].ToString();
                        tr.Cells.Add(tc);

                        tc = new TableCell();
                        tc.Text = reader["FirstName"].ToString();
                        tr.Cells.Add(tc);

                        tc = new TableCell();
                        tc.Text = reader["LastName"].ToString();
                        tr.Cells.Add(tc);

                        tc = new TableCell();
                        tc.Text = reader["Price"].ToString();
                        tr.Cells.Add(tc);

                        tc = new TableCell();
                        tc.Text = reader["PublishDate"].ToString();
                        tr.Cells.Add(tc);

                        tc = new TableCell();
                        tc.Text = reader["PublisherName"].ToString();
                        tr.Cells.Add(tc);

                        tc = new TableCell();
                        tc.Text = reader["GenreName"].ToString();
                        tr.Cells.Add(tc);






                        tblBook.Rows.Add(tr);
                    }
                }
            }
        }
    }
}