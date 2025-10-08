using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Clase1_lp3
{
    public partial class ConsultasActividades_P1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Verificar que se haya seleccionado una actividad
            if (string.IsNullOrEmpty(DropDownList1.SelectedValue))
            {
                this.Label1.Text = "Por favor, seleccione una actividad.";
                return;
            }

            // Usar DataView (el comportamiento por defecto)
            DataView actividades = (DataView)this.SqlDataSource2.Select(DataSourceSelectArguments.Empty);

            if (actividades.Count > 0)
            {
                DataRowView row = actividades[0];

                this.Label1.Text = "Actividad: " + row["nombre_actividad"].ToString() + "<br>" +
                    "Descripción: " + row["descripcion"].ToString() + "<br>" +
                    "Días: " + row["dias"].ToString() + "<br>" +
                    "Horarios: " + row["horarios"].ToString() + "<br>" +
                    "Precio: $" + row["precio_mensual"].ToString();
            }
            else
            {
                this.Label1.Text = "No se encontró ninguna actividad.";
            }
        }
    }
}
