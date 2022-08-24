using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExamenFinalL
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BENTRAR_Click(object sender, EventArgs e)
        {
            CUsu.Setnombre(TXTRUSU.Text);
            CUsu.SetClave(TXTCONTRA.Text);

            string s = System.Configuration.ConfigurationManager.ConnectionStrings["exfinalConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            try
            {

                conexion.Open();
                SqlCommand comando = new SqlCommand("select nombre, clave from Usuario  " +
                    "where nombre =  '" + CUsu.GetNombre() + "'   and clave = '" + CUsu.GetClave() + "'", conexion);
                SqlDataReader registro = comando.ExecuteReader();
                if (registro.Read())
                {
                    Response.Redirect("Inicio.aspx");
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Notification : Usuario no existe');", true);
                }
            }
            catch (Exception)
            {

                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Notification : Revisar la conexion');", true);
            }
            finally
            {
                conexion.Close();
            }
        }

        protected void BREGIST_Click(object sender, EventArgs e)
        {
            Response.Redirect("registrar.aspx");

        }
    }
}