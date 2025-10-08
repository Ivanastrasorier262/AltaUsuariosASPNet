using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Clase1_lp3
{
    public partial class Modificaion_P1 : System.Web.UI.Page
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
                this.TextBox2.Text = clientes[1].ToString();
                this.TextBox3.Text = clientes[2].ToString();
                this.TextBox4.Text = clientes[3].ToString();
                this.TextBox5.Text = clientes[4].ToString();

                this.DropDownList1.SelectedValue = clientes[5].ToString();

            }
            else
            {
                this.Label1.Text = "No existe el cliente con dicho DNI";
                this.TextBox2.Text = this.TextBox3.Text = this.TextBox4.Text = this.TextBox5.Text = "";
                this.DropDownList1.SelectedValue = "1";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int cantidad;
            cantidad = this.SqlDataSource1.Update();    
            if (cantidad == 1) this.Label2.Text = "Cliente modificado correctamente";
            else this.Label2.Text = "No se pudo modificar el cliente, no se encuetra";
            
        }
    }
}