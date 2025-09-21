using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Clase1_lp3
{
    public partial class Clase2Carga : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            StreamWriter archivo = new StreamWriter(this.Server.MapPath(".") + "/comentarios.txt", true);
            archivo.WriteLine("Nombre : " + this.TextBox1.Text);
            archivo.WriteLine("<br>");
            archivo.WriteLine("Pais: " + this.TextBox2.Text);
            archivo.WriteLine("<br>");
            archivo.WriteLine("Comentarios<br>"+ this.TextBox3.Text);
            archivo.WriteLine("<br>");
            archivo.WriteLine("<hr>");
            archivo.Close();
            this.Label1.Text = "Datos registrados";
            this.TextBox1.Text = TextBox2.Text = TextBox3.Text = "";


        }
    }
}