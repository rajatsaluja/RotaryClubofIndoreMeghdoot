using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net;
using System.Net.Mail;

namespace RotaryClub
{
    public partial class AdLogMemDashADD : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlCommand cmd2 = new SqlCommand();
        SqlCommand cmd3 = new SqlCommand();
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

            string str = "";
            str = Convert.ToString(Session["user"]);
            cmd.CommandText = "select * from Members where Email='" + str + "'";
            cmd.Connection = con;
            sda.SelectCommand = cmd;
            sda.Fill(ds, "Members");
            NameLabel.Text = "Hi, " + ds.Tables[0].Rows[0]["FName"].ToString() + " " + ds.Tables[0].Rows[0]["LName"].ToString();
            //code for email to geneate a random password
            GeneratePassword();
            //code ends
        }

        //code for generatepassowrd() begins
        public string GeneratePassword()
        {
            string PasswordLength = "8";
            string NewPassword = "";

            string allowedChars = "";
            allowedChars = "1,2,3,4,5,6,7,8,9,0";
            allowedChars += "A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,";
            allowedChars += "a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z,";


            char[] sep = {
            ','
        };
            string[] arr = allowedChars.Split(sep);


            string IDString = "";
            string temp = "";

            Random rand = new Random();

            for (int i = 0; i < Convert.ToInt32(PasswordLength); i++)
            {
                temp = arr[rand.Next(0, arr.Length)];
                IDString += temp;
                NewPassword = IDString;

            }
            return NewPassword;
        }
        //code for generatepassword() ends
        protected void Lout_btn_Click(object sender, EventArgs e)
        {
            Session["user"] = null;
            Response.Redirect("Homepage.aspx");
        }
        protected void ADash_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdLogDashboard.aspx");
        }

        protected void Sub_btn_Click(object sender, EventArgs e)
        {
            if(DropDownList2.SelectedValue.ToString()=="General Member")
            {
                SqlCommand cmd = new SqlCommand("Insert into Members" + " (FName, LName, DOB, Gender, Email, PNo, Occupation, SFName, SLName, DOA, Position) values (@FName, @LName, @DOB, @Gender, @Email, @PNo, @Occupation, @SFName, @SLName, @DOA, @Position)", con);
                cmd.Parameters.AddWithValue("@FName", TextBox1.Text);
                cmd.Parameters.AddWithValue("@LName", TextBox2.Text);
                cmd.Parameters.AddWithValue("@DOB", TextBox3.Text);
                cmd.Parameters.AddWithValue("@Gender", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@Email", TextBox4.Text);
                cmd.Parameters.AddWithValue("@PNo", TextBox5.Text);
                cmd.Parameters.AddWithValue("@Occupation", TextBox6.Text);
                cmd.Parameters.AddWithValue("@SFName", TextBox7.Text);
                cmd.Parameters.AddWithValue("@SLName", TextBox8.Text);
                cmd.Parameters.AddWithValue("@DOA", TextBox9.Text);
                cmd.Parameters.AddWithValue("@Position", DropDownList2.SelectedItem.Value);
                cmd.ExecuteNonQuery();

                SqlCommand cmd2 = new SqlCommand("Insert into MemLogin" + " (Username, Type, FName, LName) values (@Username, @Type, @FName, @LName)", con);
                cmd2.Parameters.AddWithValue("@Username", TextBox4.Text);
                cmd2.Parameters.AddWithValue("@Type", DropDownList2.SelectedItem.Value);
                cmd2.Parameters.AddWithValue("@FName", TextBox1.Text);
                cmd2.Parameters.AddWithValue("@LName", TextBox2.Text);
                cmd2.ExecuteNonQuery();

                //email code begins

                // to send the random password in email  

                string strNewPassword = GeneratePassword().ToString();

                MailMessage mmsg = new MailMessage();
                mmsg.From = new MailAddress("rcindoremeghdoot@gmail.com");
                mmsg.To.Add(TextBox4.Text.ToString());
                mmsg.Subject = "Rotary Club Meghdoot: Account Activation";
                mmsg.Body = "Your Random password is:" + strNewPassword;
                mmsg.IsBodyHtml = true;

                SmtpClient smt = new SmtpClient("smtp.gmail.com",587);
                smt.EnableSsl = true;
                smt.Credentials = new System.Net.NetworkCredential("rcindoremeghdoot@gmail.com", "206Nfell@");
                
                smt.Send(mmsg);
                //lblMessage.Text = "Email Sent Successfully";
                //lblMessage.ForeColor = System.Drawing.Color.ForestGreen;


                //email code ends
                string msg = TextBox1.Text.ToString()+" has been sucessfully added in the records! The member will shortly recieve an email with further instructions.";
                string content = "window.onload=function(){alert('";
                content += msg;
                content += "');";
                content += "window.location='";
                content += Request.Url.AbsoluteUri;
                content += "';}";
                ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", content, true);
            }
            else if (DropDownList2.SelectedValue.ToString() == "Board Member")
                {

                    SqlCommand cmd = new SqlCommand("Insert into Members" + " (FName, LName, DOB, Gender, Email, PNo, Occupation, SFName, SLName, DOA, Position) values (@FName, @LName, @DOB, @Gender, @Email, @PNo, @Occupation, @SFName, @SLName, @DOA, @Position)", con);
                    cmd.Parameters.AddWithValue("@FName", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@LName", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@DOB", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@Gender", DropDownList1.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@Email", TextBox4.Text);
                    cmd.Parameters.AddWithValue("@PNo", TextBox5.Text);
                    cmd.Parameters.AddWithValue("@Occupation", TextBox6.Text);
                    cmd.Parameters.AddWithValue("@SFName", TextBox7.Text);
                    cmd.Parameters.AddWithValue("@SLName", TextBox8.Text);
                    cmd.Parameters.AddWithValue("@DOA", TextBox9.Text);
                    cmd.Parameters.AddWithValue("@Position", DropDownList2.SelectedItem.Value);
                    cmd.ExecuteNonQuery();

                    SqlCommand cmd1 = new SqlCommand("Insert into BMembers" + " (FName, LName, Position) values (@FName, @LName, @Position)", con);
                    cmd1.Parameters.AddWithValue("@FName", TextBox1.Text);
                    cmd1.Parameters.AddWithValue("@LName", TextBox2.Text);
                    //cmd.Parameters.AddWithValue("@DOB", TextBox3.Text);
                    //cmd.Parameters.AddWithValue("@Gender", DropDownList1.SelectedItem.Value);
                    //cmd.Parameters.AddWithValue("@Email", TextBox4.Text);
                    //cmd.Parameters.AddWithValue("@PNo", TextBox5.Text);
                    //cmd.Parameters.AddWithValue("@Occupation", TextBox6.Text);
                    //cmd.Parameters.AddWithValue("@SFName", TextBox7.Text);
                    //cmd.Parameters.AddWithValue("@SLName", TextBox8.Text);
                    //cmd.Parameters.AddWithValue("@DOA", TextBox9.Text);
                    cmd1.Parameters.AddWithValue("@Position", DropDownList2.SelectedItem.Value);
                    cmd1.ExecuteNonQuery();
                    SqlCommand cmd2 = new SqlCommand("Insert into MemLogin" + " (Username, Type, FName, LName) values (@Username, @Type, @FName, @LName)", con);
                    cmd2.Parameters.AddWithValue("@Username", TextBox4.Text);
                    cmd2.Parameters.AddWithValue("@Type", DropDownList2.SelectedItem.Value);
                    cmd2.Parameters.AddWithValue("@FName", TextBox1.Text);
                    cmd2.Parameters.AddWithValue("@LName", TextBox2.Text);
                    cmd2.ExecuteNonQuery();
                    string msg = TextBox1.Text.ToString() + " has been sucessfully added in the records! The member will shortly recieve an email with further instructions.";
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

            }



        }
    }
}