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
    public partial class AdLogNewMemDash : System.Web.UI.Page
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
                DDL1.Visible = false;
                DDLLabel.Visible = false;
                Button1.Visible = false;
                //Label1.Visible = false;
                //Roletxt.Visible = false;
                //Rolelbl.Visible = false;
                TB1.Focus();

                SqlConnection con5 = new SqlConnection("Server=tcp:lpapalal.database.windows.net,1433;Initial Catalog=lna;Persist Security Info=False;User ID=lna;Password=Redbirdie05;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
                SqlDataAdapter sda5 = new SqlDataAdapter("select * from Members", con5);
                DataTable dt = new DataTable();
                sda5.Fill(dt);
                Repeater1.DataSource = dt;
                Repeater1.DataBind();



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

        protected void Update_btn_Click(object sender, EventArgs e)
        {
            con3.ConnectionString = "Server=tcp:lpapalal.database.windows.net,1433;Initial Catalog=lna;Persist Security Info=False;User ID=lna;Password=Redbirdie05;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";
            con3.Open();
            int i = 0;
            cmd.CommandText = "select * from Members where Email='" + TB1.Text.Trim() + "'";
            cmd.Connection = con3;
            sda.SelectCommand = cmd;
            sda.Fill(ds, "Members");
            if (ds.Tables[i].Rows.Count > 0)
            {
                DDL1.Visible = true;
                DDLLabel.Visible = true;
                Button1.Visible = true;
                //Label1.Visible = true;
            }
            else
            {
                string msg = "Request Denied!" + " The Email Id: " + TB1.Text.ToString() + " does not exist!!. Please choose a valid Email Id from the table below.";
                string content = "window.onload=function(){alert('";
                content += msg;
                content += "');";
                content += "window.location='";
                content += Request.Url.AbsoluteUri;
                content += "';}";
                ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", content, true);
            }


        }


        protected void Del_btn_Click(object sender, EventArgs e)
        {
            con2.ConnectionString = "Server=tcp:lpapalal.database.windows.net,1433;Initial Catalog=lna;Persist Security Info=False;User ID=lna;Password=Redbirdie05;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";
            con2.Open();

            con4.ConnectionString = "Server=tcp:lpapalal.database.windows.net,1433;Initial Catalog=lna;Persist Security Info=False;User ID=lna;Password=Redbirdie05;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";
            con4.Open();
            SqlDataAdapter sda1 = new SqlDataAdapter();
            DataSet ds1 = new DataSet();

            string email = TB1.Text.ToString();
            int i = 0;
            cmd1.CommandText = "select * from Members where email='" + TB1.Text.Trim() + "'";
            cmd1.Connection = con4;
            sda1.SelectCommand = cmd1;
            sda1.Fill(ds1, "Members");
            if (ds1.Tables[i].Rows.Count > 0)
            {
                SqlConnection con4 = new SqlConnection(@"Server=tcp:lpapalal.database.windows.net,1433;Initial Catalog=lna;Persist Security Info=False;User ID=lna;Password=Redbirdie05;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
                SqlCommand cmd2 = new SqlCommand("DELETE FROM Members WHERE Email = '" + TB1.Text + "'; ", con4);

                con4.Open();
                cmd2.ExecuteNonQuery();
                con4.Close();
                //Label1.Text = "Member Successfully deleted !";
                string msg = "Deletion Successful!" + " Member with Email Id: " + TB1.Text.ToString() + " has been deleted from the records.";
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
                string msg = "Request Denied!" + " The Email Id: " + TB1.Text.ToString() + " does not exist!!. Please choose a valid Email Id from the table below.";
                string content = "window.onload=function(){alert('";
                content += msg;
                content += "');";
                content += "window.location='";
                content += Request.Url.AbsoluteUri;
                content += "';}";
                ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", content, true);

                //Label1.Text = "The Email Id does not exist!!. Please choose a valid Email Id from the table below.";

            }
        }

        protected void addmem_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdLogMemDashADD.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Label1.Visible = false;
            con2.ConnectionString = "Server=tcp:lpapalal.database.windows.net,1433;Initial Catalog=lna;Persist Security Info=False;User ID=lna;Password=Redbirdie05;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";
            con2.Open();

            SqlDataAdapter sda2 = new SqlDataAdapter();
            DataSet ds2 = new DataSet();
            cmd2.CommandText = "Select * from Members where Email='" + TB1.Text.Trim() + "'";
            cmd2.Connection = con2;
            sda2.SelectCommand = cmd2;
            sda2.Fill(ds2, "Members");

            if (DDL1.SelectedValue.ToString() == ds2.Tables[0].Rows[0]["Position"].ToString())
            {
                //Label1.Visible = true;
                //Label1.Text = "Member with email id: " + TB1.Text.ToString() + " is already a " + DDL1.SelectedValue.ToString();
                string msg = "Request Denied!" + " Member with email id" + TB1.Text.ToString() + "is already a " + DDL1.SelectedValue.ToString();
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
                SqlConnection con3 = new SqlConnection(@"Server=tcp:lpapalal.database.windows.net,1433;Initial Catalog=lna;Persist Security Info=False;User ID=lna;Password=Redbirdie05;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
                SqlCommand cmd3 = new SqlCommand("Update Members set Position='" + DDL1.SelectedValue.ToString() + "' where Email='" + TB1.Text.ToString() + "'", con3);
                con3.Open();
                cmd3.ExecuteNonQuery();
                con3.Close();


                //    Label1.Visible = true;
                //    Label1.Text = "Position for member with email id " + TB1.Text.ToString() + " has been successfully updated!";
                string msg = "Updation Successful!" + " Position of member with email id" + TB1.Text.ToString() + "has been sucessfully updated in the records.";
                string content = "window.onload=function(){alert('";
                content += msg;
                content += "');";
                content += "window.location='";
                content += Request.Url.AbsoluteUri;
                content += "';}";
                ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", content, true);

            }
        }

        protected void addgbomem_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdLogMemDashBOMEMADD.aspx");
        }

    }
}