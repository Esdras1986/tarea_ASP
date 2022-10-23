<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Empleados.aspx.cs" Inherits="tarea_ASP.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Formulario Empleados</h1>
    
    <asp:Label ID="lbl_codigo" runat="server" Text="Codigo" CssClass="badge" Font-Size="Small"></asp:Label>
    <asp:TextBox ID="txt_codigo" runat="server" CssClass="form-control" placeholder="ejemplo:E001"></asp:TextBox>
    
    <asp:Label ID="lbl_nombres" runat="server" Text="Nombres" CssClass="badge" Font-Size="Small"></asp:Label>
    <asp:TextBox ID="txt_nombres" runat="server" CssClass="form-control" placeholder="ejemplo:nombre1 nombre2"></asp:TextBox>
    
    <asp:Label ID="lbl_apellidos" runat="server" Text="Apellidos" CssClass="badge" Font-Size="Small"></asp:Label>
    <asp:TextBox ID="txt_apellidos" runat="server" CssClass="form-control" placeholder="ejemplo:Apellido1 Apellido2"></asp:TextBox>
    
    <asp:Label ID="lbl_direccion" runat="server" Text="Direccion" CssClass="badge" Font-Size="Small"></asp:Label>
    <asp:TextBox ID="txt_direccion" runat="server" CssClass="form-control" placeholder="ejemplo:#casa calle avenida lote"></asp:TextBox>
    
    <asp:Label ID="lbl_telefono" runat="server" Text="Telefono" CssClass="badge" Font-Size="Small"></asp:Label>
    <asp:TextBox ID="txt_telefono" runat="server" CssClass="form-control" placeholder="ejemplo:502555222" TextMode="Number"></asp:TextBox>
    
    <asp:Label ID="lbl_fn" runat="server" Text="Fecha Nacimiento" CssClass="badge" Font-Size="Small"></asp:Label>
    <asp:TextBox ID="txt_fecha" runat="server" CssClass="form-control" placeholder="yyy-mmm-dd" TextMode="Date"></asp:TextBox>
    
    <asp:Label ID="lbl_puesto" runat="server" Text="Puesto" CssClass="badge" Font-Size="Small"></asp:Label>
    <asp:DropDownList ID="drop_puesto" runat="server" CssClass="form-control"></asp:DropDownList>
    
    <asp:Button ID="btn_crear" runat="server" Text="Crear" CssClass="btn btn-primary" OnClick="btn_crear_Click"/>
    <asp:Button ID="btn_actualizar" runat="server" Text="Actualizar" CssClass="btn btn-success"/>
    <asp:GridView ID="grid_empleados" runat="server" AutoGenerateColumns="False" CssClass="table-condensed" DataKeyNames="id,id_puesto">
        <Columns>
            <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:Button ID="btn_select" runat="server" CausesValidation="False" CommandName="Select" Text="ver" Cssclass="btn btn-info"/>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:Button ID="btn_borrar" runat="server" CausesValidation="False" CommandName="Delete" Text="Borrar" CssClass="btn btn-danger"/>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="codigo" HeaderText="Codigo" />
            <asp:BoundField DataField="nombres" HeaderText="Nombres" />
            <asp:BoundField DataField="apellidos" HeaderText="Apellidos" />
            <asp:BoundField DataField="direccion" HeaderText="Direccion" />
            <asp:BoundField DataField="telefono" HeaderText="Telefono" />
            <asp:BoundField DataField="fecha_nacimiento" HeaderText="Nacimientos" />
            <asp:BoundField DataField="puesto" HeaderText="Puesto" />
        </Columns>
    </asp:GridView>

    </asp:Content>
