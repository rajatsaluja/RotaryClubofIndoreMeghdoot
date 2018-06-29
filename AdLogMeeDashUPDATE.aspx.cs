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
    public partial class AdLogMeeDashUPDATE : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();

        SqlConnection con2 = new SqlConnection();
        SqlCommand cmd2 = new SqlCommand();
        SqlDataAdapter sda2 = new SqlDataAdapter();
        DataSet ds2 = new DataSet();

        SqlCommand cmd3 = new SqlCommand();


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                if (Session["user"] == null)
                {
                    Response.Redirect("MemArea.aspx");
                }
                else
                    con.ConnectionString = "Server=tcp:lpapalal.database.windows.net,1433;Initial Catalog=lna;Persist Security Info=False;User ID=lna;Password=Redbirdie05;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";
                con.Open();

                string str = "";
                str = Convert.ToString(Session["user"]);
                cmd.CommandText = "select * from Members where Email='" + str + "'";
                cmd.Connection = con;
                sda.SelectCommand = cmd;
                sda.Fill(ds, "Members");
                NameLabel.Text = "Hi, " + ds.Tables[0].Rows[0]["FName"].ToString() + " " + ds.Tables[0].Rows[0]["LName"].ToString();

                con2.ConnectionString = "Server=tcp:lpapalal.database.windows.net,1433;Initial Catalog=lna;Persist Security Info=False;User ID=lna;Password=Redbirdie05;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";
                con2.Open();
                string str2 = "";
                str2 = Convert.ToString(Session["meetingsession"]);
                cmd2.CommandText = "select * from Meetings where Id='" + str2 + "'";
                cmd2.Connection = con2;
                sda2.SelectCommand = cmd2;
                sda2.Fill(ds2, "Meetings");
                TextBox1.Text = ds2.Tables[0].Rows[0]["Id"].ToString();
                TextBox2.Text = ds2.Tables[0].Rows[0]["Name"].ToString();
                TextBox3.Text = ds2.Tables[0].Rows[0]["Date"].ToString();
                TextBox4.Text = ds2.Tables[0].Rows[0]["Time"].ToString();
                TextBox5.Text = ds2.Tables[0].Rows[0]["Venue"].ToString();
                TextArea1.Text = ds2.Tables[0].Rows[0]["Agenda"].ToString();
            }
        }
        protected void Lout_btn_Click(object sender, EventArgs e)
        {
            Session["user"] = null;
            Response.Redirect("Homepage.aspx");
        }
        protected void ADash_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdLogDashboard.aspx");
        }

        protected void SaveChanges_btn_Click(object sender, EventArgs e)
        {
            string TB1 = TextBox1.Text.ToString();
            string TB2 = TextBox2.Text.ToString();
            string TB3 = TextBox3.Text.ToString();
            string TB4 = TextBox4.Text.ToString();
            string TB5 = TextBox5.Text.ToString();
            string TA1 = TextArea1.Text.ToString();

            SqlConnection con3 = new SqlConnection(@"Server=tcp:lpapalal.database.windows.net,1433;Initial Catalog=lna;Persist Security Info=False;User ID=lna;Password=Redbirdie05;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
            SqlCommand cmd3 = new SqlCommand("update Meetings set Name='" + TB2 + "', Date='" + TB3 + "', Time='" + TB4 + "', Venue='" + TB5 + "',Agenda='"+TA1+"' where Id='" + TB1.ToString().Trim() + "'", con3);
            con3.Open();
            cmd3.ExecuteNonQuery();
            con3.Close();
            string msg = "The meeting has been sucessfully updated!";
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