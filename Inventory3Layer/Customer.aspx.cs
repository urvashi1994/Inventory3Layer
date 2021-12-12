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
    public partial class Customer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            //int CustomerId = Convert.ToInt32(txtcust_id.Text);
            //string name = txtcust_name.Text;
            //string city = txtcity.Text;
            //int grade = Convert.ToInt32(txtgrade.Text);
            //int SalesmanId = Convert.ToInt32(txtsalesman_id.Text);

            int result;
            CustomerBO NewCustomer = new CustomerBO()
            {
                CustomerId = Convert.ToInt32(txtcust_id.Text),
                name = txtcust_name.Text,
                city = txtcity.Text,
                grade = Convert.ToInt32(txtgrade.Text),
                SalesmanId = Convert.ToInt32(txtsalesman_id.Text)
            };

       
            CustomerBL logic = new CustomerBL();
            result = logic.InsertNewCustomer(NewCustomer);

            if (result > 0)
            {
                lblResult.ForeColor = System.Drawing.Color.Green;
                lblResult.Text = "Record has been successfully inserted!!!";
                ClearFields();
            }
        }

        private void ClearFields()  //void- it is return nothing that'y we put void here
        {
            txtcust_id.Text = "";     //this is used by only customer class.we dont want this method to expose to the outside of this class even by accident. 
            txtcust_name.Text = "";     //this is private method for tjhis class only
            txtcity.Text = "";
            txtgrade.Text = "";
            txtsalesman_id.Text = "";
            txtcust_id.Focus();
        }


        protected void BtnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                int result;
                CustomerBO NewCustomer = new CustomerBO()
                {
                    CustomerId = Convert.ToInt32(txtcust_id.Text),
                    name = txtcust_name.Text,
                    city = txtcity.Text,
                    grade = Convert.ToInt32(txtgrade.Text),
                    SalesmanId = Convert.ToInt32(txtsalesman_id.Text)
                };


                CustomerBL logic = new CustomerBL();
                result = logic.UpdateCustomerInfo(NewCustomer);

                if (result > 0)
                {
                    lblResult.ForeColor = System.Drawing.Color.Green;
                    lblResult.Text = "Record has been successfully Updated!!!";
                    ClearFields();
                }
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }

        protected void BtnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                int result;
                CustomerBO newCustomer = new CustomerBO()
                {
                    CustomerId = Convert.ToInt32(txtcust_id.Text),
                    
                };


                CustomerBL logic = new CustomerBL();
                result = logic.DeleteCustomerInfo(newCustomer);

                if (result > 0)
                {
                    lblResult.ForeColor = System.Drawing.Color.Green;
                    lblResult.Text = "Record has been successfully Deleted!!!";
                    ClearFields();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}