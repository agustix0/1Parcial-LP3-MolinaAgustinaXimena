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
    public partial class AltaPlanes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string descripcion = TextBox1.Text;
            string nombre_plan = TextBox2.Text;
            string precio_mensual = TextBox3.Text;

            string conexion = ConfigurationManager.ConnectionStrings["Parcial1ConnectionString"].ConnectionString;


            using (SqlConnection conectar = new SqlConnection(conexion))
            {
                string insertar = "INSERT INTO Planes (descripcion, nombre_plan, precio_mensual) " +
                               "VALUES (@descripcion, @nombre_plan, @precio_mensual)";

                SqlCommand comando = new SqlCommand(insertar, conectar);

                comando.Parameters.AddWithValue("@descripcion", descripcion);
                comando.Parameters.AddWithValue("@nombre_plan", nombre_plan);
                comando.Parameters.AddWithValue("@precio_mensual", precio_mensual);


                try
                {
                    conectar.Open();
                    comando.ExecuteNonQuery();
                    Label1.Text = "Plan agregado con éxito!";
                }
                catch (Exception ex)
                {
                    Label1.Text = "Error al agregar el plan. " + ex.Message;
                }
            }
        }
    }
}
  
