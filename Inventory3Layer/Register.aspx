<%@ Page Title="" Language="C#" MasterPageFile="~/Inventory.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Inventory3Layer.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
     <h2 colspan="2" style="background-color: Green; height: 50px; color: White; padding-left: 30px; font-size: x-large;" >Register a new user</h2>
    <br />
    <p>
        <%--lblResult.ForeColor = System.Drawing.Color.Green;--%>
        <asp:Literal runat="server" ID="StatusMessage"></asp:Literal>
    </p>

    <div class="form-group row">
        <label for="UserName" class="col-sm-2 col-form-labe" style="font-size: medium; padding-left: 40px;">User Name</label>
        <div class="col-sm-5">
            <asp:TextBox class="form-control" ID="UserName" AssociatedControlID="UserName" runat="server"></asp:TextBox>
        </div>
    </div>
    <div class="form-group row">
        <label for="Password" class="col-sm-2 col-form-label" style="font-size: medium; padding-left: 40px;">Password</label>
        <div class="col-sm-5">
            <asp:TextBox class="form-control" ID="Password" AssociatedControlID="Password" runat="server" TextMode="Password"></asp:TextBox>
        </div>
    </div>
    <div class="form-group row">
        <label for="ConformPassword" class="col-sm-2 col-form-label" style="font-size: medium; padding-left: 40px;">Conform Password</label>
        <div class="col-sm-5">
            <asp:TextBox class="form-control" ID="ConformPassword"  AssociatedControlID="Password" runat="server" TextMode="Password"></asp:TextBox>
        </div>
    </div>
     <div class="form-group row" style="font-size: medium; padding-left: 260px;">
        <div class="col-sm-5">
            <asp:Button CssClass="btn btn-primary" runat="server" Text="Register" OnClick="BtnSave_Click"></asp:Button>
        </div>
    </div>
    
</asp:Content>
