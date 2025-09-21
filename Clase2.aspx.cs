using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
namespace Clase1_lp3
{
    public partial class Clase2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(File.Exists(this.Server.MapPath(".")+ "/contador.txt"))
            {
                StreamReader contador = new StreamReader(this.Server.MapPath(".") + "/contador.txt");
                string valor = contador.ReadToEnd();
                int cont = int.Parse(valor);
                cont++;
                contador.Close();
                StreamWriter contador2 = new StreamWriter(this.Server.MapPath(".") + "/contador.txt");
                contador2.WriteLine(cont.ToString());
                contador2.Close();
                this.Label1.Text = cont.ToString();
            }
            else
            {
                StreamWriter archivo = new
                    StreamWriter(this.Server.MapPath(".") + "/contador.txt");
                archivo.WriteLine("1");
                archivo.Close();
                this.Label1.Text = "1";
                   
            }
        }
    }
}