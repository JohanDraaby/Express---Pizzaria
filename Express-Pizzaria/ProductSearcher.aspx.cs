using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace Express_Pizzaria
{
    public partial class ProductSearcher : System.Web.UI.Page
    {
        DatabaseConnection databaseConnection;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                databaseConnection = new DatabaseConnection();
            }
            catch (Exception exception)
            {
                ErrorMessage.Text = exception.Message; //Used for debug purpose, possible security breach.
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            UpdateTable();
        }

        void FillTable(DataTable dataTable)
        {
            for(int i = 0; i < dataTable.Rows.Count; i++)
            {
                TableRow tableRow = new TableRow();
                ProductTable.Rows.Add(tableRow);
                for (int j = 0; j < dataTable.Columns.Count; j++)
                {
                    TableCell tableCell = new TableCell();
                    tableCell.Text = dataTable.Rows[i][j].ToString();

                    tableRow.Cells.Add(tableCell);
                }
            }
        }

        private void UpdateTable()
        {
            DataTable dataTable = new DataTable();
            try
            {
                dataTable = databaseConnection.SelectAllPizza(SortByDropDown.SelectedValue);//Execute sql qurie through the database connection object
            }
            catch (Exception exception)
            {
                ErrorMessage.Text = exception.Message; //Used for debug purpose, possible security breach.
            }

            this.FillTable(dataTable);
        }

        protected void Search_Click(object sender, EventArgs e)
        {
            DataTable dataTable = new DataTable();
            try
            {
                dataTable = databaseConnection.SearchIngredients(SortByDropDown.SelectedValue, SearchInput.Text);//Execute sql qurie through the database connection object
            }
            catch (Exception exception)
            {
                ErrorMessage.Text = exception.Message; //Used for debug purpose, possible security breach.
            }

            this.FillTable(dataTable);
            
        }
    }
}