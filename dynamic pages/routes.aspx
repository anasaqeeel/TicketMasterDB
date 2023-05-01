<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="routes.aspx.cs" Inherits="WebApplication4.routes" %>

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
                        <li class="active"><a href="routes.aspx"><i class="fa fa-plus" aria-hidden="true"></i><span class="hidden-xs hidden-sm">Manage Routes</span></a></li>
                        <li><a href="price.aspx"><i class="fa fa-tasks" aria-hidden="true"></i><span class="hidden-xs hidden-sm">Pricing & Discount</span></a></li>
                        <li><a href="vehicle.aspx"><i class="fa fa-paper-plane" aria-hidden="true"></i><span class="hidden-xs hidden-sm">Manage Vehicles</span></a></li>
                        <li><a href="index.aspx"><i class="fa fa-lock" aria-hidden="true"></i><span class="hidden-xs hidden-sm">LOGOUT</span></a></li>
                    </ul>
                </div>
            </div>
            <div class="col-md-10 col-sm-11 display-table-cell v-align">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TicketMasterDBConnectionString %>" SelectCommand="SELECT * FROM [routes]">
                </asp:SqlDataSource>
                <br />
                <br />
                <br />
                <h3> Enter Route details to add !</h3>
                <asp:TextBox ID="TextBox1" runat="server" placeholder="vechicle_name" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                <asp:TextBox ID="TextBox2" runat="server"  placeholder="From"></asp:TextBox>
                <asp:TextBox ID="TextBox3" runat="server"  placeholder="To"></asp:TextBox>
                <asp:TextBox ID="TextBox4" runat="server"  placeholder="Distance (in km)" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="ADD" />
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="name,from_location,to_location" DataSourceID="SqlDataSource1" Width="1061px" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:BoundField DataField="name" HeaderText="name" ReadOnly="True" SortExpression="name" />
                        <asp:BoundField DataField="from_location" HeaderText="from_location" ReadOnly="True" SortExpression="from_location" />
                        <asp:BoundField DataField="to_location" HeaderText="to_location" ReadOnly="True" SortExpression="to_location" />
                        <asp:BoundField DataField="distance" HeaderText="distance" SortExpression="distance" />
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
            </div>
        </div>

    </div>
    </form>
</body>

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





    </html>