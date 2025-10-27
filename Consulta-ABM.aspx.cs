using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Clase1_lp3
{
    public partial class Consulta_ABM : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.SqlDataSource1.SelectParameters["patente"].DefaultValue =
            this.TextBox1.Text;
            this.SqlDataSource1.DataSourceMode = SqlDataSourceMode.DataReader;
            SqlDataReader registro =
           (SqlDataReader)this.SqlDataSource1.Select(DataSourceSelectArguments.Empty);

            if (registro.Read())
            {
                this.Image1.ImageUrl = registro["foto"].ToString();
                this.Label1.Text = "Propietario: " + registro["propietario"] + "<br>" +
                                  "Precio: " + registro["precio"] + "<br>" +
                                  "Modelo: " + registro["modelo"] + "<br>" +
                                  "Marca: " + registro["descripcion"];
            }
            else
            {
                this.Label1.Text = "No existe un auto con dicha patente";
                this.Image1.ImageUrl = "";
            }
        }
    }
}

