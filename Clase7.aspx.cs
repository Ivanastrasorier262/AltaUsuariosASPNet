using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Clase1_lp3
{
    public partial class Clase7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (this.IsValid)
            {
                this.Response.Redirect("Clase7-2.aspx");
            }
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            int valor = int.Parse(TextBox5.Text);
            args.IsValid = (valor % 5 == 0);
        }
    }
}