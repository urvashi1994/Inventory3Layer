<%@ Page Title="" Language="C#" MasterPageFile="~/Inventory.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Inventory3Layer.Login" %>
<%--<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>--%>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 colspan="2" style="background-color: Green; height: 50px; color: White; padding-left: 30px; font-size: x-large;" >Log In</h2>
    <br />
    <asp:PlaceHolder runat="server" ID="LoginStatus" Visible="false">
    <p>
        <asp:Literal runat="server" ID="StatusMessage" Visible="false"></asp:Literal>
    </p>
     </asp:PlaceHolder>
    <asp:PlaceHolder runat="server" ID="LoginForm" Visible="false">
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

    <div class="form-group row" style="font-size: medium; padding-left: 260px;">
        <div class="col-sm-5">
            <asp:Button CssClass="btn btn-primary" runat="server" Text="Log In" OnClick="BtnSignIn" ></asp:Button>
        </div>
    </div>
       </asp:PlaceHolder>
    <asp:PlaceHolder runat="server" ID="PlaceHolder1" Visible="false">
            &nbsp;
        <div class="form-group row" style="font-size: medium; padding-left: 260px;">
            <div class="col-sm-5">
                <asp:Button CssClass="btn btn-primary" runat="server"  Text="Log Out" ID="LogoutButton" OnClick="BtnLogOut" ></asp:Button>
            </div>
        </div>
     </asp:PlaceHolder>

</asp:Content>

