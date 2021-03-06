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

namespace Iteration4.Start
{
    public partial class LoginRegister : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            // add a user
            if (IsValid)
            {
                // Read the connection string from web.config.
                // ConfigurationManager class is in System.Configuration namespace
                string CS = ConfigurationManager.ConnectionStrings["WhatDyaThinkSQLDatabaseConnectionString"].ConnectionString;
                // SqlConnection is in System.Data.SqlClient namespace
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand("AddUser", con);
                    cmd.CommandType = CommandType.StoredProcedure;

                    SqlParameter username = new SqlParameter("@registerName", txtbxRegisterName.Value);
                    // FormsAuthentication calss is in System.Web.Security namespace
                    string encryptedPassword = FormsAuthentication.HashPasswordForStoringInConfigFile(txtbxRegisterPassword.Value, "SHA1");
                    SqlParameter password = new SqlParameter("@registerPassword", encryptedPassword);
                    //SqlParameter password = new SqlParameter("@registerPassword", txtbxRegisterPassword.Value);
                    SqlParameter email = new SqlParameter("@registerEmail", txtbxRegisterEmail.Value);
                    SqlParameter telephone = new SqlParameter("@registerPhone", txtbxRegisterTelephone.Value);
                    // warnng below !!
                    cmd.Parameters.Add(username);
                    cmd.Parameters.Add(password);
                    cmd.Parameters.Add(email);
                    cmd.Parameters.Add(telephone);

                    con.Open();
                    int ReturnCode = (int)cmd.ExecuteScalar();
                    if (ReturnCode == -1)
                    {
                        lblErrorRegister.Text = "User Name already in use, please choose another user name";
                    }
                    else
                    {
                        // will need to change this to welcome/confirmation page
                        Response.Redirect("~/Start/LoginRegister.aspx");
                    }
                }
            }
        }
    }
}