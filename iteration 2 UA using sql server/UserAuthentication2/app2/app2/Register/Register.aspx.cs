using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace app2.Register
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click1(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                // Read the connection string from web.config.
                // ConfigurationManager class is in System.Configuration namespace
                string CS = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                // SqlConnection is in System.Data.SqlClient namespace
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand("spRegisterUser", con);
                    cmd.CommandType = CommandType.StoredProcedure;

                    SqlParameter username = new SqlParameter("@Name", txtbxName.Text);
                    // FormsAuthentication calss is in System.Web.Security namespace
                    //string encryptedPassword = FormsAuthentication.
                    //    HashPasswordForStoringInConfigFile(txtbxPassword.Text, "SHA1");
                    //SqlParameter password = new SqlParameter("@Password", encryptedPassword);
                    SqlParameter password = new SqlParameter("@Password", txtbxPassword.Text);
                    SqlParameter email = new SqlParameter("@Email", txtbxEmail.Text);
                    // warnng below !!
                    cmd.Parameters.Add(username);
                    cmd.Parameters.Add(password);
                    cmd.Parameters.Add(email);

                    con.Open();
                    int ReturnCode = (int)cmd.ExecuteScalar();
                    if (ReturnCode == -1)
                    {
                        lblError.Text = "User Name already in use, please choose another user name";
                    }
                    else
                    {
                        Response.Redirect("~/LoginPage.aspx");
                    }
                }
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            lblError.Text = "";
            txtbxName.Text = "";
            txtbxPassword.Text = "";
            txtbxEmail.Text = "";
        }
    }
}