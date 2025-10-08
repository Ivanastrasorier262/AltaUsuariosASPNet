using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Clase1_lp3
{
    public partial class AltaPlanes_P1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.SqlDataSource1.Insert();

            
            this.Label1.Text = "Plan registrado exitosamente";
            

           
            this.TextBox1.Text = this.TextBox2.Text = this.TextBox3.Text = "";
        }
            
        }
    }
