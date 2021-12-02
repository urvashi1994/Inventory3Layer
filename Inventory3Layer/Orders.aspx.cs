using InventoryBL;
using InventoryBO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Inventory3Layer
{
    public partial class Orders : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {   
            int result;
            OrdersBO NewOrders = new OrdersBO()
            {
                OrderNo = Convert.ToInt32(txtord_no.Text),
                PurchAmt = float.Parse(txtpurch_amt.Text),
                OrderDate = Convert.ToDateTime(txtord_date.Text),
                CustomerId = Convert.ToInt32(txtcust_id.Text),
                SalesmanId = Convert.ToInt32(txtsalesman_id.Text)
            };

            OrdersBL logic = new OrdersBL();
            result = logic.InsertNewOrder(NewOrders);
           
            if (result > 0)
            {
                lblResult.Text = "Record has been successfully inserted!!!";
                ClearFields();

            }
        }
        private void ClearFields()
        {
            txtord_no.Text = "";
            txtpurch_amt.Text = "";
            txtord_date.Text = "";
            txtcust_id.Text = "";
            txtsalesman_id.Text = "";
            txtord_no.Focus();
        }
    }
}