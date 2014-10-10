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

namespace Iteration4.Start
{
    public partial class LoginMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            // validate txtbxs'
            if (txtbxLoginName.Value == null || txtbxLoginName.Value == String.Empty)
            {
                lblErrorLoginName.Text = "*";
            }
            else if (txtbxLoginPassword.Value == null || txtbxLoginPassword.Value == String.Empty)
            {
                lblErrorLoginPassword.Text = "*";
            }
            else
            {
                AuthenticateUser(txtbxLoginName.Value,txtbxLoginPassword.Value);
            }
            //authenticate
        }

        private void AuthenticateUser(string name, string password)
        {
            //throw new NotImplementedException();
            // ConfigurationManager class is in System.Configuration namespace
            string CS = ConfigurationManager.ConnectionStrings["WhatDyaThinkSQLDatabaseConnectionString"].ConnectionString;
            // SqlConnection is in System.Data.SqlClient namespace
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("AuthenticateUser", con);
                cmd.CommandType = CommandType.StoredProcedure;

                //Formsauthentication is in system.web.security
                string encryptedpassword = FormsAuthentication.HashPasswordForStoringInConfigFile(password, "SHA1");

                //sqlparameter is in System.Data namespace
                SqlParameter paramUsername = new SqlParameter("@LoginName", name);
                //SqlParameter paramPassword = new SqlParameter("@Password", password);
                SqlParameter paramPassword = new SqlParameter("@LoginPassword", encryptedpassword);

                cmd.Parameters.Add(paramUsername);
                cmd.Parameters.Add(paramPassword);

                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    int checkName = Convert.ToInt32(rdr["CountName"]);
                    int RetryAttempts = Convert.ToInt32(rdr["RetryAttempts"]);
                    if (checkName == 0 || txtbxLoginName.Value == String.Empty)
                    {
                        lblErrorLoginName.Text = "*";
                    }
                    else if (Convert.ToBoolean(rdr["AccountLocked"]))
                    {
                        lblErrorLoginName.Text = "Account locked. Please contact administrator";
                    }
                    else if (RetryAttempts > 0 && checkName == 1)
                    {
                        int AttemptsLeft = (4 - RetryAttempts);
                        lblErrorLoginName.Text = "Invalid user name and/or password. " +
                            AttemptsLeft.ToString() + "attempt(s) left";
                    }
                    else if (Convert.ToBoolean(rdr["Authenticated"]))
                    {
                        FormsAuthentication.RedirectFromLoginPage(txtbxLoginName.Value, false);
                    }
                    else
                    {
                        lblErrorLoginName.Text = "Error, there was an issue with the IF ELSE logic, please see Login Master page.";
                    }
                }
            }
        }
    }
}