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
    public partial class AltaActividades : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string nombre_actividad = TextBox1.Text;
            string descripcion = TextBox2.Text;
            string dias = TextBox3.Text;
            string horario = TextBox4.Text;
            int idPlan = int.Parse(DropDownList1.SelectedValue);

            string conexion = ConfigurationManager.ConnectionStrings["Parcial1ConnectionString"].ConnectionString;


            using (SqlConnection conectar = new SqlConnection(conexion))
            {
                string insertar = "INSERT INTO Actividades (nombre_actividad, descripcion, dias, horario, id_plan) " +
                               "VALUES (@nombre_actividad, @descripcion, @dias, @horario, @id_plan)";

                SqlCommand comando = new SqlCommand(insertar, conectar);

                comando.Parameters.AddWithValue("@nombre_actividad", nombre_actividad);
                comando.Parameters.AddWithValue("@descripcion", descripcion);
                comando.Parameters.AddWithValue("@dias", dias);
                comando.Parameters.AddWithValue("@horario", horario);
                comando.Parameters.AddWithValue("@id_plan", idPlan);


                try
                {
                    conectar.Open();
                    comando.ExecuteNonQuery();
                    Label1.Text = "Actividad agregada con éxito.";
                }
                catch (Exception ex)
                {
                    Label1.Text = "Error al agregar la actividad. " + ex.Message;
                }

            }
        }
    }
}