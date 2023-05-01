<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="vehicle.aspx.cs" Inherits="WebApplication4.vehicle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">


<head runat="server">
    <title></title>
</head>


<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link rel="stylesheet" href="assets/css/new.css">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-T8Gy5hrqNKT+hzMclPo118YTQO6cYprQmhrYwIiQ/3axmI1hQomh7Ud2hPOy8SP1" crossorigin="anonymous">
<body class="home">
    <form id="form1" runat="server">
    <div class="container-fluid display-table">
        <div class="row display-table-row">
            <div class="col-md-2 col-sm-1 hidden-xs display-table-cell v-align box" id="navigation">
                <div class="logo">
                    <a hef="home.html"><img src="http://jskrishna.com/work/merkury/images/logo.png" alt="merkery_logo" class="hidden-xs hidden-sm">
                        <img src="http://jskrishna.com/work/merkury/images/circle-logo.png" alt="merkery_logo" class="visible-xs visible-sm circle-logo">
                    </a>
                </div>
                <div class="navi">
                    <ul>
                        <li><a href="admin.aspx"><i class="fa fa-home" aria-hidden="true"></i><span class="hidden-xs hidden-sm">Home</span></a></li>
                        <li><a href="profile.aspx"><i class="fa fa-user" aria-hidden="true"></i><span class="hidden-xs hidden-sm">Manage Profiles</span></a></li>
                        <li ><a href="routes.aspx"><i class="fa fa-plus" aria-hidden="true"></i><span class="hidden-xs hidden-sm">Manage Routes</span></a></li>
                        <li ><a href="price.aspx"><i class="fa fa-tasks" aria-hidden="true"></i><span class="hidden-xs hidden-sm">Pricing & Discount</span></a></li>
                        <li class="active"><a href="vehicle.aspx"><i class="fa fa-paper-plane" aria-hidden="true"></i><span class="hidden-xs hidden-sm">Manage Vehicles</span></a></li>
                        <li><a href="index.aspx"><i class="fa fa-lock" aria-hidden="true"></i><span class="hidden-xs hidden-sm">LOGOUT</span></a></li>
                    </ul>
                </div>
            </div>
            <div class="col-md-10 col-sm-11 display-table-cell v-align">
                <br />
                <br />
                <br />
                <asp:TextBox ID="TextBox1" runat="server" placeholder="vehile type" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                <asp:TextBox ID="TextBox2" runat="server" placeholder="name" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                <asp:TextBox ID="TextBox3" runat="server" placeholder="avalaible seats " OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server"   OnClick="Button1_Click" Text="ADD" />

                <br />
            
                  <br />


                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                    <br />

                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="vehicle_name" DataSourceID="SqlDataSource1" GridLines="Vertical" Width="587px">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:BoundField DataField="vehicle_name" HeaderText="vehicle_name" ReadOnly="True" SortExpression="vehicle_name" />
                        <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#000065" />
                </asp:GridView>
                <br />
                <br />
                <br />
                <br />
                <br />
            </div>
        </div>

    </div>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TicketMasterDBConnectionString %>" SelectCommand="SELECT * FROM [vehicle]"></asp:SqlDataSource>
    </form>
</body>


    </html>


    <style>
		td, th {
			border: 2px solid #000000;
			text-align: center;
			padding: 10px;
		}
/**/
		tr:nth-child(even) {
			background-color: #28b6dd;
		}
	</style>

