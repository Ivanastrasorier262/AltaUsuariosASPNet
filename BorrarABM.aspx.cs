using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace Clase1_lp3
{
    public partial class BorrarABM : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // 1️⃣ PRIMERO: Leer la foto ANTES de borrar
            this.SqlDataSource1.SelectParameters["patente"].DefaultValue = this.TextBox1.Text;
            this.SqlDataSource1.DataSourceMode = SqlDataSourceMode.DataReader;
            SqlDataReader registro = (SqlDataReader)this.SqlDataSource1.Select(DataSourceSelectArguments.Empty);

            if (registro.Read())
            {
                // Guardar la ruta de la foto
                string rutaFoto = registro["foto"].ToString();
                registro.Close(); // Cerrar el DataReader

                // 2️⃣ SEGUNDO: Borrar el registro de la BD
                this.SqlDataSource1.DeleteParameters["patente"].DefaultValue = this.TextBox1.Text;
                int cant = this.SqlDataSource1.Delete();

                if (cant > 0)
                {
                    // 3️⃣ TERCERO: Borrar el archivo físico
                    string rutaCompleta = Server.MapPath("~/" + rutaFoto);
                    if (File.Exists(rutaCompleta))
                    {
                        File.Delete(rutaCompleta);
                    }

                    this.Label1.Text = "Se borró el auto con dicha patente";
                    this.TextBox1.Text = "";
                }
            }
            else
            {
                registro.Close();
                this.Label1.Text = "No existe un auto con el valor de patente ingresado";
            }
        }
    }
}