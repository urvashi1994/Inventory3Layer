﻿<%@ Page Language="C#" MasterPageFile="~/Inventory.Master" AutoEventWireup="true" CodeBehind="Customer.aspx.cs" Inherits="Inventory3Layer.Customer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h2>Orders</h2>
    <br />
              <table width="50%">
                    <tr>
                        <td colspan="2" style="background-color: Green; height: 30px; color: White;" align="center">Customer Registration  
                        </td>
                    </tr>
                    <tr>
                        <td>Customer Number </td>
                        <td>
                            <asp:TextBox ID="txtcust_id" Width="150px" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Customer Name </td>
                        <td>
                            <asp:TextBox ID="txtcust_name" Width="150px" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>City</td>
                        <td>
                            <asp:TextBox ID="txtcity" Width="150px" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Grade</td>
                        <td>
                            <asp:TextBox ID="txtgrade" Width="150px" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                     <tr>
                        <td>Salesman Number</td>
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
    
    <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
                </asp:Content>
