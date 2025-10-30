using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Clase1_lp3
{
    public partial class Clase9_2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.Session["usuario"] = this.TextBox1.Text;
            this.Session["clave"] = this.TextBox2.Text;
            this.Session.Timeout = 1; //1 minuto de inactividad
            this.Response.Redirect("Clase9-3.aspx");
        }
    }
}