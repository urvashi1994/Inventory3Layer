<%@ Page Language="C#"MasterPageFile="~/Inventory.Master" AutoEventWireup="true" CodeBehind="Orders.aspx.cs" Inherits="Inventory3Layer.Orders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h2>Orders</h2>
    <br />

 <table width="50%">

                    <tr>
                        <td>Order Number </td>
                        <td>
                            <asp:TextBox ID="txtord_no" Width="150px" runat="server"></asp:TextBox>
                             <asp:Button ID="btnDelete" runat="server" Width="100px" Text="Delete" OnClick="BtnDelete_Click" />
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
                             <asp:Button ID="btnUpdate" runat="server" Width="100px" Text="Update" OnClick="BtnUpdate_Click" />
                        </td>
                    </tr>
  
    <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>

     </table>
   </asp:Content>