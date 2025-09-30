using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Clase1_lp3
{
    public partial class Clase3_Alta : System.Web.UI.Page
    {
        protected void Button1_Click(object sender, EventArgs e)
        {
            string nombre = TextBox1.Text;
            string clave = TextBox2.Text;
            string mail = TextBox3.Text;

            string conexion = ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString;

            using (SqlConnection conectar = new SqlConnection(conexion))
            {
                string insertar = "INSERT INTO Usuarios (nombre, clave, mail) VALUES (@Nombre, @Clave, @Mail)";

                using (SqlCommand comando = new SqlCommand(insertar, conectar))
                {
                    comando.Parameters.AddWithValue("@Nombre", nombre);
                    comando.Parameters.AddWithValue("@Clave", clave);
                    comando.Parameters.AddWithValue("@Mail", mail);

                    try
                    {
                        conectar.Open();
                        comando.ExecuteNonQuery();
                        Label1.Text = "Usuario registrado correctamente.";
                    }
                    catch (Exception ex)
                    {
                        Label1.Text = "Error: " + ex.Message;
                    }
                }
            }
        }
    }
}
    
