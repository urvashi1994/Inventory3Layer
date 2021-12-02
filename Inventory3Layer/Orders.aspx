<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Orders.aspx.cs" Inherits="Inventory3Layer.Orders" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
   
    <form id="form1" runat="server">
        <div style="margin: 0px auto; padding-left: 370px; padding-right: 30px; overflow: auto;">
            <div>
                <table width="50%">
                    <tr>
                        <td colspan="2" style="background-color: Green; height: 30px; color: White;" align="center">Orders   
                        </td>
                    </tr>
                    <tr>
                        <td>Order Number </td>
                        <td>
                            <asp:TextBox ID="txtord_no" Width="150px" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Purchase Amount </td>
                        <td>
                            <asp:TextBox ID="txtpurch_amt" Width="150px" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Order Date</td>
                        <td>
                            <asp:TextBox ID="txtord_date" Width="150px" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>CustomerId</td>
                        <td>
                            <asp:TextBox ID="txtcust_id" Width="150px" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                      <tr>
                        <td>SalesmanId</td>
                        <td>
                            <asp:TextBox ID="txtsalesman_id" Width="150px" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2">
                            <asp:Button ID="BtnSave" runat="server" Width="100px" Text="Save" OnClick="BtnSave_Click" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </form>
    <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
    </body>
</html>
