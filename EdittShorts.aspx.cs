using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class EdittShorts : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void editBtn_Click(object sender, EventArgs e)
    {
        var model = ((TextBox)fv.FindControl("tbModel")).Text;
        var maker = ((TextBox)fv.FindControl("tbMaker")).Text;
        var year = ((TextBox)fv.FindControl("tbYear")).Text;
        var color = ((TextBox)fv.FindControl("tbColor")).Text;

        string size = ((TextBox)fv.FindControl("tbSize")).Text;

        using (SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["DB"].ConnectionString))
        {
            con.Open();

            string q = "UPDATE [shorts] SET maker = @maker, model = @model, color = @color, size = @size, colectionYear = @colectionYear WHERE shortsId = @Id";

            using (var cmd = con.CreateCommand())
            {
                cmd.CommandText = q;
                cmd.Parameters.AddWithValue("@Id", Session["shorts_id"]);
                cmd.Parameters.AddWithValue("@maker", maker);
                cmd.Parameters.AddWithValue("@model", model);
                cmd.Parameters.AddWithValue("@color", color);
                cmd.Parameters.AddWithValue("@size", size);
                cmd.Parameters.AddWithValue("@colectionYear", year);

                cmd.ExecuteNonQuery();
                Response.Redirect("~/Shorts.aspx");
            }
        }
    }

    protected void cancelBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Shorts.aspx");
    }
}