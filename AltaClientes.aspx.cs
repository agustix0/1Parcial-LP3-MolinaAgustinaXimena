using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace _1Parcial_LP3_MolinaAgustinaXimena
{
    public partial class AltaClientes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string dni = TextBox1.Text;
            string nombre = TextBox2.Text;
            string apellido = TextBox3.Text;
            string telefono = TextBox4.Text;
            string direccion = TextBox5.Text;
            int idPlan = int.Parse(DropDownList1.SelectedValue);

            string conexion = ConfigurationManager.ConnectionStrings["Parcial1ConnectionString"].ConnectionString;

            using (SqlConnection conectar = new SqlConnection(conexion))
            {
                string insertar = "INSERT INTO Clientes (dni, nombre, apellido, telefono, direccion, id_plan) " +
                               "VALUES (@dni, @nombre, @apellido, @telefono, @direccion, @id_plan)";

                SqlCommand comando = new SqlCommand(insertar, conectar);

                comando.Parameters.AddWithValue("@dni", dni);
                comando.Parameters.AddWithValue("@nombre", nombre);
                comando.Parameters.AddWithValue("@apellido", apellido);
                comando.Parameters.AddWithValue("@telefono", telefono);
                comando.Parameters.AddWithValue("@direccion", direccion);
                comando.Parameters.AddWithValue("@id_plan", idPlan);


                try
                {
                    conectar.Open();
                    comando.ExecuteNonQuery();
                    Label1.Text = "Cliente agregado con éxito.";
                }
                catch (Exception ex)
                {
                    Label1.Text = "Error al agregar cliente. " + ex.Message;
                }
            }
        }

    }
}