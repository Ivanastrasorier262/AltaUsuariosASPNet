using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Clase1_lp3
{
    public partial class Clase5_Modificaion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.SqlDataSource1.DataSourceMode = SqlDataSourceMode.DataReader;

            SqlDataReader articulo;
            articulo = (SqlDataReader)this.SqlDataSource1.Select(DataSourceSelectArguments.Empty);

            if (articulo.Read())
            {
                this.TextBox2.Text = articulo[1].ToString();
                this.TextBox3.Text = articulo[2].ToString();
                this.DropDownList1.SelectedValue = articulo[3].ToString();



            }
            else this.Label1.Text = "No existe el articulo con dicho codigo";
        }
    }
}