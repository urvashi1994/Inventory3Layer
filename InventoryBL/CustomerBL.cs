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

        public int UpdateCustomerInfo(CustomerBO newCustomer)
        {
            try
            {
                CustomerDA customer = new CustomerDA();
                return customer.UpdateCustomer(newCustomer);
            }
            catch
            {
                return 0;
            }
        }

        public int DeleteCustomerInfo(CustomerBO newCustomer)
        {
            try
            {
                CustomerDA customer = new CustomerDA();
                return customer.DeleteCustomer(newCustomer);
            }
            catch
            {
                return 0;
            }
        }
    }
}
