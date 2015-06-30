using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace ProyectoFase2
{
    /// <summary>
    /// Descripción breve de Servicio1
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    
    public class Servicio1 : System.Web.Services.WebService
    {
        SqlConnection con = new SqlConnection("Data Source = localhost; Initial Catalog = QuetzalExpress; Integrated Security= SSPI");
        SqlCommand comando;
        [WebMethod]
        public string insertarCliente(string nombre, string apellido, int telefono, string correo, string residencia, string nit, int tarjeta, int dpi)
        {
            comando = new SqlCommand("insert into Cliente (Nombres, Apellidos, Telefono, Email, Residencia, NIT, TCredDeb, DPI) values(@nombres, @apellidos, @telefono, @email, @residencia, @nit, @tarjeta, @dpi)",con);
            comando.Parameters.AddWithValue("nombres", nombre);
            comando.Parameters.AddWithValue("apellidos", nombre);
            comando.Parameters.AddWithValue("telefono",telefono);
            comando.Parameters.AddWithValue("email", correo);
            comando.Parameters.AddWithValue("residencia", residencia);
            comando.Parameters.AddWithValue("nit", nit);
            comando.Parameters.AddWithValue("tarjeta", tarjeta);
            comando.Parameters.AddWithValue("dpi", dpi);

            try{
                con.Open();
                comando.ExecuteNonQuery();
                con.Close();
                return "Datos Guardados";
            }catch(SqlException ex)
            {
                con.Close();
                return "Error";
            }
        }

        [WebMethod]
        public string insertarUsuario(string usuario, string contraseña, string tipo, string estado){
            comando = new SqlCommand("insert into Usuario (Usuario, Contraseña, TipoUsuario, Estado) values(@usuario, @contraseña, @tipo, @estado)",con);
            comando.Parameters.AddWithValue("usuario",usuario);
            comando.Parameters.AddWithValue("contraseña", contraseña);
            comando.Parameters.AddWithValue("tipo", tipo);
            comando.Parameters.AddWithValue("estado", estado);

            try
            {
                con.Open();
                comando.ExecuteNonQuery();
                con.Close();
                return "Hecho";
            }catch(SqlException ex){
                con.Close();
                return "Error";

            }
        }

        [WebMethod]
        public string cargarImpuestos(string directorio)
        {
            SqlConnection con = new SqlConnection("Data Source = localhost;"+" Initial Catalog = QuetzalExpress; Integrated Security= SSPI");
            SqlCommand comando = new SqlCommand("BULK INSERT Impuesto FROM '" + directorio + "' WITH (FIELDTERMINATOR = ',', ROWTERMINATOR = '\n')", con);

            try
            {
                con.Open();
                comando.ExecuteNonQuery();
                con.Close();
                return "Hecho";
            }
            catch (SqlException ex)
            {
                con.Close();
                return "Error";
            }

        }

        [WebMethod]
        public string insertarPedido(string descripcion, int casilla, float peso, float precio, string estado, int lote)
        {
            comando = new SqlCommand("insert into Pedido (DescripcionCategoria, IdCasi, Peso, Precio, EstadoActual, IdLot) values(@descripcion, @casilla, @peso, @precio, @estado, @lote)", con);
            comando.Parameters.AddWithValue("@descripcion", descripcion);
            comando.Parameters.AddWithValue("@casilla", casilla);
            comando.Parameters.AddWithValue("@peso", peso);
            comando.Parameters.AddWithValue("@precio", precio);
            comando.Parameters.AddWithValue("@estado",estado);
            comando.Parameters.AddWithValue("@lote", lote);

            try
            {
                con.Open();
                comando.ExecuteNonQuery();
                con.Close();
                return "Hecho";
            }
            catch (SqlException ex)
            {
                con.Close();
                return "Error";
            }

        }

        [WebMethod]
        public string insertarEmpleado(string ape, string nom, float suel, string sucu, string dep, int tel, string dom, string correo, string usuario, string contraseña)
        {
            SqlCommand comando = new SqlCommand("insert into Empleado(Apellidos, Nombres, Sueldo, Sucursal, Departamento, Telefono, Domicilio, Email, Usuario, Contraseña)"+
            "values(@nom, @ape, @suel, @sucu, @depa, @tele, @domi, @correo, @usu, @contra",con);
            
            comando.Parameters.AddWithValue("@nom",nom);
            comando.Parameters.AddWithValue("@ape",ape);
            comando.Parameters.AddWithValue("@suel",suel);
            comando.Parameters.AddWithValue("@sucu",sucu);
            comando.Parameters.AddWithValue("@depa",dep);
            comando.Parameters.AddWithValue("@tele",tel);
            comando.Parameters.AddWithValue("@domi",dom);
            comando.Parameters.AddWithValue("@correo",correo);
            comando.Parameters.AddWithValue("@usu",usuario);
            comando.Parameters.AddWithValue("@contra",contraseña);

            try
            {
                 con.Open();
                comando.ExecuteNonQuery();
                con.Close();
                return "Hecho";
            }
            catch (SqlException ex)
            {
                con.Close();
                return "Error";
            }
        }

        [WebMethod]
        public string insertarPedidoCSV(string ruta)
        {
            SqlConnection con = new SqlConnection("Data Source = localhost; Initial Catalog = QuetzalExpress; Integrated Security= SSPI");
            SqlCommand comando = new SqlCommand("BULK INSERT Pedido FROM '" + ruta + "' WITH (FIELDTERMINATOR = ',', ROWTERMINATOR = '\n')", con);

            try
            {
                con.Open();
                comando.ExecuteNonQuery();
                con.Close();
                return "Hecho";
            }
            catch (SqlException ex)
            {
                con.Close();
                return "Error";
            }

        }
    
        [WebMethod]
        public string insertarEmpleadoCSV(string direccion)
        {
            
            SqlCommand comando = new SqlCommand("BULK INSERT Empleado FROM '" + direccion + "' WITH (FIELDTERMINATOR = ',', ROWTERMINATOR = '\n');", con);

            try
            {
con.Open();
                comando.ExecuteNonQuery();
                con.Close();
                return "Hecho";
            }
            catch (SqlException ex)
            {
              con.Close();
                return "Error";
            }


        }

        [WebMethod]
        public string consultaPedido(string numPedido)
        {
            SqlCommand comando = new SqlCommand("SELECT DescripCategoria, EstadoActual FROM Pedido WHERE IdPedido = @pedido",con);
            comando.Parameters.AddWithValue("@pedido",numPedido);
            try
            {
                con.Open();
                comando.ExecuteNonQuery();
                con.Close();
                return "Bien hecho, Fukaksu No F";
            }
            catch (SqlException ex)
            {
                con.Close();
                return "Malo Squishy, Malo!!!";
            }
            
        }


        [WebMethod]
        public int recuperarCasilla(string usuario, string contraseña)
        {
            con.Open();
            SqlCommand comando = new SqlCommand(String.Format("select * from Cliente where Usuario LIKE '${0}$' and Contraseña LIKE '${0}$'",usuario,contraseña),con);
            SqlDataReader dtLectura = comando.ExecuteReader();

            int codigo = 0;

            while(dtLectura.Read()){
                codigo = Convert.ToInt32(dtLectura["IdCasilla"]);
            }

            con.Close();
            return codigo;
        }


        [WebMethod]
        public Boolean logear(string usuario, string contraseña)
        {
            con.Open();
            SqlCommand comando = new SqlCommand(String.Format("select * from Cliente where Usuario = '%{0}%' and Contraseña = '%{1}%'",usuario,contraseña),con);
            SqlDataReader dtLector = comando.ExecuteReader();

            int codigo = 0;

            while(dtLector.Read()){
                codigo = Convert.ToInt32(dtLector["IdCasilla"]);
            }

            con.Close();
            if (codigo != 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        [WebMethod]
        public Boolean loginEmpleado(string usuario, string contraseña)
        {
            con.Open();
            SqlCommand comando = new SqlCommand(String.Format("select * from Empleado where Usuario = '%{0}%' and Contraseña = '%{1}%'", usuario, contraseña), con);
            SqlDataReader dtLector = comando.ExecuteReader();

            int codigo = 0;

            while (dtLector.Read())
            {
                codigo = Convert.ToInt32(dtLector["IdEmpleado"]);
            }

            con.Close();
            if (codigo != 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
     
        [WebMethod]
        public Boolean loginDirector(string usuario, string contraseña)
        {
            con.Open();
            SqlCommand comando = new SqlCommand(String.Format("select * from Director where Usuario = '%{0}%' and Contraseña = '%{1}%'", usuario, contraseña), con);
            SqlDataReader dtLector = comando.ExecuteReader();

            int codigo = 0;

            while (dtLector.Read())
            {
                codigo = Convert.ToInt32(dtLector["IdDirector"]);
            }

            con.Close();
            if (codigo != 0)
            {
                return true;
            }
            else
            {
                return false;
            }

        }

        [WebMethod]
        public Boolean loginAdmin(string usuario, string contraseña)
        {
            con.Open();
            SqlCommand comando = new SqlCommand(String.Format("select * from Administrador where Usuario = '%{0}%' and Contraseña = '%{1}%'", usuario, contraseña), con);
            SqlDataReader dtLector = comando.ExecuteReader();

            int codigo = 0;

            while (dtLector.Read())
            {
                codigo = Convert.ToInt32(dtLector["IdAdministrador"]);
            }

            con.Close();
            if (codigo != 0)
            {
                return true;
            }
            else
            {
                return false;
            }

        }

        [WebMethod]
        public string modificarCliente(int casilla, string nombre, string apellido, string residencia, int telefono, int tarjeta)
        {
            SqlCommand comando = new SqlCommand("Update Cliente set Nombres = @nombre, Apellidos = @apellido, Residencia = @residencia, Telefono = @telefono, TCredDeb =@tarjeta where IdCasilla = @casilla",con);
            comando.Parameters.AddWithValue("casilla", casilla);
            comando.Parameters.AddWithValue("nombre",nombre);
            comando.Parameters.AddWithValue("apellido", apellido);
            comando.Parameters.AddWithValue("residencia", residencia);
            comando.Parameters.AddWithValue("telefono", telefono);
            comando.Parameters.AddWithValue("tarjeta", tarjeta);

            try
            {
                con.Open();
                comando.ExecuteNonQuery();
                con.Close();
                return "Hecho";
            }
            catch (SqlException ex)
            {
                con.Close();
                return "error";
                throw;
            }

        }


        [WebMethod]
        public string guardarLote(string nombre, string fecha)
        {
            SqlCommand comando = new SqlCommand("insert into LOTE (Nombre, Fecha) values(@nombre, @fecha)",con);
            comando.Parameters.AddWithValue("@nombre",nombre);
            comando.Parameters.AddWithValue("@fecha", fecha);

            try
            {
                con.Open();
                comando.ExecuteNonQuery();
                con.Close();
                return "exito";
            }
            catch (SqlException ex)
            {
                con.Close();
                return "error";
            }
        }
   
        [WebMethod]
        public string guardarImpuesto(string nombre, float impuesto)
        {
            SqlCommand comando = new SqlCommand("insert into Impuesto (Nombre, Porcentaje) values(@nombre, @impuesto)",con);
            comando.Parameters.AddWithValue("@nombre",nombre);
            comando.Parameters.AddWithValue("@impuesto", impuesto);

            try
            {
                con.Open();
                comando.ExecuteNonQuery();
                con.Close();
                return "exito";
            }
            catch (SqlException ex)
            {
                con.Close();
                return "error";
            }
        }
    }
}
