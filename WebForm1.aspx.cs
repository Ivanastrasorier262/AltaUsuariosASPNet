using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Clase1_lp3
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.Session["usuario"] = this.TextBox2.Text;   
            this.Session["clave"] = this.TextBox4.Text;
            this.Session.Timeout= 1; //1 minuto
            this.Response.Redirect("WebForm2.aspx");
        }
    }
}