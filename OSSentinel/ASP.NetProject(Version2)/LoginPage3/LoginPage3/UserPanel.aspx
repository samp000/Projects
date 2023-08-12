<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="UserPanel.aspx.cs" Inherits="LoginPage3.UserPanel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <div class="userpanel">

        <h2>information of guards you have choosen</h2>

    <asp:GridView ID="GridView1" CssClass="userinfogrid" runat="server">
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

    </div>

</asp:Content>
