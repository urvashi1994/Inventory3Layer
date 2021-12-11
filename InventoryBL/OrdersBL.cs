using InventoryBO;
using InventoryDA;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace InventoryBL
{
    public class OrdersBL
    {
        public int InsertNewOrder(OrdersBO NewOrders)
        {
            try
            {
                OrdersDA order = new OrdersDA();
                return order.InsertOrder(NewOrders);
            }
            catch
            {
                return 0;
            }
        }

        public int UpdateOrdersInfo(OrdersBO newOrder)
        {
            try
            {
                OrdersDA order = new OrdersDA();
                return order.UpdateOrder(newOrder);
            }

            catch
            {
                return 0;
            }
        }

        public int DeleteOrdersInfo(OrdersBO newOrder)
        {
            try
            {
                OrdersDA order = new OrdersDA();
                return order.DeleteOrder(newOrder);
            }

            catch
            {
                return 0;
            }
        }

    }
}
