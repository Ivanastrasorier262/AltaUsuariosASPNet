using Microsoft.Ajax.Utilities;
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
    public partial class Clase_Consulta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String nombre = TextBox1.Text;
            string conexion = ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString;

            using (SqlConnection conectar = new SqlConnection(conexion))
            {
                conectar.Open();
                String consulta = "select * from Usuarios where nombre = @Nombre";
                using (SqlCommand comando = new SqlCommand(consulta, conectar)) 
                {
                    comando.Parameters.AddWithValue("@Nombre", nombre);

                    SqlDataReader registro = comando.ExecuteReader();
                    if (registro.Read())
                    {
                        Label1.Text = "Clave: " + registro["Mail"].ToString() +
                                      " | Mail: " + registro["Clave"].ToString();
                    }
                    else
                    {
                        Label1.Text = "No existe Usuario";
                    }
                }
            }
        }
    }
}
