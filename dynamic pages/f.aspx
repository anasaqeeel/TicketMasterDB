<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="f.aspx.cs" Inherits="WebApplication4.f" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 323px">
    <form id="form1" runat="server">
       
        
      
        <br />
        <br />
          <br />
        <br />  <br />
        <br />
        <br />
        <br />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        PAY NOW TO &gt;&gt;:&nbsp; FOR JAZZCASH/EASYPAISA/SADAPAY (03XX-XXXXXX) <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; FOR BANK TRANSFER (XXX-XXXXXXXXXX) !<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TicketMasterDBConnectionString %>" SelectCommand="SELECT top  1 [time], [name], [from_location], [to_location], [price], [created_at] FROM [info] order by created_at desc"></asp:SqlDataSource>
         <br />
        <br />
          <br />
        <br />  <br />
        <br />
        <asp:GridView ID="GridView1" runat="server"  CssClass="myGridView" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Vertical" Height="197px" Width="705px" DataKeyNames="time,name,from_location,to_location" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
            <AlternatingRowStyle  BackColor ="#DCDCDC" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="time"  HeaderText="time" SortExpression="time" ReadOnly="True" />
                <asp:BoundField DataField="name" HeaderText="name" ReadOnly="True" SortExpression="name" />
                <asp:BoundField DataField="from_location" HeaderText="from_location" ReadOnly="True" SortExpression="from_location" />
                <asp:BoundField DataField="to_location" HeaderText="to_location" ReadOnly="True" SortExpression="to_location" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                <asp:BoundField DataField="created_at" HeaderText="created_at" SortExpression="created_at" />
            </Columns>
            <FooterStyle  BackColor="#CCCCCC"    ForeColor="Black" />
            <HeaderStyle BackColor="#000084"  Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" Font-Size="XX-Large"  ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE"  ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C"  Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9"  />
            <SortedDescendingCellStyle  BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle  BackColor="#000065"  />
        </asp:GridView>
        
        <br />
         <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:DropDownList ID="DropDownList1" runat="server" Height="29px" Width="191px">
            <asp:ListItem>JazzCash</asp:ListItem>
            <asp:ListItem>SadaPay</asp:ListItem>
            <asp:ListItem>EasyPaisa</asp:ListItem>
            <asp:ListItem>Bank Transfer</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Button" />
    </form>


</body>
</html>


<style>
    body {
  background-image: url(99.png);
   background-size:cover;
  color: #fff;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  height: 100vh;
  font-family: "Lato", sans-serif;
  margin: 0;
}
 
		td, th {
			border: 2px solid #000000;
			text-align: center;
			padding: 10px;
		}
/**/
		tr:nth-child(even) {
			background-color: #28b6dd;
		}

        .myGridView td ,.myGridView{
        font-size: 16px;
    }
	</style>
