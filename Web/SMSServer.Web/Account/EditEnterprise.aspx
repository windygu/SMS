﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master/ChildSite.Master" AutoEventWireup="true" CodeBehind="EditEnterprise.aspx.cs" Inherits="SMSServer.Web.Account.EditEnterprise" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ScriptHolder" runat="server">
    <script src="../Scripts/site/enterprise.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <form id="form1" runat="server" class="form-horizontal" action="../ajax/enterprise/editenterprise">
        <div class="z-legend">
            <strong>企业</strong>
        </div>
          <input type="hidden" value="<% =Request.QueryString["id"]%>" name="id" />
        <div class="control-group">
            <label class="control-label" for="name">企业名称</label>
            <div class="controls">
                <input type="text" id="name" name="name" value="<%=name %>" />
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="introduction">企业描述</label>
            <div class="controls">
                <input type="text" id="introduction" name="introduction"  value="<%=introduction %>" />
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="introduction">资金</label>
            <div class="controls">
                <input type="text" id="capital" name="capital"  value="<%=capital %>" />
            </div>
        </div>
          <div class="control-group">
            <label class="control-label" for="introduction">扩展号</label>
            <div class="controls">
                <input type="text" id="extendnum" name="extendnum" maxlength="3" value="<%=extendnum %>"/>
            </div>
        </div>
        <%---将button,input 放在这个容器里面就会自动处理 ----%>
        <div class="autool_buttons" id="actions">
            <input type="button" value="确认" onclick="add();" />
            <input type="button" value="取消" />
        </div>

        <%----%>
    </form>
</asp:Content>
