<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="WebApplication4.profile" %>

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
                        <li class="active"><a href="profile.aspx"><i class="fa fa-user" aria-hidden="true"></i><span class="hidden-xs hidden-sm">Manage Profiles</span></a></li>
                        <li><a href="routes.aspx"><i class="fa fa-plus" aria-hidden="true"></i><span class="hidden-xs hidden-sm">Manage Routes</span></a></li>
                        <li><a href="price.aspx"><i class="fa fa-tasks" aria-hidden="true"></i><span class="hidden-xs hidden-sm">Pricing & Discount</span></a></li>
                        <li><a href="vehicle.aspx"><i class="fa fa-paper-plane" aria-hidden="true"></i><span class="hidden-xs hidden-sm">Manage Vehicles</span></a></li>
                        <li><a href="index.aspx"><i class="fa fa-lock" aria-hidden="true"></i><span class="hidden-xs hidden-sm">LOGOUT</span></a></li>
                    </ul>
                </div>
            </div>
            <div class="col-md-10 col-sm-11 display-table-cell v-align">
				<!-- here chatgpt -->
                <br />
                <br /><br />

                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
                <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged1"></asp:TextBox>
               
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="cnic" DataSourceID="SqlDataSource1" Width="852px">
                    <Columns>
                        <asp:BoundField DataField="cnic" HeaderText="cnic" ReadOnly="True" SortExpression="cnic" />
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                        <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
                        <asp:BoundField DataField="phone_number" HeaderText="phone_number" SortExpression="phone_number" />
                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                        <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                        <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TicketMasterDBConnectionString %>" SelectCommand="search1" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="name" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
               
           </div>
        </div>

    </div>
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
