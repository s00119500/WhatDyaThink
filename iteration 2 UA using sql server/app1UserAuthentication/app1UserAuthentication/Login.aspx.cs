using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace app1UserAuthentication
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //FormsAuthentication.Authenticate(txtbxName.Text, txtbxPassword.Text)
            //Membership.ValidateUser(txtbxName.Text, txtbxPassword.Text)
            if (FormsAuthentication.Authenticate(txtbxName.Text, txtbxPassword.Text))
            {
                FormsAuthentication.RedirectFromLoginPage(txtbxName.Text,false);
                //Membership
            }
            else
            {
                lblError.Text = "Your Name / Password was incorrect.";
            }
        }
    }
}