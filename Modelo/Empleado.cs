using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;
using System.Data;
using System.Web.UI.WebControls;

namespace Modelo
{
    public class Empleado
    {
        ConexionBD conectar;
        private DataTable drop_puesto() 
        {
            DataTable tabla = new DataTable();
            conectar = new ConexionBD();
            string consulta = String.Format("selec id_puesto as id, puesto from puestos");
            MySqlDataAdapter query = new MySqlDataAdapter(consulta, conectar.conectar);
            query.Fill(tabla);
            conectar.CerrarConexion();
            return tabla;
        }
        private DataTable grid_empleados()
        {
            DataTable tabla = new DataTable();
            conectar = new ConexionBD();
            string consulta = String.Format("selec id_puesto as id, puesto from puestos");
            MySqlDataAdapter query = new MySqlDataAdapter(consulta, conectar.conectar);
            query.Fill(tabla);
            conectar.CerrarConexion();
            return tabla;
        }
    }
}
