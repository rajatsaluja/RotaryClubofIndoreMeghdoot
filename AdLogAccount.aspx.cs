using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RotaryClub
{
    public partial class AdLogAccount : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlCommand cmd2 = new SqlCommand();
        SqlCommand cmd3 = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        SqlDataAdapter sda2 = new SqlDataAdapter();
        SqlDataAdapter sda3 = new SqlDataAdapter();
        DataSet ds = new DataSet();
        DataSet ds2 = new DataSet();
        DataSet ds3 = new DataSet();
        string oldpass = "";
        string str = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("MemArea.aspx");
            }
            else
                con.ConnectionString = "Server=tcp:lpapalal.database.windows.net,1433;Initial Catalog=lna;Persist Security Info=False;User ID=lna;Password=Redbirdie05;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";
            con.Open();


            str = Convert.ToString(Session["user"]);
            cmd.CommandText = "select * from Members where Email='" + str + "'";
            cmd.Connection = con;
            sda.SelectCommand = cmd;
            sda.Fill(ds, "Members");
            NameLabel.Text = "Hi, " + ds.Tables[0].Rows[0]["FName"].ToString() + " " + ds.Tables[0].Rows[0]["LName"].ToString();

        }

        protected void reset_btn_Click(object sender, EventArgs e)
        {

            cmd2.CommandText = "Select Password from MemLogin where Email='" + str + "'";
            cmd2.Connection = con;
            sda2.SelectCommand = cmd2;
            sda2.Fill(ds2, "MemLogin");
            oldpass = ds2.Tables[0].Rows[0]["Password"].ToString();

            if (oldpass == TextBox1.Text.ToString())
            {
                if (TextBox2.Text.ToString() == TextBox3.Text.ToString())
                {

                    SqlConnection con3 = new SqlConnection(@"Server=tcp:lpapalal.database.windows.net,1433;Initial Catalog=lna;Persist Security Info=False;User ID=lna;Password=Redbirdie05;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
                    SqlCommand cmd3 = new SqlCommand("Update MemLogin set Password='" + TextBox3.Text.ToString() + "' where Email='" + str + "'", con3);
                    con3.Open();
                    cmd3.ExecuteNonQuery();
                    con3.Close();
                    string msg = "You password has been sucessfully reset!";
                    string content = "window.onload=function(){alert('";
                    content += msg;
                    content += "');";
                    content += "window.location='";
                    content += Request.Url.AbsoluteUri;
                    content += "';}";
                    ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", content, true);

                }
                else
                {
                    errlbl.Text = "New passwords does not match! Please re-enter your new password and confirm it again.";
                }
            }
            else
            {
                errlbl.Text = "Your old password is not correct. Try again!";
            }

        }

        protected void Lout_btn_Click(object sender, EventArgs e)
        {
            Session["user"] = null;
            Response.Redirect("default.aspx");
        }
        protected void ADash_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdLogDashboard.aspx");
        }
    }
}