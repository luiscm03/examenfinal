using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExamenFinalL
{
    public partial class AGProductos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BTNVOLVER_Click(object sender, EventArgs e)
        {
            Response.Redirect("Inicio.aspx");

        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }

        protected void BTNAGREGAR_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Insert();
        }
    }
}