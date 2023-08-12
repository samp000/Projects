<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="AdminPanel.aspx.cs" Inherits="LoginPage3.AdminPanel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <script class="jsbin" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script class="jsbin" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.0/jquery-ui.min.js"></script> 

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <div class="userDetails">

        <div class="userDetails_Controls">
            <fieldset>
                <legend>User Details</legend>
                <asp:TextBox ID="TextBox1" CssClass="userdetailstxtbx" runat="server" placeholder="Enter Name"></asp:TextBox>
                <asp:TextBox ID="TextBox2" CssClass="userdetailstxtbx" runat="server" placeholder="Enter Username"></asp:TextBox>
                <asp:TextBox ID="TextBox3" CssClass="userdetailstxtbx" runat="server" placeholder="Enter Password"></asp:TextBox>

                <div class="btn_controls">
                    <asp:Button ID="Button2" CssClass="usercontrolbtn update" runat="server" Text="Update" OnClick="Button2_Click" />
                    <asp:Button ID="Button3" CssClass="usercontrolbtn delete" runat="server" Text="Delete" OnClick="Button3_Click" />
                </div>
            </fieldset>

        </div>

        <div class="userDetails_Display">
            <fieldset>
                <legend>User Details</legend>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OSSentinel_dbConnectionString %>" SelectCommand="SELECT [name], [address], [phone], [email], [username], [password] FROM [registrationTable]"></asp:SqlDataSource>
                <asp:GridView ID="GridView1" runat="server" CssClass="gridview" HeaderStyle-CssClass="header" RowStyle-CssClass="rows"  AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                        <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                        <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                        <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                    </Columns>
                        <HeaderStyle CssClass="header"></HeaderStyle>
                        <RowStyle CssClass="rows"></RowStyle>
                </asp:GridView>
            </fieldset>
        </div>

    </div>


    <div class="guardsInfo">

        <div class="guardsDetails_Controls">
            <fieldset>
                <legend>Guards Data</legend>

                <div class="guardsDetails_Controls_main">
                    <div class="guardstxtboxes">
                        <asp:TextBox ID="TextBox4" CssClass="guardsbx" placeholder="Enter guard name" runat="server"></asp:TextBox>
                        <asp:TextBox ID="TextBox5" CssClass="guardsbx" placeholder="Enter adhar no" runat="server"></asp:TextBox>
                        <asp:TextBox ID="TextBox6" CssClass="guardsbx" placeholder="Enter phone no" runat="server"></asp:TextBox>
                        <asp:TextBox ID="TextBox7" CssClass="guardsbx" placeholder="Enter address" runat="server"></asp:TextBox>
                        <asp:TextBox ID="TextBox8" CssClass="guardsbx" placeholder="Enter age" runat="server"></asp:TextBox>
                        <asp:TextBox ID="TextBox10" CssClass="guardsbx" placeholder="Guard Type" runat="server"></asp:TextBox>
                        <asp:TextBox ID="TextBox9" CssClass="guardsbx" placeholder="Enter police varification status" runat="server"></asp:TextBox>
                    </div>

                    <div class="guardsimagebx">

                        <asp:Label ID="lblMessage" runat="server" Text="Add image of security guard"></asp:Label>
                         <br />
                        <br />

                        <asp:FileUpload ID="FileUpload1" runat="server" />
                        <br />
                        <br />
                        

                    </div>
                </div>

                <asp:Button ID="Button5" CssClass="guardsbtn addData" runat="server" Text="Add Data" OnClick="Button5_Click" />

            </fieldset>
        </div>

        <div class="guardsDetails">

            <fieldset>
                <legend>Guard details</legend>
                
                <asp:GridView ID="GridView2" CssClass="guardsData" runat="server">
                    <Columns>
                    <asp:TemplateField HeaderText="Image">
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" Height="100px" Width="100px" 
                                 ImageUrl='<%#"data:Image/png;base64,"+Convert.ToBase64String((byte[])Eval("image"))%>'

                                />

                         </ItemTemplate>
                    </asp:TemplateField>    


                    </Columns>       
             
                 </asp:GridView>

            </fieldset>

        </div>

    </div>


</asp:Content>
