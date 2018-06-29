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
    public partial class TDirectory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Server=tcp:lpapalal.database.windows.net,1433;Initial Catalog=lna;Persist Security Info=False;User ID=lna;Password=Redbirdie05;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
            SqlDataAdapter sda = new SqlDataAdapter("select * from Members", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();

        }
    }
}