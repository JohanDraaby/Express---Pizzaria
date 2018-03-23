using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

namespace Express_Pizzaria
{
    public class DatabaseConnection
    {
        SqlConnection conn = new SqlConnection();
        public DatabaseConnection() //Constructor
        {
            //Connection string for intergrated windows security
            conn.ConnectionString =
            "Data Source=localhost;" +
            "Initial Catalog=ExpressPizzaDB;" +
            "Integrated Security=SSPI;";
            conn.Open();
        }

        ~DatabaseConnection(){ //Destructor
            conn.Close();
        }
    }
}