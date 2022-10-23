
using System;
using Modelo;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tarea_ASP
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


       

        protected void btn_crear_Click(object sender, EventArgs e)
        {
             
            ConexionBD cn = new ConexionBD ();
            cn.Abrirconexion();
            cn.CerrarConexion();
        }
    }
}