using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Clase1_lp3
{
    public partial class AltaAutos_ABM : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // 1️⃣ Verificar que haya un archivo seleccionado
            if (FileUpload1.HasFile)
            {
                // Obtener solo el nombre del archivo (sin la ruta completa del cliente)
                string nombreArchivo = Path.GetFileName(FileUpload1.FileName);

                // Crear la ruta de destino dentro del proyecto (carpeta /fotos)
                string ruta = Server.MapPath("~/fotos/" + nombreArchivo);

                // Guardar la foto físicamente en esa carpeta
                FileUpload1.SaveAs(ruta);

                // 2️⃣ Asignar parámetros al SqlDataSource
                this.SqlDataSource2.InsertParameters["patente"].DefaultValue = this.TextBox1.Text;
                this.SqlDataSource2.InsertParameters["propietario"].DefaultValue = this.TextBox2.Text;
                this.SqlDataSource2.InsertParameters["precio"].DefaultValue = this.TextBox3.Text;
                this.SqlDataSource2.InsertParameters["modelo"].DefaultValue = this.TextBox4.Text;
                this.SqlDataSource2.InsertParameters["codigomarca"].DefaultValue = this.DropDownList1.SelectedValue;

                // Guardar solo la ruta relativa (para mostrar la imagen luego)
                this.SqlDataSource2.InsertParameters["foto"].DefaultValue = "fotos/" + nombreArchivo;

                // 3️⃣ Insertar el registro
                this.SqlDataSource2.Insert();

                // 4️⃣ Mostrar mensaje y limpiar controles
                this.Label1.Text = "Los datos fueron cargados correctamente";
                this.TextBox1.Text = this.TextBox2.Text = this.TextBox3.Text = this.TextBox4.Text = "";
            }
            else
            {
                this.Label1.Text = "Debe seleccionar una foto antes de guardar.";
            }
        }
    }
}   
