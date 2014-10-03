﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace app2
{
    /// if you sign in and then go back to the login page without signing out
    /// you can still enter wrong data and access restricted pages via the URL
    /// login => Index
    /// login <=Index
    /// enter wrong data 
    /// use url to access Index page
    /// to prevent this I have the user log out every time the login page is opened
    /// and every time the user enters data incorrectly
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            /// when login clicked run authenticate method
            /// if authenticated re-direct from Login Page
            if (AuthenticateUser(txtbxName.Text, txtbxPassword.Text))
            {
                FormsAuthentication.RedirectFromLoginPage(txtbxName.Text, false);
            }
            else
            {
                lblError.Text = "Error, Invalid user name or password.";
                FormsAuthentication.SignOut();
                
            }
        }

        private bool AuthenticateUser(string name, string password)
        {
            /// run sql stored procedure spAutenticateUser

            // ConfigurationManager class is in System.Configuration namespace / con string from web.config
            string CS = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            // SqlConnection is in System.Data.SqlClient namespace 
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("spAuthenticateUser", con); 
                cmd.CommandType = CommandType.StoredProcedure;
                /// FormsAuthentication is in System.Web.Security
                /// password is encrypted using SHA1 hash key
                //string EncryptedPassword = FormsAuthentication.HashPasswordForStoringInConfigFile(password, "SHA1");
                // SqlParameter is in System.Data namespace 
                SqlParameter paramUsername = new SqlParameter("@Name", name); /// pass name
                SqlParameter paramPassword = new SqlParameter("@Password", password);
                //SqlParameter paramPassword = new SqlParameter("@Password", EncryptedPassword); // pass encrypted password
                cmd.Parameters.Add(paramUsername); /// add para 1
                cmd.Parameters.Add(paramPassword); /// add para 2
                con.Open();
                int ReturnCode = (int)cmd.ExecuteScalar(); /// scalar = 1 value
                return ReturnCode == 1;
            }
        }

    }
}
