﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxMenu" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxSiteMapControl" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>How to share the same SiteMap between ASPxMenu and ASPxSiteMapControl placed within ASPxMenu.SubMenuTemplate</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <dx:ASPxSiteMapDataSource ID="menuSiteMapDataSource" runat="server" SiteMapProvider="MenuSiteMapProvider" />
        <dx:ASPxMenu ID="ASPxMenu1" runat="server" DataSourceID="menuSiteMapDataSource" EnableViewState="false">
            <SubMenuTemplate>
                <dx:ASPxSiteMapControl EnableViewState="False" ID="ASPxSiteMapControl1" runat="server"
                     DataSource=<%# GetDataSource() %> OnDataBinding="ASPxSiteMapControl1_DataBinding">
                    <Columns>
                        <dx:SiteMapColumn />
                        <dx:SiteMapColumn />
                    </Columns>
                </dx:ASPxSiteMapControl>
            </SubMenuTemplate>
        </dx:ASPxMenu>
    </div>
    </form>
</body>
</html>
