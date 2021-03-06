using InventoryBO;
using InventoryDA;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace InventoryBL
{
    public class SalesmanBL
    {
        public int InsertNewSalesman(SalesmanBO newSalesman)
        {
            try
            {
                SalesmanDA salesman = new SalesmanDA();
                return salesman.InsertSalesman(newSalesman);
            }
            catch
            {
                return 0;
            }
        }

        public int UpdateSalesmanInfo(SalesmanBO newSalesman)
        {
            try
            {
                SalesmanDA salesman = new SalesmanDA();
                return salesman.UpdateSalesman(newSalesman);
            }
            catch
            {
                return 0;
            }
        }

        public int DeleteSalesmanInfo(SalesmanBO newSalesman)
        {
            try
            {
                SalesmanDA salesman = new SalesmanDA();
                return salesman.DeleteSalesman(newSalesman);
            }
            catch
            {
                return 0;
            }
        }
    }
}
