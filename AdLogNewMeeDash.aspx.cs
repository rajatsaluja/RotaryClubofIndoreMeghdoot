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
    public partial class AdLogNewMeeDash : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlCommand cmd1 = new SqlCommand();
        SqlCommand cmd2 = new SqlCommand();
        SqlCommand cmd3 = new SqlCommand();


        SqlConnection con = new SqlConnection();
        SqlConnection con2 = new SqlConnection();
        SqlConnection con3 = new SqlConnection();
        SqlConnection con4 = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();



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
                TB1.Focus();

                SqlConnection con5 = new SqlConnection("Server=tcp:lpapalal.database.windows.net,1433;Initial Catalog=lna;Persist Security Info=False;User ID=lna;Password=Redbirdie05;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
                SqlDataAdapter sda5 = new SqlDataAdapter("select * from Meetings", con5);
                DataTable dt = new DataTable();
                sda5.Fill(dt);
                Repeater1.DataSource = dt;
                Repeater1.DataBind();

            }
        }

        protected void Add_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdLogMeeDashADD.aspx");
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

        protected void Update_btn_Click(object sender, EventArgs e)
        {
            string meetingid= TB1.Text.Trim();
            Session["meetingsession"] = meetingid;
            Response.Redirect("AdLogMeeDashUPDATE.aspx");
        }

        protected void Del_btn_Click(object sender, EventArgs e)
        {
            //con2.ConnectionString = "Server=tcp:lpapalal.database.windows.net,1433;Initial Catalog=lna;Persist Security Info=False;User ID=lna;Password=Redbirdie05;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";
            //con2.Open();

            con4.ConnectionString = "Server=tcp:lpapalal.database.windows.net,1433;Initial Catalog=lna;Persist Security Info=False;User ID=lna;Password=Redbirdie05;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";
            con4.Open();
            SqlDataAdapter sda1 = new SqlDataAdapter();
            DataSet ds1 = new DataSet();

            string email = TB1.Text.ToString();
            int i = 0;
            cmd1.CommandText = "select * from Meetings where Id='" + TB1.Text.Trim() + "'";
            cmd1.Connection = con4;
            sda1.SelectCommand = cmd1;
            sda1.Fill(ds1, "Meetings");
            if (ds1.Tables[i].Rows.Count > 0)
            {
                SqlConnection con4 = new SqlConnection(@"Server=tcp:lpapalal.database.windows.net,1433;Initial Catalog=lna;Persist Security Info=False;User ID=lna;Password=Redbirdie05;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
                SqlCommand cmd2 = new SqlCommand("DELETE FROM Meetings WHERE Id = '" + TB1.Text + "'; ", con4);

                con4.Open();
                cmd2.ExecuteNonQuery();
                con4.Close();
                //Label1.Text = "Member Successfully deleted !";
                string msg = "Deletion Successful!" + " Event: " + TB1.Text.ToString() + " has been deleted from the records.";
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
                string msg = "Request Denied!" + " Event: " + TB1.Text.ToString() + " does not exist!!. Please choose an existing project from the list below.";
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
}