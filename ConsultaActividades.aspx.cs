using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1Parcial_LP3_MolinaAgustinaXimena
{
    public partial class ConsultaActividades : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            Label1.Text = string.Empty;

            this.SqlDataSource2.DataSourceMode = SqlDataSourceMode.DataReader;

            SqlDataReader actividad; 

            actividad = (SqlDataReader)SqlDataSource2.Select(DataSourceSelectArguments.Empty); 


            if (actividad.Read()) 
            {
                this.Label1.Text = " Nombre de actividad: " + actividad[1] + "<br>" + "Descripcion: " + actividad[2]  + "<br>" + "Dias: " + actividad[3] + "<br>" + "Horario: " + actividad[4];

            } 
          


        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }

}
