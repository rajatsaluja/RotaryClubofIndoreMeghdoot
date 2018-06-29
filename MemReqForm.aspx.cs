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
    public partial class MemReqForm : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();    

        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = "Data Source=localhost;Initial Catalog=RotaryClub;Integrated Security=True";
            con.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand ("Insert into MemReq"+ " (FName, LName, DOB, Gender, Email, PNo, Occupation, SFName, SLName, DOA) values (@FName, @LName, @DOB, @Gender, @Email, @PNo, @Occupation, @SFName, @SLName, @DOA)", con);
            cmd.Parameters.AddWithValue("@FName", TextBox1.Text);
            cmd.Parameters.AddWithValue("@LName", TextBox2.Text);
            cmd.Parameters.AddWithValue("@DOB", TextBox3.Text);
            cmd.Parameters.AddWithValue("@Gender", DropDownList1.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Email", TextBox4.Text);
            cmd.Parameters.AddWithValue("@PNo", TextBox5.Text);
            cmd.Parameters.AddWithValue("@Occupation", TextBox6.Text);
            cmd.Parameters.AddWithValue("@SFName", TextBox7.Text);
            cmd.Parameters.AddWithValue("@SLName", TextBox8.Text);
            cmd.Parameters.AddWithValue("@DOA", TextBox9.Text);
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