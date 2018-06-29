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
    public partial class MemLogAboutInt : System.Web.UI.Page
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
                con.ConnectionString = "Data Source=localhost;Initial Catalog=RotaryClub;Integrated Security=True";
            con.Open();

            cmd.CommandText = "select * from MemLogin";
            cmd.Connection = con;
            sda.SelectCommand = cmd;
            sda.Fill(ds, "MemLogin");
            NameLabel.Text = "Hi, " + ds.Tables[0].Rows[0]["FName"].ToString() + " " + ds.Tables[0].Rows[0]["LName"].ToString();

        }
        protected void Lout_btn_Click(object sender, EventArgs e)
        {
            Session["user"] = null;
            Response.Redirect("Homepage.aspx");
        }
    }
}