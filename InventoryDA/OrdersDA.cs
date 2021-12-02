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
    public class OrdersDA
    {
        SqlConnection _sqlconnection = new SqlConnection(ConfigurationManager.ConnectionStrings["InventoryConn"].ConnectionString);

        public int InsertOrder(OrdersBO order)
        {
            try
            {
                string query = $"insert into orders (order_no, purch_amt, ord_date, customer_id, salesman_id) values ({order.OrderNo},{order.PurchAmt},'{order.OrderDate}',{order.CustomerId},{order.SalesmanId});";
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
