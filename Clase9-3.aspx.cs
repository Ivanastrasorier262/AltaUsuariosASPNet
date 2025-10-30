using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Clase1_lp3
{
    public partial class Clase9_3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.Session["usuario"] != null)
            {
                this.Label1.Text = "Usuario: " + this.Session["usuario"].ToString();
                this.Label2.Text = "Clave: " + this.Session["clave"].ToString();
                
            }
            else Response.Redirect("Clse9-2.aspx");
        }
    }
}