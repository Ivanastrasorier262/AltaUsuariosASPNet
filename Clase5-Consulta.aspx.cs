using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Clase1_lp3
{
    public partial class Clase5_Consulta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.SqlDataSource1.DataSourceMode= SqlDataSourceMode.DataReader;

            SqlDataReader articulo;
            articulo = (SqlDataReader)this.SqlDataSource1.Select(DataSourceSelectArguments.Empty);

            if (articulo.Read())
            {
                this.Label1.Text = "Nombre del articulo: " + articulo[0] + "<br>" + "Precio: $" + articulo[1] + "<br>" +
                                   "Rubro: " + articulo[2];
            }
            else
            {
                this.Label1.Text = "No existe el articulo con dicho codigo";
            }

        }
    }
}
