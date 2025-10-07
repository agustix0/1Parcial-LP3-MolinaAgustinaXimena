using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace _1Parcial_LP3_MolinaAgustinaXimena
{
    public partial class ModificarCliente : System.Web.UI.Page
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
                
                this.TextBox2.Text = cliente[1].ToString();
                this.TextBox3.Text = cliente[2].ToString();
                this.TextBox4.Text = cliente[3].ToString();
                this.TextBox5.Text = cliente[4].ToString();
                this.TextBox6.Text = cliente[5].ToString();
                this.DropDownList1.SelectedValue = cliente[6].ToString();

            }
            else this.Label1.Text = "No existe un cliente con dicho DNI";

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int cantidad;
            cantidad = this.SqlDataSource1.Update();


            if (cantidad == 1) this.Label2.Text = "Se modificaron los datos del cliente.";
            else this.Label2.Text = "No existe el cliente. ";
            
            
            
            
            }
    }
}