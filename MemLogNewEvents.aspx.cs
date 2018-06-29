﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RotaryClub
{
    public partial class MemLogNewEvents : System.Web.UI.Page
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

            cmd.CommandText = "select * from MemLogin";
            cmd.Connection = con;
            sda.SelectCommand = cmd;
            sda.Fill(ds, "MemLogin");
            NameLabel.Text = "Hi, " + ds.Tables[0].Rows[0]["FName"].ToString() + " " + ds.Tables[0].Rows[0]["LName"].ToString();

            SqlConnection con5 = new SqlConnection("Server=tcp:lpapalal.database.windows.net,1433;Initial Catalog=lna;Persist Security Info=False;User ID=lna;Password=Redbirdie05;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
            SqlDataAdapter sda5 = new SqlDataAdapter("select * from Events", con5);
            DataTable dt = new DataTable();
            sda5.Fill(dt);
            Repeater2.DataSource = dt;
            Repeater2.DataBind();
        }
        protected void Lout_btn_Click(object sender, EventArgs e)
        {
            Session["user"] = null;
            Response.Redirect("default.aspx");
        }
    }
}