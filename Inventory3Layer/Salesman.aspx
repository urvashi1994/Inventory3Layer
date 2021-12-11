<%@ Page Language="C#" MasterPageFile="~/Inventory.Master" AutoEventWireup="true" CodeBehind="Salesman.aspx.cs" Inherits="Inventory3Layer.Salesman" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h2>Orders</h2>
    <br />
                <table width="50%">
                    <tr>
                        <td colspan="2" style="background-color: Green; height: 30px; color: White;" align="center">Salesman Registration  
                        </td>
                    </tr>
                    <tr>
                        <td>Salesman Number </td>
                        <td>
                            <asp:TextBox ID="txtsalesman_id" Width="150px" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Salesman Name </td>
                        <td>
                            <asp:TextBox ID="txtsalesman_name" Width="150px" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>City</td>
                        <td>
                            <asp:TextBox ID="txtcity" Width="150px" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Commission</td>
                        <td>
                            <asp:TextBox ID="txtcommission" Width="150px" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2">
                            <asp:Button ID="BtnSave" runat="server" Width="100px" Text="Save" OnClick="BtnSave_Click" style="height: 29px" />
                        </td>
                    </tr>
                </table>

    <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>

    </asp:Content>