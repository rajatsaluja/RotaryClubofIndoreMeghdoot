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
    public partial class AdLogProfile : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
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

                //string struser = "";
                //struser = ds.Tables[0].Rows[0]["Email"].ToString();


                TextBox1.Text = ds.Tables[0].Rows[0]["FName"].ToString();
                TextBox2.Text = ds.Tables[0].Rows[0]["LName"].ToString();
                TextBox3.Text = ds.Tables[0].Rows[0]["DOB"].ToString();
                //DropDownList1.SelectedValue = ds.Tables[0].Rows[0]["Gender"].ToString();
                TextBox4.Text = str;
                TextBox5.Text = ds.Tables[0].Rows[0]["PNo"].ToString();
                TextBox6.Text = ds.Tables[0].Rows[0]["Occupation"].ToString();
                TextBox7.Text = ds.Tables[0].Rows[0]["SFName"].ToString();
                TextBox8.Text = ds.Tables[0].Rows[0]["SLName"].ToString();
                TextBox9.Text = ds.Tables[0].Rows[0]["DOA"].ToString();

                //SqlConnection con2 = new SqlConnection(@"Server=tcp:lpapalal.database.windows.net,1433;Initial Catalog=lna;Persist Security Info=False;User ID=lna;Password=Redbirdie05;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
                //SqlDataReader reader;
                //con2.Open();
                //SqlCommand cmd2 = new SqlCommand(string.Format("select * from Members where Email='"+ str + "'"), con2);
                //cmd2.Connection = con;
                //reader = cmd2.ExecuteReader();
                //if (reader.Read())
                //{
                //    TextBox1.Text = reader[0].ToString();
                //    TextBox2.Text = reader[1].ToString();
                //    TextBox3.Text = reader[2].ToString();
                //    DropDownList1.SelectedValue = reader[3].ToString();
                //    TextBox4.Text = str;
                //    TextBox5.Text = reader[5].ToString();
                //    TextBox6.Text = reader[6].ToString();
                //    TextBox7.Text = reader[7].ToString();
                //    TextBox8.Text = reader[8].ToString();
                //    TextBox9.Text = reader[9].ToString();
                //}
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

        //protected void Profile_btn_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("MemLogProfile.aspx");
        //}

        protected void SaveChanges_btn_Click(object sender, EventArgs e)
        {
            string TB1 = TextBox1.Text.ToString();
            string TB2 = TextBox2.Text.ToString();
            string TB3 = TextBox3.Text.ToString();
            string TB4 = TextBox4.Text.ToString();
            string TB5 = TextBox5.Text.ToString();
            string TB6 = TextBox6.Text.ToString();
            string TB7 = TextBox7.Text.ToString();
            string TB8 = TextBox8.Text.ToString();
            string TB9 = TextBox9.Text.ToString();
            SqlConnection con3 = new SqlConnection(@"Server=tcp:lpapalal.database.windows.net,1433;Initial Catalog=lna;Persist Security Info=False;User ID=lna;Password=Redbirdie05;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
            SqlCommand cmd3 = new SqlCommand("update Members set FName='" + TB1 + "', LName='" + TB2 + "', DOB='" + TB3 + "', PNo='" + TB5 + "', Occupation='" + TB6 + "', SFName='" + TB7 + "', SLName='" + TB8 + "', DOA='" + TB9 + "' where Email='" + TB4 + "'", con3);
            SqlCommand cmd4 = new SqlCommand("update MemLogin set FName='" + TB1 + "', LName='" + TB2 + "' where Email='" + TB4 + "'", con3);

            con3.Open();
            cmd3.ExecuteNonQuery();
            cmd4.ExecuteNonQuery();
            con3.Close();
            string msg = "Your profile has been sucessfully updated!";
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