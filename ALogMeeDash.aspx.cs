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
    public partial class ALogMeeDash : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlCommand cmd1 = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        SqlDataAdapter sda1 = new SqlDataAdapter();
        DataSet ds = new DataSet();
        DataSet ds1 = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("MemArea.aspx");
            }
            else
                con.ConnectionString = "Data Source=itkmssql;Initial Catalog=lna;Integrated Security=True";
            con.Open();

            string str = "";
            str = Convert.ToString(Session["user"]);
            cmd.CommandText = "select * from Members$ where Email='" + str + "'";
            cmd.Connection = con;
            sda.SelectCommand = cmd;
            sda.Fill(ds, "Members$");
            NameLabel.Text = "Hi, " + ds.Tables[0].Rows[0]["FName"].ToString() + " " + ds.Tables[0].Rows[0]["LName"].ToString();

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
            Response.Redirect("ALogMeeDashUpdate.aspx");
        }

        protected void Del_btn_Click(object sender, EventArgs e)
        {

            string id = TB1.Text.ToString();
            int i = 0;
            cmd1.CommandText = "select * from Meetings where id='" + id + "'";
            cmd1.Connection = con;
            sda1.SelectCommand = cmd1;
            sda1.Fill(ds1, "Meetings");
            if (ds.Tables[i].Rows.Count > 0)
            {
                SqlConnection con1 = new SqlConnection(@"Data Source=localhost;Initial Catalog=RotaryClub;Integrated Security=True");
                SqlCommand cmd2 = new SqlCommand("DELETE FROM Meetings WHERE id = '" + id + "'; ", con1);

                con1.Open();
                cmd2.ExecuteNonQuery();
                con1.Close();

                statusLbl.Text = "Meeting deleted Successfully!";
            }
            else
            {
                statusLbl.Text = "No such Meeting ID exists!!";

            }

        }

        protected void AddMeeting_Click(object sender, EventArgs e)
        {
            Response.Redirect("ALogMeeDashAddMeeting.aspx");
        }
    }
}