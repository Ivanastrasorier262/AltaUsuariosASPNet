using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Clase1_lp3
{
    public partial class Consulta_P1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.SqlDataSource1.DataSourceMode = SqlDataSourceMode.DataReader;

            SqlDataReader clientes;
            clientes = (SqlDataReader)this.SqlDataSource1.Select(DataSourceSelectArguments.Empty);

            if (clientes.Read())
            {
                this.Label1.Text = "Nombre: " + clientes["nombre"].ToString() + "<br>" +
                    "Apellido: " + clientes["Apellido"].ToString() + "<br>" +
                    "Teléfono: " + clientes["Telefono"].ToString() + "<br>" +
                    "Dirección: " + clientes["Direccion"].ToString() + "<br>" +
                    "Precio mensual: $" + clientes["precio_mensual"].ToString() + "<br>" +
                    "Descripción: " + clientes["descripcion"].ToString() + "<br>" +
                    "Plan: " + clientes["nombre_plan"].ToString();

            }
            else
            {
                this.Label1.Text = "No existe ese cliente en la base de datos";
            }
        }
    }
}