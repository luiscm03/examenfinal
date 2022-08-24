using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExamenFinalL
{
    public partial class registrar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BREGIS_Click(object sender, EventArgs e)
        {
            CUsu.Nombre = TXTNOM.Text;
            CUsu.cedula = TXTCEDU.Text;
            CUsu.apellido = TXTAPE.Text;
            CUsu.email = TXTEMAIL.Text;
            CUsu.Clave = TXTCLAVE.Text;



            if (CUsu.RegistroPersona() > 0)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Notification : Usuario ha sido registrado');", true);
            }
            else
            {
                //    lMsg.Text = "No se pudieron agregar los datos";
            }
            return;
        }

        protected void BVOLVER_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
    }
}