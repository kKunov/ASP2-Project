using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class EdittShirts : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void cancelBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/tShirts.aspx");
    }

    protected void editBtn_Click(object sender, EventArgs e)
    {
        var model = ((TextBox)fv.FindControl("tbModel")).Text;
        var maker = ((TextBox)fv.FindControl("tbMaker")).Text;
        var year = ((TextBox)fv.FindControl("tbYear")).Text;
        var color = ((TextBox)fv.FindControl("tbColor")).Text;

        using (SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["DB"].ConnectionString))
        {
            con.Open();

            string q = "UPDATE [tshirts] SET maker = @maker, model = @model, color = @color, colectionYear = @colectionYear WHERE tshirtId = @Id";

            using (var cmd = con.CreateCommand())
            {
                cmd.CommandText = q;
                cmd.Parameters.AddWithValue("@Id", Session["tshirt_id"]);
                cmd.Parameters.AddWithValue("@maker", maker);
                cmd.Parameters.AddWithValue("@model", model);
                cmd.Parameters.AddWithValue("@color", color);
                cmd.Parameters.AddWithValue("@colectionYear", year);

                cmd.ExecuteNonQuery();
                Response.Redirect("~/tShirts.aspx");
            }
        }
    }
}