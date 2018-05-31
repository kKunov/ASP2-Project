using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class AddtShirt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void addBtn_Click(object sender, EventArgs e)
    {
        string model    = tbModel.Text,
               maker    = tbMaker.Text,
               year     = tbYear.Text,
               color    = tbColor.Text,
               mail     = tbMail.Text;

        string q = "INSERT INTO [tshirts] (maker, model, color, colectionYear, addedByUserWithEmail) VALUES (@maker, @model, @color, @colectionYear, @mail);";


        using (SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["DB"].ConnectionString))
        {

            con.Open();
            
            using (var cmd = con.CreateCommand())
            {
                cmd.CommandText = q;

                cmd.Parameters.AddWithValue("@maker",           maker);
                cmd.Parameters.AddWithValue("@model",           model);
                cmd.Parameters.AddWithValue("@color",           color);
                cmd.Parameters.AddWithValue("@colectionYear",   year);
                cmd.Parameters.AddWithValue("@mail",            mail);

                cmd.ExecuteNonQuery();
                Response.Redirect("~/tShirts.aspx");
            }
        }
    }

    protected void cancelBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/tShirts.aspx");
    }
}