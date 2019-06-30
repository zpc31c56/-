<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PersonalCareer.aspx.cs" Inherits="preview_dotnet_templates_registration_Form_index" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!--[if lt IE 7]> <html class="no-js ie6 oldie" lang="en"> <![endif]-->
    <!--[if IE 7]>    <html class="no-js ie7 oldie" lang="en"> <![endif]-->
    <!--[if IE 8]>    <html class="no-js ie8 oldie" lang="en"> <![endif]-->
    <!--[if IE 9]> <html class="no-js ie9 oldie" lang="en"> <![endif]-->
    <meta charset="utf-8"/>
    <!-- Set the viewport width to device width for mobile -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <meta name="description" content="Coming soon, Bootstrap, Bootstrap 3.0, Free Coming Soon, free coming soon, free template, coming soon template, Html template, html template, html5, Code lab, codelab, codelab coming soon template, bootstrap coming soon template">
    <title>大葉大學資訊管理系校外實習平台</title>
    <!-- ============ Google fonts ============ -->
    <link href='http://fonts.googleapis.com/css?family=EB+Garamond' rel='stylesheet'
        type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700,300,800'
        rel='stylesheet' type='text/css' />
    <!-- ============ Add custom CSS here ============ -->
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <link href="css/font-awesome.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="custom-bootstrap-menu" class="navbar navbar-default " role="navigation">
        <div class="container">
            <div class="navbar-header">
                
          <a class="navbar-brand" >大葉大學資管系實習平台  
                
              
                </a>     
                
             
            </div>
            <div class="collapse navbar-collapse navbar-menubuilder">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="/studentForm.aspx">個人資料</a> </li>
                    <li><a href="/companylogin.aspx">應徵實習</a> </li>
                    <li><a href="/teacherlogin.aspx">實習表現</a> </li>
                    
                </ul>
            </div>
        </div>
    </div>
        
    <script src="js/jquery.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/jquery.backstretch.js" type="text/javascript"></script>
    <script type="text/javascript">
        'use strict';

        /* ========================== */
        /* ::::::: Backstrech ::::::: */
        /* ========================== */
        // You may also attach Backstretch to a block-level element
        $.backstretch(
        [
            "img/44.jpg",
            "img/colorful.jpg",
            "img/34.jpg",
            "img/images.jpg"
        ],

        {
            duration: 4500,
            fade: 1500
        }
    );
    </script>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PDdata3ConnectionString %>" ProviderName="<%$ ConnectionStrings:PDdata3ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [center] ORDER BY [new_date] DESC"></asp:SqlDataSource>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="new_id" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="new_Type" HeaderText="new_Type" SortExpression="new_Type" />
                        <asp:BoundField DataField="new_date" HeaderText="new_date" SortExpression="new_date" />
                        <asp:BoundField DataField="new_subject" HeaderText="new_subject" SortExpression="new_subject" />
                        <asp:BoundField DataField="new_editor" HeaderText="new_editor" SortExpression="new_editor" />
                        <asp:CommandField ShowSelectButton="True" />
                    </Columns>
                </asp:GridView>
                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                    <ContentTemplate>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PDdata3ConnectionString %>" ProviderName="<%$ ConnectionStrings:PDdata3ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [center] WHERE ([new_id] = ?)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="GridView1" Name="new_id" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="new_id" DataSourceID="SqlDataSource2" Height="50px" Width="125px">
                            <Fields>
                                <asp:BoundField DataField="new_Type" HeaderText="new_Type" SortExpression="new_Type" />
                                <asp:BoundField DataField="new_date" HeaderText="new_date" SortExpression="new_date" />
                                <asp:BoundField DataField="new_subject" HeaderText="new_subject" SortExpression="new_subject" />
                                <asp:BoundField DataField="new_editor" HeaderText="new_editor" SortExpression="new_editor" />
                                <asp:TemplateField HeaderText="new_content" SortExpression="new_content">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("new_content") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <InsertItemTemplate>
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("new_content") %>'></asp:TextBox>
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("new_content") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Fields>
                        </asp:DetailsView>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</body>
</html>