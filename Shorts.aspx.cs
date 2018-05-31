using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Shorts : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void addNewShorts_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/AddShorts.aspx");
    }

    protected void deleteBtn_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["DB"].ConnectionString))
        {
            con.Open();

            string q = "DELETE FROM shorts WHERE shortsId = @id";

            using (var cmd = con.CreateCommand())
            {
                cmd.CommandText = q;
                cmd.Parameters.AddWithValue("@id", ((Button)sender).CommandArgument);

                cmd.ExecuteNonQuery();
                Response.Redirect("~/Shorts.aspx");
            }
        }
    }

    protected void editBtn_Click(object sender, EventArgs e)
    {
        Session["shorts_id"] = ((Button)sender).CommandArgument;
        Response.Redirect("~/EdittShorts.aspx");
    }
}