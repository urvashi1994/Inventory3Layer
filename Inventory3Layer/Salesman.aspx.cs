using System;
using InventoryBO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using InventoryBL;

namespace Inventory3Layer
{
    public partial class Salesman : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            //int SalesmanId = Convert.ToInt32(txtsalesman_id);
            //string Name = txtsalesman_name.Text;
            //string City = txtcity.Text;
            //float Commission = float.Parse(txtcommission.Text);
            int result;
            SalesmanBO newSalesman = new SalesmanBO()
            {
                SalesmanId = Convert.ToInt32(txtsalesman_id.Text),
                Name = txtsalesman_name.Text,
                City = txtcity.Text,
                Commission = float.Parse(txtcommission.Text)
            };

            SalesmanBL logic = new SalesmanBL();
            result = logic.InsertNewSalesman(newSalesman);

            if(result > 0)
            {
                lblResult.Text = "Record has been successfully inserted!!!";
                clearfields();
            }
        }
        private void clearfields()
        {
            txtsalesman_id.Text = "";
            txtsalesman_name.Text = "";
            txtcity.Text = "";
            txtcommission.Text = "";
            txtsalesman_id.Focus();
        }
    }
}