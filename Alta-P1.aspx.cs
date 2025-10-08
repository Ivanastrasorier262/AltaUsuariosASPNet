using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Clase1_lp3
{
    public partial class Alta_P1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.SqlClientes.Insert();
            this.Label1.Text = "Cliente agregado correctamente";
            this.TextBox1.Text =this.TextBox2.Text = this.TextBox3.Text = this.TextBox4.Text = this.TextBox5.Text = "";
        }

        protected void SqlClientes_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}