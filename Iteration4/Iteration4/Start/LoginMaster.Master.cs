using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
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
            throw new NotImplementedException();
        }
    }
}