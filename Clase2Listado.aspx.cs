using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace Clase1_lp3
{
    public partial class Clase2Listado : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            StreamReader archivo = new StreamReader(this.Server.MapPath(".") + "/comentarios.txt");
            Label1.Text = archivo.ReadToEnd();
            archivo.Close();
        }
    }
}