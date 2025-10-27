using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Clase1_lp3
{
    public partial class ConsultMarca_ABM : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.SqlDataSource2.SelectParameters["codigomarca"].DefaultValue =
            this.DropDownList1.SelectedValue;
            this.SqlDataSource2.DataSourceMode = SqlDataSourceMode.DataReader;
            SqlDataReader registros =
           (SqlDataReader)this.SqlDataSource2.Select(DataSourceSelectArguments.Empty);
            this.Label1.Text = "";
            while (registros.Read() == true)
            {
                this.Label1.Text = this.Label1.Text + "<img src=\"" +
                registros["foto"] + "\"><br>";
            }
        }
    }
    }
