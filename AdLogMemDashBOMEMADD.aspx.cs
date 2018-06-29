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
    public partial class AdLogMemDashBOMEMADD : System.Web.UI.Page
    {
        SqlConnection con3 = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        SqlCommand cmd = new SqlCommand();
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ADash_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdLogDashboard.aspx");
        }
        protected void Lout_btn_Click(object sender, EventArgs e)
        {
            Session["user"] = null;
            Response.Redirect("Homepage.aspx");
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
                string Role = DropDownList1.SelectedValue.ToString();
                SqlConnection con3 = new SqlConnection(@"Server=tcp:lpapalal.database.windows.net,1433;Initial Catalog=lna;Persist Security Info=False;User ID=lna;Password=Redbirdie05;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
                SqlCommand cmd3 = new SqlCommand("Insert into BMembers values Fname='"+TextBox2.Text+ "' and Lname='"+TextBox2.Text+"' and Role='" + DropDownList1.SelectedValue.ToString() +"'", con3);
                con3.Open();
                cmd3.ExecuteNonQuery();
                con3.Close();

            }
        }
    }
}