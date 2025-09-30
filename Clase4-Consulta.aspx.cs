using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Clase1_lp3
{
    public partial class Clase4_Consulta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.SqlDataSource1.DataSourceMode = SqlDataSourceMode.DataReader;

            SqlDataReader datos = (SqlDataReader) this.SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            if (datos.Read())
            {
                this.Label1.Text = "Nombre: " + datos["nombre"] + "<br>Clave: " + datos["clave"] + "<br>Mail: " + datos["mail"];

            }
            else
            {
                this.Label1.Text = "No se ecuentro el Usuario";
            }
        }
    }
}