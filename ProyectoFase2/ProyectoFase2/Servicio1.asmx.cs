using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
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
        SqlConnection con = new SqlConnection("Data Source = localhost; Initial Catalog = QuetzalExp; Integrated Security= SSPI");
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
            "values(@ape, @nom, @suel, @sucu, @depa, @tele, @domi, @correo, @usu, @contra)", con);

            comando.Parameters.AddWithValue("@ape", ape);
            comando.Parameters.AddWithValue("@nom",nom);
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
        public void InsertarPaquete(int imp, int ped, string nombre, string estado, float peso, string existencia )
        {
            SqlCommand comando = new SqlCommand("insert into Paquete(IdImp, IdPed, Nombre, Estado, Peso, Existencia) values('" + imp + "','" + ped + "','" + nombre + "','" + estado + "','" + peso + "','" + existencia + "')", con);
            
            try
            {
                con.Open();
                comando.ExecuteNonQuery();
                con.Close();
            }
            catch (SqlException ex)
            {
                con.Close();
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
        public Boolean loggin(string usuario, string contraseña)
        {
            int codigo = 0;
            SqlConnection con = new SqlConnection("Data Source = localhost; Initial Catalog = QuetzalExp; Integrated Security= SSPI");
            con.Open();
            SqlCommand comando = new SqlCommand(String.Format("select * from Cliente where Usuario like '%{0}%' and Contraseña like '%{1}%'",usuario,contraseña), con);
            SqlDataReader lector = comando.ExecuteReader();

            while (lector.Read())
            {
                codigo = Convert.ToInt32(lector["IdCasilla"]);
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
        public Boolean logear(string usuario, string contraseña)
        {

            int codigo = 0;
            SqlConnection con = new SqlConnection("Data Source = localhost; Initial Catalog = QuetzalExp; Integrated Security= SSPI");
            con.Open();
            SqlCommand comando = new SqlCommand(String.Format("select * from Empleado where Usuario like '%{0}%' and Contraseña like '%{1}%'", usuario, contraseña), con);
            SqlDataReader lector = comando.ExecuteReader();

            while (lector.Read())
            {
                codigo = Convert.ToInt32(lector["IdEmpleado"]);
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

        //[WebMethod]
        //public Boolean loginEmpleado(string usuario, string contraseña)
        //{
        //    con.Open();
        //    SqlCommand comando = new SqlCommand(String.Format("select * from Empleado where Usuario = '%{0}%' and Contraseña = '%{1}%'", usuario, contraseña), con);
        //    SqlDataReader dtLector = comando.ExecuteReader();

        //    int codigo = 0;

        //    while (dtLector.Read())
        //    {
        //        codigo = Convert.ToInt32(dtLector["IdEmpleado"]);
        //    }

        //    con.Close();
        //    if (codigo != 0)
        //    {
        //        return true;
        //    }
        //    else
        //    {
        //        return false;
        //    }
        //}
     
        //[WebMethod]
        //public Boolean loginDirector(string usuario, string contraseña)
        //{
        //    con.Open();
        //    SqlCommand comando = new SqlCommand(String.Format("select * from Director where Usuario = '%{0}%' and Contraseña = '%{1}%'", usuario, contraseña), con);
        //    SqlDataReader dtLector = comando.ExecuteReader();

        //    int codigo = 0;

        //    while (dtLector.Read())
        //    {
        //        codigo = Convert.ToInt32(dtLector["IdDirector"]);
        //    }

        //    con.Close();
        //    if (codigo != 0)
        //    {
        //        return true;
        //    }
        //    else
        //    {
        //        return false;
        //    }

        //}

        //[WebMethod]
        //public Boolean loginAdmin(string usuario, string contraseña)
        //{
        //    con.Open();
        //    SqlCommand comando = new SqlCommand(String.Format("select * from Administrador where Usuario = '%{0}%' and Contraseña = '%{1}%'", usuario, contraseña), con);
        //    SqlDataReader dtLector = comando.ExecuteReader();

        //    int codigo = 0;

        //    while (dtLector.Read())
        //    {
        //        codigo = Convert.ToInt32(dtLector["IdAdministrador"]);
        //    }

        //    con.Close();
        //    if (codigo != 0)
        //    {
        //        return true;
        //    }
        //    else
        //    {
        //        return false;
        //    }

        //}

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


        [WebMethod]
        public string cargarImagen(string direccion)
        {
            

            return "exito";
        }


        [WebMethod]
        public void AgregarFoto(string foto, int paquete)
        {
            string cadena = @"Data source=localhost;Initial catalog=QuetzalExp;Trusted_Connection=Yes;";

            SqlConnection con = new SqlConnection(cadena);
            con.Open();
            SqlCommand comando = new SqlCommand(String.Format("update Paquete set Estado =1, Foto= '" + foto + "' where IdPaquete like '%{0}%'", paquete), con);
            try
            {
                comando.ExecuteNonQuery();
            }
            catch (Exception e)
            {
                throw new Exception("Error", e);
            }

            con.Close();

        }
        [WebMethod]
        public void AgregarPrecio(float precio, int paquete)
        {
            string enlace = @"Data source= localhost;Initial catalog=QuetzalExp;Trusted_Connection=Yes;";

            SqlConnection conectar = new SqlConnection(enlace);
            conectar.Open();
            SqlCommand cmd = new SqlCommand(String.Format("update Paquete set Estado =2, Precio= " + precio + " where IdPaquete like '%{0}%'", paquete), conectar);
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch (Exception e)
            {
                throw new Exception("Error", e);
            }

            conectar.Close();

        }

        [WebMethod]
        public void estadoFinal(int estado)
        {
            SqlCommand comando = new SqlCommand("Update Paquete set estado = 3 where IdPaquete ='"+estado+"' ",con);
            try
            {
                con.Open();
                comando.ExecuteNonQuery();
                con.Close();
            }
            catch (SqlException ex)
            {
                con.Close();
                throw new Exception("Error al insertar el estado", ex);
            }
        }



        [WebMethod]
        public int getcodigo(string usuario, string contraseña)
        {
            int codigo = 0;

            string enlace = "Data Source = localhost; Initial Catalog = QuetzalExp; Integrated Security= SSPI;";
            SqlConnection conectar = new SqlConnection(enlace);
            conectar.Open();
            SqlCommand cmd = new SqlCommand(String.Format("Select * from Cliente where Usuario like '%{0}%' and Contraseña like '%{1}%'", usuario, contraseña), conectar);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                codigo = Convert.ToInt32(reader["IdCasilla"]);
            }
            conectar.Close();
            return codigo;
        }



        [WebMethod]
        public int getcodigoempleado(string usuario, string contraseña)
        {
            int codigo = 0;

            string enlace = "Data Source = localhost; Initial Catalog = QuetzalExp; Integrated Security= SSPI;";
            SqlConnection conectar = new SqlConnection(enlace);
            conectar.Open();
            SqlCommand cmd = new SqlCommand(String.Format("Select * from Empleado where Usuario like '%{0}%' and Contraseña like '%{1}%'", usuario, contraseña), conectar);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                codigo = Convert.ToInt32(reader["IdEmpleado"]);
            }
            conectar.Close();
            return codigo;
        }




        [WebMethod]
        public void InsertarCSVImpuesto(string ruta)
        {
            Boolean b = true;
            string linea = "";
            char[] limita = { ',' };
            string[] registro;
            string[] columna;
            StreamReader lector = new StreamReader(ruta);
            List<string> lista = new List<string>();
            while (!lector.EndOfStream)
            {
                linea = lector.ReadLine();
                if (b)
                {
                    columna = linea.Split(limita);
                    b = false;
                }
                else
                {
                    registro = linea.Split(limita);
                    string sueldo = registro[2];
                    double suel = Convert.ToDouble(sueldo);
                    string cad = "insert into CategoriaImpuesto(NombreImpuesto,Porcentaje) values('" + registro[0] + "','" + registro[1] + "')";
                    string conectar = "Data Source = localhost; Initial Catalog = QuetzalExp; Integrated Security= SSPI";
                    SqlConnection con = new SqlConnection(conectar);
                    con.Open();
                    SqlCommand comando = new SqlCommand(cad, con);

                    try
                    {
                        comando.ExecuteNonQuery();
                    }
                    catch (Exception ex)
                    {

                        throw new Exception("pato!!");
                    }

                    con.Close();
                }
            }
        }


        [WebMethod]
        public void InsertarCSVEmpleado(string ruta)
        {
            Boolean b = true;
            string linea = "";
            char[] limita = { ',' };
            string[] registro;
            string[] columna;
            StreamReader lector = new StreamReader(ruta);
            List<string> lista = new List<string>();
            while (!lector.EndOfStream)
            {
                linea = lector.ReadLine();
                if (b)
                {
                    columna = linea.Split(limita);
                    b = false;
                }
                else
                {
                    registro = linea.Split(limita);
                    string sueldo = registro[2];
                    double suel = Convert.ToDouble(sueldo);
                    string cad = "insert into Empleado(Apellidos,Nombres,Sueldo,Sucursal,Departamento,Usuario,Contraseña) values('" + registro[0] + "','" + registro[1] + "','" + suel + "','" + registro[3] + "','" + registro[4] + "','" + registro[0] + "','" + registro[1] + "')";
                    string conectar = "Data Source = localhost; Initial Catalog = QuetzalExp; Integrated Security= SSPI";
                    SqlConnection con = new SqlConnection(conectar);
                    con.Open();
                    SqlCommand comando = new SqlCommand(cad,con);

                    try
                    {
                        comando.ExecuteNonQuery();
                    }
                    catch (Exception ex)
                    {
                        
                        throw new Exception("pato!!");
                    }

                    con.Close();
                }
            }
            
        }


        [WebMethod]
        public void InsertarCSVProducto(string ruta)
        {
            Boolean b = true;
            string linea = "";
            char[] limita = { ',' };
            string[] registro;
            string[] columna;
            StreamReader lector = new StreamReader(ruta);
            List<string> lista = new List<string>();
            while (!lector.EndOfStream)
            {
                linea = lector.ReadLine();
                if (b)
                {
                    columna = linea.Split(limita);
                    b = false;
                }
                else
                {
                    registro = linea.Split(limita);
                    string sueldo = registro[2];
                    double suel = Convert.ToDouble(sueldo);
                    string cad = "insert into Pedido(DescripcionCategoria, IdCasi, Peso, Precio) values('" + registro[0] + "','" + registro[1] + "','" + registro[2] + "','" + registro[3] + "')";
                    string conectar = "Data Source = localhost; Initial Catalog = QuetzalExp; Integrated Security= SSPI";
                    SqlConnection con = new SqlConnection(conectar);
                    con.Open();
                    SqlCommand comando = new SqlCommand(cad, con);

                    try
                    {
                        comando.ExecuteNonQuery();
                    }
                    catch (Exception ex)
                    {

                        throw new Exception("pato!!");
                    }

                    con.Close();
                }
            }
        }


        [WebMethod]
        public void InsertarCSVBodega(string ruta)
        {
            Boolean b = true;
            string linea = "";
            char[] limita = { ',' };
            string[] registro;
            string[] columna;
            StreamReader lector = new StreamReader(ruta);
            List<string> lista = new List<string>();
            while (!lector.EndOfStream)
            {
                linea = lector.ReadLine();
                if (b)
                {
                    columna = linea.Split(limita);
                    b = false;
                }
                else
                {
                    registro = linea.Split(limita);
                    string sueldo = registro[2];
                    double suel = Convert.ToDouble(sueldo);
                    string cad = "insert into Bodega(IdLotes, Categoria, IdCasilla, Peso, Precio) values('" + registro[0] + "','" + registro[1] + "','" + registro[2] + "','" + registro[3] + "','" + registro[4] + "')";
                    string conectar = "Data Source = localhost; Initial Catalog = QuetzalExp; Integrated Security= SSPI";
                    SqlConnection con = new SqlConnection(conectar);
                    con.Open();
                    SqlCommand comando = new SqlCommand(cad, con);

                    try
                    {
                        comando.ExecuteNonQuery();
                    }
                    catch (Exception ex)
                    {

                        throw new Exception("pato!!");
                    }

                    con.Close();
                }
            }
        }

    }
}