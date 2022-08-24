using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExamenFinalL
{
    public partial class CProductos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BVOLVER_Click(object sender, EventArgs e)
        {
            Response.Redirect("Inicio.aspx");

        }
    }
}