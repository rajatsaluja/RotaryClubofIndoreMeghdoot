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
    public partial class AdLogMemDash : System.Web.UI.Page
    {

        SqlCommand cmd = new SqlCommand();
        SqlCommand cmd2 = new SqlCommand();
        SqlCommand cmd3 = new SqlCommand();

        SqlConnection con = new SqlConnection();
        SqlConnection con3 = new SqlConnection();
        SqlConnection con2 = new SqlConnection();
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
                    con.ConnectionString = "Data Source=localhost;Initial Catalog=RotaryClub;Integrated Security=True";
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
                Label1.Visible = false;
                Roletxt.Visible = false;
                Rolelbl.Visible = false;
                TB1.Focus();

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
            con3.ConnectionString = "Data Source=localhost;Initial Catalog=RotaryClub;Integrated Security=True";
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
                Label1.Visible = true;
            }


        }


        protected void Del_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdLogMemDashDELETE.aspx");
        }

        protected void addgenmem_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdLogMemDashADD.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Visible = false;
            con2.ConnectionString = "Data Source=localhost;Initial Catalog=RotaryClub;Integrated Security=True";
            con2.Open();

            SqlDataAdapter sda2 = new SqlDataAdapter();
            DataSet ds2 = new DataSet();
            cmd2.CommandText = "Select * from Members where Email='" + TB1.Text.Trim() + "'";
            cmd2.Connection = con2;
            sda2.SelectCommand = cmd2;
            sda2.Fill(ds2, "Members");

            if (DDL1.SelectedValue.ToString() == ds2.Tables[0].Rows[0]["Position"].ToString())
            {
                Label1.Visible = true;
                Label1.Text = "Member with email id: " + TB1.Text.ToString() + " is already a " + DDL1.SelectedValue.ToString();
            }
            else
            {
                SqlConnection con3 = new SqlConnection(@"Data Source=localhost;Initial Catalog=RotaryClub;Integrated Security=True");
                SqlCommand cmd3 = new SqlCommand("Update Members set Position='" + DDL1.SelectedValue.ToString() + "' where Email='" + TB1.Text.ToString() + "'", con3);
                con3.Open();
                cmd3.ExecuteNonQuery();
                con3.Close();

                SqlDataSource1.EnableCaching = false;
                GridView1.DataBind();
                SqlDataSource1.EnableCaching = true;

                Label1.Visible = true;
                Label1.Text = "Position for member with email id " + TB1.Text.ToString() + " has been successfully updated!";
            }
        }

        protected void addgbomem_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdLogMemDashBOMEMADD.aspx");
        }

    }
}