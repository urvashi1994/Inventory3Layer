using InventoryBO;
using InventoryDA;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace InventoryBL
{
    public class CustomerBL
    {
        public int InsertNewCustomer(CustomerBO NewCustomer)
        {
            try
            {
               CustomerDA customer = new CustomerDA();
                return customer.InsertCustomer(NewCustomer);
               
            }
            catch
            {
                return 0;
            }
        }   
    }
}
