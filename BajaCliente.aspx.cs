using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1Parcial_LP3_MolinaAgustinaXimena
{
    public partial class BajaCliente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            int cantidad = this.SqlDataSource1.Delete();

            if (cantidad == 1) this.Label1.Text = "Se borro el cliente. ";

            else this.Label1.Text = "No existe dicho cliente.";

        }
    }
}