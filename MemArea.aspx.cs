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
    public partial class MemArea : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        
        protected void Page_Load (object sender, EventArgs e)
        {
            if (Session["user"]!= null)
            {
                Response.Redirect("MemLogHomepage.aspx");
            }
            else

            con.ConnectionString = "Data Source=localhost;Initial Catalog=RotaryClub;Integrated Security=True";
            con.Open();
        }

        protected void loginbtn_Click(object sender, EventArgs e)
        {
            string pass = loginPass.Text.Trim();
            string user = loginEmail.Text.Trim();
            string type = logindd.SelectedItem.Text.Trim();
            int i = 0;
            cmd.CommandText = "select * from MemLogin where Username='" + loginEmail.Text.Trim() + "'";
            cmd.Connection = con;
            sda.SelectCommand = cmd;
            sda.Fill(ds, "MemLogin");
            if (ds.Tables[i].Rows.Count > 0)
            {
                if(pass == ds.Tables[i].Rows[i]["Password"].ToString() && user == ds.Tables[i].Rows[i]["Username"].ToString()&& type == ds.Tables[i].Rows[i]["Type"].ToString())
                {
                    if(type == "Admin")
                    {
                        Session["user"] = user;
                        Response.Redirect("AdLogHomepage.aspx");

                    }
                }
                else 
                {
                    if (pass == ds.Tables[i].Rows[i]["Password"].ToString() && user == ds.Tables[i].Rows[i]["Username"].ToString() && type == ds.Tables[i].Rows[i]["Type"].ToString())
                    {
                        Session["user"] = user;
                        Response.Redirect("MemLogHomepage.aspx");
                    }

                    else if (string.IsNullOrWhiteSpace(user) || string.IsNullOrWhiteSpace(pass) || type == "Choose...")
                    {
                        errlbl.Text = "Please fill all entries & try again.";
                    }

                    else if (type != ds.Tables[i].Rows[i]["Type"].ToString())
                    {
                        errlbl.Text = "The type you selected is incorrect. Please try again..";
                    }

                    else if (pass != ds.Tables[i].Rows[i]["Password"].ToString())
                    {
                        errlbl.Text = "The password you entered is incorrect. Please try again.";
                    }
                }
               
                   

            }
        else
            {
                errlbl.Text= "You are not a registered member.";
            }
        }
    }
 
}