using InventoryBO;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace InventoryDA
{
   public class SalesmanDA
    {
        //string connection =
        SqlConnection _sqlconnection = new SqlConnection(ConfigurationManager.ConnectionStrings["InventoryConn"].ConnectionString);
        public int InsertSalesman(SalesmanBO salesman)
        {
            try
            {
                string query = $"insert into salesman (salesman_id, name, city, commission)values({salesman.SalesmanId},'{salesman.Name}','{salesman.City}',{salesman.Commission});";
                SqlCommand cmd = new SqlCommand(query, _sqlconnection);
                _sqlconnection.Open();
                int result = cmd.ExecuteNonQuery();
                cmd.Dispose();
                return result;
            }
            catch
            {
                return 0;
            }
        }

    }
}
