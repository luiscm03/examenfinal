using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExamenFinalL
{
    public partial class Inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BTNUSU_Click(object sender, EventArgs e)
        {
            Response.Redirect("Usu.aspx");

        }

        protected void BTNPRODU_Click(object sender, EventArgs e)
        {
            Response.Redirect("CProductos.aspx");

        }

        protected void BTNBORRARPRO_Click(object sender, EventArgs e)
        {
            Response.Redirect("BProductos.aspx");

        }

        protected void BTNACTU_Click(object sender, EventArgs e)
        {
            Response.Redirect("AProductos.aspx");

        }

        protected void BTNAÑADA_Click(object sender, EventArgs e)
        {
            Response.Redirect("AGProductos.aspx");

        }
    }
}