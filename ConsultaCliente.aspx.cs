using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1Parcial_LP3_MolinaAgustinaXimena
{
    public partial class ConsultaCliente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.SqlDataSource1.DataSourceMode = SqlDataSourceMode.DataReader;

            SqlDataReader cliente; 

            cliente = (SqlDataReader)SqlDataSource1.Select(DataSourceSelectArguments.Empty); 

            if (cliente.Read())
            {
                this.Label1.Text = "DNI: " + cliente[0] + "<br>" +
                                   "Nombre: " + cliente[1] + "<br>" +
                                   "Apellido: " + cliente[2] + "<br>" +
                                   "Telefono: " + cliente[3] + "<br>" +
                                   "Direccion: " + cliente[4];  
            }
            else this.Label1.Text = "No existe un articulo con dicho código";


        }
    }
    }
