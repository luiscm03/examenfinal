﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExamenFinalL
{
    public partial class AProductos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BCERRAR_Click(object sender, EventArgs e)
        {
            Response.Redirect("Inicio.aspx");

        }

        protected void BACTU_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Update();
        }
    }
}