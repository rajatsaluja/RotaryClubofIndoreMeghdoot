using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace RotaryClub
{
    public partial class TContactUS : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();


        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = "Server=tcp:lpapalal.database.windows.net,1433;Initial Catalog=lna;Persist Security Info=False;User ID=lna;Password=Redbirdie05;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";
            con.Open();

        }

        protected void submit_btn_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Insert into RContactUs" + " (FName, LName, Email, PNo, Feedback) values (@FName, @LName,@Email, @PNo, @Feedback)", con);
            cmd.Parameters.AddWithValue("@FName", TextBox1.Text);
            cmd.Parameters.AddWithValue("@LName", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Email", TextBox3.Text);
            cmd.Parameters.AddWithValue("@PNo", TextBox4.Text);
            cmd.Parameters.AddWithValue("@Feedback", TextArea5.Text);
            cmd.ExecuteNonQuery();
            string msg = "You form has been sucessfully submitted!";
            string content = "window.onload=function(){alert('";
            content += msg;
            content += "');";
            content += "window.location='";
            content += Request.Url.AbsoluteUri;
            content += "';}";
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", content, true);
        }
    }
}