using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Express_Pizzaria
{
    public class DatabaseConnection
    {
        SqlConnection conn = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();

        public DatabaseConnection() //Constructor
        {
            //Connection string for intergrated windows security

            conn.ConnectionString =
            "Data Source=localhost;" +
            "Initial Catalog=ExpressPizzaDB;" +
            "Integrated Security=SSPI;";

            try
            {
                conn.Open();
            }
            catch (Exception)
            {

                throw new Exception("Error connecting to the database"); //Throw a exception to the ui layer 
            }
        }
        /*
        ~DatabaseConnection(){ //Destructor
            conn.Close(); //Close connection
        }
        */
        private DataTable ReturnSqlQuerie(string sqlQuerie)
        {
            SqlCommand sqlCommand = new SqlCommand(sqlQuerie, conn);

            try //Try executing the command
            {
                SqlDataAdapter da = new SqlDataAdapter(sqlCommand);
                DataTable dt = new DataTable();
                da.Fill(dt);

                return dt;
            }
            catch(Exception e)
            {
                throw new Exception("Error connecting to database \n" + e.Message); //Throw a exception to the ui layer
            }
        }
        
        private int SqlNonQuerie(string sqlQuerie)
        {
            SqlCommand sqlCommand = new SqlCommand(sqlQuerie, conn);

            try //Try executing the command
            {
                return sqlCommand.ExecuteNonQuery();
            }
            catch(Exception e)
            {
                throw e;
            }
        }

        public DataTable SelectAllPizza(string orderBy)
        {
            string orderByCommand = "";
            switch (orderBy)
            {
                case "ID":
                    {
                        orderByCommand = "Product.ID";
                        break;
                    }
                case "Name":
                    {
                        orderByCommand = "Product.Name";
                        break;
                    }
                case "Price":
                    {
                        orderByCommand = "Varient.Price";
                        break;
                    }
                case "Varient":
                    {
                        orderByCommand = "Size.Name";
                        break;
                    }
            }
            return this.ReturnSqlQuerie(@"select Product.ID, Product.Name, Varient.Price, Size.Name from Product
                                        inner join Varient on Varient.ProductID = Product.ID
                                        inner join Size on Size.ID = Varient.SizeID order by " + orderByCommand);
        }

        public DataTable SearchIngredients(string orderBy, string searchTerm)
        {
            string orderByCommand = "";
            switch (orderBy)
            {
                case "ID":
                    {
                        orderByCommand = "Product.ID";
                        break;
                    }
                case "Name":
                    {
                        orderByCommand = "Product.Name";
                        break;
                    }
                case "Price":
                    {
                        orderByCommand = "Varient.Price";
                        break;
                    }
                case "Varient":
                    {
                        orderByCommand = "Size.Name";
                        break;
                    }
            }

                    return this.ReturnSqlQuerie(@"select Product.ID, Product.Name, Varient.Price, Size.Name from Product
                                                inner join Product_Ingredient on Product_Ingredient.ProductID = Product.ID
                                                inner join Ingredient on Ingredient.ID = Product_Ingredient.IngredientID
                                                inner join Varient on Varient.ProductID = Product.ID
                                                inner join Size on Size.ID = Varient.SizeID
                                                where Ingredient.Name='" + searchTerm + "' order by " + orderByCommand);
        }

        public DataTable SelectAllIngredients()
        {
            return ReturnSqlQuerie("Select Name from Ingredient");
        }
    }
}