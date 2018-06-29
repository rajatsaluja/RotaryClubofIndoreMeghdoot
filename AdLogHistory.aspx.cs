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
    public partial class AdLogHistory : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
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