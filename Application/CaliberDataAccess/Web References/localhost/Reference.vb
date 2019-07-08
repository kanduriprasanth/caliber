﻿'------------------------------------------------------------------------------
' <auto-generated>
'     This code was generated by a tool.
'     Runtime Version:2.0.50727.42
'
'     Changes to this file may cause incorrect behavior and will be lost if
'     the code is regenerated.
' </auto-generated>
'------------------------------------------------------------------------------

Option Strict Off
Option Explicit On

Imports System
Imports System.ComponentModel
Imports System.Data
Imports System.Diagnostics
Imports System.Web.Services
Imports System.Web.Services.Protocols
Imports System.Xml.Serialization

'
'This source code was auto-generated by Microsoft.VSDesigner, Version 2.0.50727.42.
'
Namespace localhost
    
    '''<remarks/>
    <System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "2.0.50727.42"),  _
     System.Diagnostics.DebuggerStepThroughAttribute(),  _
     System.ComponentModel.DesignerCategoryAttribute("code"),  _
     System.Web.Services.WebServiceBindingAttribute(Name:="Service1Soap", [Namespace]:="http://tempuri.org/")>  _
    Partial Public Class Service1
        Inherits System.Web.Services.Protocols.SoapHttpClientProtocol
        
        Private HelloWorldOperationCompleted As System.Threading.SendOrPostCallback
        
        Private WirteDataOperationCompleted As System.Threading.SendOrPostCallback
        
        Private ReadDataOperationCompleted As System.Threading.SendOrPostCallback
        
        Private ReadData2OperationCompleted As System.Threading.SendOrPostCallback
        
        Private ReadListDataOperationCompleted As System.Threading.SendOrPostCallback
        
        Private useDefaultCredentialsSetExplicitly As Boolean
        
        '''<remarks/>
        Public Sub New()
            MyBase.New
            Me.Url = Global.CaliberDataAccess.My.MySettings.Default.CaliberDataAccess_localhost_Service1
            If (Me.IsLocalFileSystemWebService(Me.Url) = true) Then
                Me.UseDefaultCredentials = true
                Me.useDefaultCredentialsSetExplicitly = false
            Else
                Me.useDefaultCredentialsSetExplicitly = true
            End If
        End Sub
        
        Public Shadows Property Url() As String
            Get
                Return MyBase.Url
            End Get
            Set
                If (((Me.IsLocalFileSystemWebService(MyBase.Url) = true)  _
                            AndAlso (Me.useDefaultCredentialsSetExplicitly = false))  _
                            AndAlso (Me.IsLocalFileSystemWebService(value) = false)) Then
                    MyBase.UseDefaultCredentials = false
                End If
                MyBase.Url = value
            End Set
        End Property
        
        Public Shadows Property UseDefaultCredentials() As Boolean
            Get
                Return MyBase.UseDefaultCredentials
            End Get
            Set
                MyBase.UseDefaultCredentials = value
                Me.useDefaultCredentialsSetExplicitly = true
            End Set
        End Property
        
        '''<remarks/>
        Public Event HelloWorldCompleted As HelloWorldCompletedEventHandler
        
        '''<remarks/>
        Public Event WirteDataCompleted As WirteDataCompletedEventHandler
        
        '''<remarks/>
        Public Event ReadDataCompleted As ReadDataCompletedEventHandler
        
        '''<remarks/>
        Public Event ReadData2Completed As ReadData2CompletedEventHandler
        
        '''<remarks/>
        Public Event ReadListDataCompleted As ReadListDataCompletedEventHandler
        
        '''<remarks/>
        <System.Web.Services.Protocols.SoapDocumentMethodAttribute("http://tempuri.org/HelloWorld", RequestNamespace:="http://tempuri.org/", ResponseNamespace:="http://tempuri.org/", Use:=System.Web.Services.Description.SoapBindingUse.Literal, ParameterStyle:=System.Web.Services.Protocols.SoapParameterStyle.Wrapped)>  _
        Public Function HelloWorld() As String
            Dim results() As Object = Me.Invoke("HelloWorld", New Object(-1) {})
            Return CType(results(0),String)
        End Function
        
        '''<remarks/>
        Public Overloads Sub HelloWorldAsync()
            Me.HelloWorldAsync(Nothing)
        End Sub
        
        '''<remarks/>
        Public Overloads Sub HelloWorldAsync(ByVal userState As Object)
            If (Me.HelloWorldOperationCompleted Is Nothing) Then
                Me.HelloWorldOperationCompleted = AddressOf Me.OnHelloWorldOperationCompleted
            End If
            Me.InvokeAsync("HelloWorld", New Object(-1) {}, Me.HelloWorldOperationCompleted, userState)
        End Sub
        
        Private Sub OnHelloWorldOperationCompleted(ByVal arg As Object)
            If (Not (Me.HelloWorldCompletedEvent) Is Nothing) Then
                Dim invokeArgs As System.Web.Services.Protocols.InvokeCompletedEventArgs = CType(arg,System.Web.Services.Protocols.InvokeCompletedEventArgs)
                RaiseEvent HelloWorldCompleted(Me, New HelloWorldCompletedEventArgs(invokeArgs.Results, invokeArgs.Error, invokeArgs.Cancelled, invokeArgs.UserState))
            End If
        End Sub
        
        '''<remarks/>
        <System.Web.Services.Protocols.SoapDocumentMethodAttribute("http://tempuri.org/WirteData", RequestNamespace:="http://tempuri.org/", ResponseNamespace:="http://tempuri.org/", Use:=System.Web.Services.Description.SoapBindingUse.Literal, ParameterStyle:=System.Web.Services.Protocols.SoapParameterStyle.Wrapped)>  _
        Public Sub WirteData(ByRef CommandType As Integer, ByRef CommandText As String, ByRef InDataTabDS As System.Data.DataSet, ByRef NumberOfRefCur As Integer, ByRef OutDataTabDs As System.Data.DataSet, ByRef IsKeyFeild As Boolean, ByRef ConStr As String, ByRef CurDBType As Integer, ByRef ExceptionNo As Integer, ByRef ExceptionMsg As String)
            Dim results() As Object = Me.Invoke("WirteData", New Object() {CommandType, CommandText, InDataTabDS, NumberOfRefCur, OutDataTabDs, IsKeyFeild, ConStr, CurDBType, ExceptionNo, ExceptionMsg})
            CommandType = CType(results(0),Integer)
            CommandText = CType(results(1),String)
            InDataTabDS = CType(results(2),System.Data.DataSet)
            NumberOfRefCur = CType(results(3),Integer)
            OutDataTabDs = CType(results(4),System.Data.DataSet)
            IsKeyFeild = CType(results(5),Boolean)
            ConStr = CType(results(6),String)
            CurDBType = CType(results(7),Integer)
            ExceptionNo = CType(results(8),Integer)
            ExceptionMsg = CType(results(9),String)
        End Sub
        
        '''<remarks/>
        Public Overloads Sub WirteDataAsync(ByVal CommandType As Integer, ByVal CommandText As String, ByVal InDataTabDS As System.Data.DataSet, ByVal NumberOfRefCur As Integer, ByVal OutDataTabDs As System.Data.DataSet, ByVal IsKeyFeild As Boolean, ByVal ConStr As String, ByVal CurDBType As Integer, ByVal ExceptionNo As Integer, ByVal ExceptionMsg As String)
            Me.WirteDataAsync(CommandType, CommandText, InDataTabDS, NumberOfRefCur, OutDataTabDs, IsKeyFeild, ConStr, CurDBType, ExceptionNo, ExceptionMsg, Nothing)
        End Sub
        
        '''<remarks/>
        Public Overloads Sub WirteDataAsync(ByVal CommandType As Integer, ByVal CommandText As String, ByVal InDataTabDS As System.Data.DataSet, ByVal NumberOfRefCur As Integer, ByVal OutDataTabDs As System.Data.DataSet, ByVal IsKeyFeild As Boolean, ByVal ConStr As String, ByVal CurDBType As Integer, ByVal ExceptionNo As Integer, ByVal ExceptionMsg As String, ByVal userState As Object)
            If (Me.WirteDataOperationCompleted Is Nothing) Then
                Me.WirteDataOperationCompleted = AddressOf Me.OnWirteDataOperationCompleted
            End If
            Me.InvokeAsync("WirteData", New Object() {CommandType, CommandText, InDataTabDS, NumberOfRefCur, OutDataTabDs, IsKeyFeild, ConStr, CurDBType, ExceptionNo, ExceptionMsg}, Me.WirteDataOperationCompleted, userState)
        End Sub
        
        Private Sub OnWirteDataOperationCompleted(ByVal arg As Object)
            If (Not (Me.WirteDataCompletedEvent) Is Nothing) Then
                Dim invokeArgs As System.Web.Services.Protocols.InvokeCompletedEventArgs = CType(arg,System.Web.Services.Protocols.InvokeCompletedEventArgs)
                RaiseEvent WirteDataCompleted(Me, New WirteDataCompletedEventArgs(invokeArgs.Results, invokeArgs.Error, invokeArgs.Cancelled, invokeArgs.UserState))
            End If
        End Sub
        
        '''<remarks/>
        <System.Web.Services.Protocols.SoapDocumentMethodAttribute("http://tempuri.org/ReadData", RequestNamespace:="http://tempuri.org/", ResponseNamespace:="http://tempuri.org/", Use:=System.Web.Services.Description.SoapBindingUse.Literal, ParameterStyle:=System.Web.Services.Protocols.SoapParameterStyle.Wrapped)>  _
        Public Sub ReadData(ByRef CommandType As Integer, ByRef CommandText As String, ByRef InDataTabDs As System.Data.DataSet, ByRef NumberOfRefCur As Integer, ByRef OutDataSet As System.Data.DataSet, ByRef ConStr As String, ByRef CurDBType As Integer, ByRef ExceptionNo As Integer, ByRef ExceptionMsg As String)
            Dim results() As Object = Me.Invoke("ReadData", New Object() {CommandType, CommandText, InDataTabDs, NumberOfRefCur, OutDataSet, ConStr, CurDBType, ExceptionNo, ExceptionMsg})
            CommandType = CType(results(0),Integer)
            CommandText = CType(results(1),String)
            InDataTabDs = CType(results(2),System.Data.DataSet)
            NumberOfRefCur = CType(results(3),Integer)
            OutDataSet = CType(results(4),System.Data.DataSet)
            ConStr = CType(results(5),String)
            CurDBType = CType(results(6),Integer)
            ExceptionNo = CType(results(7),Integer)
            ExceptionMsg = CType(results(8),String)
        End Sub
        
        '''<remarks/>
        Public Overloads Sub ReadDataAsync(ByVal CommandType As Integer, ByVal CommandText As String, ByVal InDataTabDs As System.Data.DataSet, ByVal NumberOfRefCur As Integer, ByVal OutDataSet As System.Data.DataSet, ByVal ConStr As String, ByVal CurDBType As Integer, ByVal ExceptionNo As Integer, ByVal ExceptionMsg As String)
            Me.ReadDataAsync(CommandType, CommandText, InDataTabDs, NumberOfRefCur, OutDataSet, ConStr, CurDBType, ExceptionNo, ExceptionMsg, Nothing)
        End Sub
        
        '''<remarks/>
        Public Overloads Sub ReadDataAsync(ByVal CommandType As Integer, ByVal CommandText As String, ByVal InDataTabDs As System.Data.DataSet, ByVal NumberOfRefCur As Integer, ByVal OutDataSet As System.Data.DataSet, ByVal ConStr As String, ByVal CurDBType As Integer, ByVal ExceptionNo As Integer, ByVal ExceptionMsg As String, ByVal userState As Object)
            If (Me.ReadDataOperationCompleted Is Nothing) Then
                Me.ReadDataOperationCompleted = AddressOf Me.OnReadDataOperationCompleted
            End If
            Me.InvokeAsync("ReadData", New Object() {CommandType, CommandText, InDataTabDs, NumberOfRefCur, OutDataSet, ConStr, CurDBType, ExceptionNo, ExceptionMsg}, Me.ReadDataOperationCompleted, userState)
        End Sub
        
        Private Sub OnReadDataOperationCompleted(ByVal arg As Object)
            If (Not (Me.ReadDataCompletedEvent) Is Nothing) Then
                Dim invokeArgs As System.Web.Services.Protocols.InvokeCompletedEventArgs = CType(arg,System.Web.Services.Protocols.InvokeCompletedEventArgs)
                RaiseEvent ReadDataCompleted(Me, New ReadDataCompletedEventArgs(invokeArgs.Results, invokeArgs.Error, invokeArgs.Cancelled, invokeArgs.UserState))
            End If
        End Sub
        
        '''<remarks/>
        <System.Web.Services.Protocols.SoapDocumentMethodAttribute("http://tempuri.org/ReadData2", RequestNamespace:="http://tempuri.org/", ResponseNamespace:="http://tempuri.org/", Use:=System.Web.Services.Description.SoapBindingUse.Literal, ParameterStyle:=System.Web.Services.Protocols.SoapParameterStyle.Wrapped)>  _
        Public Sub ReadData2(ByRef CommandType As Integer, ByRef CommandText As String, ByRef InDataTabDS As System.Data.DataSet, ByRef NumberOfRefCur As Integer, ByRef OutParamDataDS As System.Data.DataSet, ByRef ConStr As String, ByRef CurDBType As Integer, ByRef ExceptionNo As Integer, ByRef ExceptionMsg As String, ByRef ReturnValue As String)
            Dim results() As Object = Me.Invoke("ReadData2", New Object() {CommandType, CommandText, InDataTabDS, NumberOfRefCur, OutParamDataDS, ConStr, CurDBType, ExceptionNo, ExceptionMsg, ReturnValue})
            CommandType = CType(results(0),Integer)
            CommandText = CType(results(1),String)
            InDataTabDS = CType(results(2),System.Data.DataSet)
            NumberOfRefCur = CType(results(3),Integer)
            OutParamDataDS = CType(results(4),System.Data.DataSet)
            ConStr = CType(results(5),String)
            CurDBType = CType(results(6),Integer)
            ExceptionNo = CType(results(7),Integer)
            ExceptionMsg = CType(results(8),String)
            ReturnValue = CType(results(9),String)
        End Sub
        
        '''<remarks/>
        Public Overloads Sub ReadData2Async(ByVal CommandType As Integer, ByVal CommandText As String, ByVal InDataTabDS As System.Data.DataSet, ByVal NumberOfRefCur As Integer, ByVal OutParamDataDS As System.Data.DataSet, ByVal ConStr As String, ByVal CurDBType As Integer, ByVal ExceptionNo As Integer, ByVal ExceptionMsg As String, ByVal ReturnValue As String)
            Me.ReadData2Async(CommandType, CommandText, InDataTabDS, NumberOfRefCur, OutParamDataDS, ConStr, CurDBType, ExceptionNo, ExceptionMsg, ReturnValue, Nothing)
        End Sub
        
        '''<remarks/>
        Public Overloads Sub ReadData2Async(ByVal CommandType As Integer, ByVal CommandText As String, ByVal InDataTabDS As System.Data.DataSet, ByVal NumberOfRefCur As Integer, ByVal OutParamDataDS As System.Data.DataSet, ByVal ConStr As String, ByVal CurDBType As Integer, ByVal ExceptionNo As Integer, ByVal ExceptionMsg As String, ByVal ReturnValue As String, ByVal userState As Object)
            If (Me.ReadData2OperationCompleted Is Nothing) Then
                Me.ReadData2OperationCompleted = AddressOf Me.OnReadData2OperationCompleted
            End If
            Me.InvokeAsync("ReadData2", New Object() {CommandType, CommandText, InDataTabDS, NumberOfRefCur, OutParamDataDS, ConStr, CurDBType, ExceptionNo, ExceptionMsg, ReturnValue}, Me.ReadData2OperationCompleted, userState)
        End Sub
        
        Private Sub OnReadData2OperationCompleted(ByVal arg As Object)
            If (Not (Me.ReadData2CompletedEvent) Is Nothing) Then
                Dim invokeArgs As System.Web.Services.Protocols.InvokeCompletedEventArgs = CType(arg,System.Web.Services.Protocols.InvokeCompletedEventArgs)
                RaiseEvent ReadData2Completed(Me, New ReadData2CompletedEventArgs(invokeArgs.Results, invokeArgs.Error, invokeArgs.Cancelled, invokeArgs.UserState))
            End If
        End Sub
        
        '''<remarks/>
        <System.Web.Services.Protocols.SoapDocumentMethodAttribute("http://tempuri.org/ReadListData", RequestNamespace:="http://tempuri.org/", ResponseNamespace:="http://tempuri.org/", Use:=System.Web.Services.Description.SoapBindingUse.Literal, ParameterStyle:=System.Web.Services.Protocols.SoapParameterStyle.Wrapped)>  _
        Public Sub ReadListData(ByRef CommandType As Integer, ByRef CommandText As String, ByRef InDataTabDS As System.Data.DataSet, ByRef NumberOfRefCur As Integer, ByRef OutDataSet As System.Data.DataSet, ByRef PageNo As Integer, ByRef PageSize As Integer, ByRef ConStr As String, ByRef CurDBType As Integer, ByRef ExceptionNo As Integer, ByRef ExceptionMsg As String)
            Dim results() As Object = Me.Invoke("ReadListData", New Object() {CommandType, CommandText, InDataTabDS, NumberOfRefCur, OutDataSet, PageNo, PageSize, ConStr, CurDBType, ExceptionNo, ExceptionMsg})
            CommandType = CType(results(0),Integer)
            CommandText = CType(results(1),String)
            InDataTabDS = CType(results(2),System.Data.DataSet)
            NumberOfRefCur = CType(results(3),Integer)
            OutDataSet = CType(results(4),System.Data.DataSet)
            PageNo = CType(results(5),Integer)
            PageSize = CType(results(6),Integer)
            ConStr = CType(results(7),String)
            CurDBType = CType(results(8),Integer)
            ExceptionNo = CType(results(9),Integer)
            ExceptionMsg = CType(results(10),String)
        End Sub
        
        '''<remarks/>
        Public Overloads Sub ReadListDataAsync(ByVal CommandType As Integer, ByVal CommandText As String, ByVal InDataTabDS As System.Data.DataSet, ByVal NumberOfRefCur As Integer, ByVal OutDataSet As System.Data.DataSet, ByVal PageNo As Integer, ByVal PageSize As Integer, ByVal ConStr As String, ByVal CurDBType As Integer, ByVal ExceptionNo As Integer, ByVal ExceptionMsg As String)
            Me.ReadListDataAsync(CommandType, CommandText, InDataTabDS, NumberOfRefCur, OutDataSet, PageNo, PageSize, ConStr, CurDBType, ExceptionNo, ExceptionMsg, Nothing)
        End Sub
        
        '''<remarks/>
        Public Overloads Sub ReadListDataAsync(ByVal CommandType As Integer, ByVal CommandText As String, ByVal InDataTabDS As System.Data.DataSet, ByVal NumberOfRefCur As Integer, ByVal OutDataSet As System.Data.DataSet, ByVal PageNo As Integer, ByVal PageSize As Integer, ByVal ConStr As String, ByVal CurDBType As Integer, ByVal ExceptionNo As Integer, ByVal ExceptionMsg As String, ByVal userState As Object)
            If (Me.ReadListDataOperationCompleted Is Nothing) Then
                Me.ReadListDataOperationCompleted = AddressOf Me.OnReadListDataOperationCompleted
            End If
            Me.InvokeAsync("ReadListData", New Object() {CommandType, CommandText, InDataTabDS, NumberOfRefCur, OutDataSet, PageNo, PageSize, ConStr, CurDBType, ExceptionNo, ExceptionMsg}, Me.ReadListDataOperationCompleted, userState)
        End Sub
        
        Private Sub OnReadListDataOperationCompleted(ByVal arg As Object)
            If (Not (Me.ReadListDataCompletedEvent) Is Nothing) Then
                Dim invokeArgs As System.Web.Services.Protocols.InvokeCompletedEventArgs = CType(arg,System.Web.Services.Protocols.InvokeCompletedEventArgs)
                RaiseEvent ReadListDataCompleted(Me, New ReadListDataCompletedEventArgs(invokeArgs.Results, invokeArgs.Error, invokeArgs.Cancelled, invokeArgs.UserState))
            End If
        End Sub
        
        '''<remarks/>
        Public Shadows Sub CancelAsync(ByVal userState As Object)
            MyBase.CancelAsync(userState)
        End Sub
        
        Private Function IsLocalFileSystemWebService(ByVal url As String) As Boolean
            If ((url Is Nothing)  _
                        OrElse (url Is String.Empty)) Then
                Return false
            End If
            Dim wsUri As System.Uri = New System.Uri(url)
            If ((wsUri.Port >= 1024)  _
                        AndAlso (String.Compare(wsUri.Host, "localHost", System.StringComparison.OrdinalIgnoreCase) = 0)) Then
                Return true
            End If
            Return false
        End Function
    End Class
    
    '''<remarks/>
    <System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "2.0.50727.42")>  _
    Public Delegate Sub HelloWorldCompletedEventHandler(ByVal sender As Object, ByVal e As HelloWorldCompletedEventArgs)
    
    '''<remarks/>
    <System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "2.0.50727.42"),  _
     System.Diagnostics.DebuggerStepThroughAttribute(),  _
     System.ComponentModel.DesignerCategoryAttribute("code")>  _
    Partial Public Class HelloWorldCompletedEventArgs
        Inherits System.ComponentModel.AsyncCompletedEventArgs
        
        Private results() As Object
        
        Friend Sub New(ByVal results() As Object, ByVal exception As System.Exception, ByVal cancelled As Boolean, ByVal userState As Object)
            MyBase.New(exception, cancelled, userState)
            Me.results = results
        End Sub
        
        '''<remarks/>
        Public ReadOnly Property Result() As String
            Get
                Me.RaiseExceptionIfNecessary
                Return CType(Me.results(0),String)
            End Get
        End Property
    End Class
    
    '''<remarks/>
    <System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "2.0.50727.42")>  _
    Public Delegate Sub WirteDataCompletedEventHandler(ByVal sender As Object, ByVal e As WirteDataCompletedEventArgs)
    
    '''<remarks/>
    <System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "2.0.50727.42"),  _
     System.Diagnostics.DebuggerStepThroughAttribute(),  _
     System.ComponentModel.DesignerCategoryAttribute("code")>  _
    Partial Public Class WirteDataCompletedEventArgs
        Inherits System.ComponentModel.AsyncCompletedEventArgs
        
        Private results() As Object
        
        Friend Sub New(ByVal results() As Object, ByVal exception As System.Exception, ByVal cancelled As Boolean, ByVal userState As Object)
            MyBase.New(exception, cancelled, userState)
            Me.results = results
        End Sub
        
        '''<remarks/>
        Public ReadOnly Property CommandType() As Integer
            Get
                Me.RaiseExceptionIfNecessary
                Return CType(Me.results(0),Integer)
            End Get
        End Property
        
        '''<remarks/>
        Public ReadOnly Property CommandText() As String
            Get
                Me.RaiseExceptionIfNecessary
                Return CType(Me.results(1),String)
            End Get
        End Property
        
        '''<remarks/>
        Public ReadOnly Property InDataTabDS() As System.Data.DataSet
            Get
                Me.RaiseExceptionIfNecessary
                Return CType(Me.results(2),System.Data.DataSet)
            End Get
        End Property
        
        '''<remarks/>
        Public ReadOnly Property NumberOfRefCur() As Integer
            Get
                Me.RaiseExceptionIfNecessary
                Return CType(Me.results(3),Integer)
            End Get
        End Property
        
        '''<remarks/>
        Public ReadOnly Property OutDataTabDs() As System.Data.DataSet
            Get
                Me.RaiseExceptionIfNecessary
                Return CType(Me.results(4),System.Data.DataSet)
            End Get
        End Property
        
        '''<remarks/>
        Public ReadOnly Property IsKeyFeild() As Boolean
            Get
                Me.RaiseExceptionIfNecessary
                Return CType(Me.results(5),Boolean)
            End Get
        End Property
        
        '''<remarks/>
        Public ReadOnly Property ConStr() As String
            Get
                Me.RaiseExceptionIfNecessary
                Return CType(Me.results(6),String)
            End Get
        End Property
        
        '''<remarks/>
        Public ReadOnly Property CurDBType() As Integer
            Get
                Me.RaiseExceptionIfNecessary
                Return CType(Me.results(7),Integer)
            End Get
        End Property
        
        '''<remarks/>
        Public ReadOnly Property ExceptionNo() As Integer
            Get
                Me.RaiseExceptionIfNecessary
                Return CType(Me.results(8),Integer)
            End Get
        End Property
        
        '''<remarks/>
        Public ReadOnly Property ExceptionMsg() As String
            Get
                Me.RaiseExceptionIfNecessary
                Return CType(Me.results(9),String)
            End Get
        End Property
    End Class
    
    '''<remarks/>
    <System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "2.0.50727.42")>  _
    Public Delegate Sub ReadDataCompletedEventHandler(ByVal sender As Object, ByVal e As ReadDataCompletedEventArgs)
    
    '''<remarks/>
    <System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "2.0.50727.42"),  _
     System.Diagnostics.DebuggerStepThroughAttribute(),  _
     System.ComponentModel.DesignerCategoryAttribute("code")>  _
    Partial Public Class ReadDataCompletedEventArgs
        Inherits System.ComponentModel.AsyncCompletedEventArgs
        
        Private results() As Object
        
        Friend Sub New(ByVal results() As Object, ByVal exception As System.Exception, ByVal cancelled As Boolean, ByVal userState As Object)
            MyBase.New(exception, cancelled, userState)
            Me.results = results
        End Sub
        
        '''<remarks/>
        Public ReadOnly Property CommandType() As Integer
            Get
                Me.RaiseExceptionIfNecessary
                Return CType(Me.results(0),Integer)
            End Get
        End Property
        
        '''<remarks/>
        Public ReadOnly Property CommandText() As String
            Get
                Me.RaiseExceptionIfNecessary
                Return CType(Me.results(1),String)
            End Get
        End Property
        
        '''<remarks/>
        Public ReadOnly Property InDataTabDs() As System.Data.DataSet
            Get
                Me.RaiseExceptionIfNecessary
                Return CType(Me.results(2),System.Data.DataSet)
            End Get
        End Property
        
        '''<remarks/>
        Public ReadOnly Property NumberOfRefCur() As Integer
            Get
                Me.RaiseExceptionIfNecessary
                Return CType(Me.results(3),Integer)
            End Get
        End Property
        
        '''<remarks/>
        Public ReadOnly Property OutDataSet() As System.Data.DataSet
            Get
                Me.RaiseExceptionIfNecessary
                Return CType(Me.results(4),System.Data.DataSet)
            End Get
        End Property
        
        '''<remarks/>
        Public ReadOnly Property ConStr() As String
            Get
                Me.RaiseExceptionIfNecessary
                Return CType(Me.results(5),String)
            End Get
        End Property
        
        '''<remarks/>
        Public ReadOnly Property CurDBType() As Integer
            Get
                Me.RaiseExceptionIfNecessary
                Return CType(Me.results(6),Integer)
            End Get
        End Property
        
        '''<remarks/>
        Public ReadOnly Property ExceptionNo() As Integer
            Get
                Me.RaiseExceptionIfNecessary
                Return CType(Me.results(7),Integer)
            End Get
        End Property
        
        '''<remarks/>
        Public ReadOnly Property ExceptionMsg() As String
            Get
                Me.RaiseExceptionIfNecessary
                Return CType(Me.results(8),String)
            End Get
        End Property
    End Class
    
    '''<remarks/>
    <System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "2.0.50727.42")>  _
    Public Delegate Sub ReadData2CompletedEventHandler(ByVal sender As Object, ByVal e As ReadData2CompletedEventArgs)
    
    '''<remarks/>
    <System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "2.0.50727.42"),  _
     System.Diagnostics.DebuggerStepThroughAttribute(),  _
     System.ComponentModel.DesignerCategoryAttribute("code")>  _
    Partial Public Class ReadData2CompletedEventArgs
        Inherits System.ComponentModel.AsyncCompletedEventArgs
        
        Private results() As Object
        
        Friend Sub New(ByVal results() As Object, ByVal exception As System.Exception, ByVal cancelled As Boolean, ByVal userState As Object)
            MyBase.New(exception, cancelled, userState)
            Me.results = results
        End Sub
        
        '''<remarks/>
        Public ReadOnly Property CommandType() As Integer
            Get
                Me.RaiseExceptionIfNecessary
                Return CType(Me.results(0),Integer)
            End Get
        End Property
        
        '''<remarks/>
        Public ReadOnly Property CommandText() As String
            Get
                Me.RaiseExceptionIfNecessary
                Return CType(Me.results(1),String)
            End Get
        End Property
        
        '''<remarks/>
        Public ReadOnly Property InDataTabDS() As System.Data.DataSet
            Get
                Me.RaiseExceptionIfNecessary
                Return CType(Me.results(2),System.Data.DataSet)
            End Get
        End Property
        
        '''<remarks/>
        Public ReadOnly Property NumberOfRefCur() As Integer
            Get
                Me.RaiseExceptionIfNecessary
                Return CType(Me.results(3),Integer)
            End Get
        End Property
        
        '''<remarks/>
        Public ReadOnly Property OutParamDataDS() As System.Data.DataSet
            Get
                Me.RaiseExceptionIfNecessary
                Return CType(Me.results(4),System.Data.DataSet)
            End Get
        End Property
        
        '''<remarks/>
        Public ReadOnly Property ConStr() As String
            Get
                Me.RaiseExceptionIfNecessary
                Return CType(Me.results(5),String)
            End Get
        End Property
        
        '''<remarks/>
        Public ReadOnly Property CurDBType() As Integer
            Get
                Me.RaiseExceptionIfNecessary
                Return CType(Me.results(6),Integer)
            End Get
        End Property
        
        '''<remarks/>
        Public ReadOnly Property ExceptionNo() As Integer
            Get
                Me.RaiseExceptionIfNecessary
                Return CType(Me.results(7),Integer)
            End Get
        End Property
        
        '''<remarks/>
        Public ReadOnly Property ExceptionMsg() As String
            Get
                Me.RaiseExceptionIfNecessary
                Return CType(Me.results(8),String)
            End Get
        End Property
        
        '''<remarks/>
        Public ReadOnly Property ReturnValue() As String
            Get
                Me.RaiseExceptionIfNecessary
                Return CType(Me.results(9),String)
            End Get
        End Property
    End Class
    
    '''<remarks/>
    <System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "2.0.50727.42")>  _
    Public Delegate Sub ReadListDataCompletedEventHandler(ByVal sender As Object, ByVal e As ReadListDataCompletedEventArgs)
    
    '''<remarks/>
    <System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "2.0.50727.42"),  _
     System.Diagnostics.DebuggerStepThroughAttribute(),  _
     System.ComponentModel.DesignerCategoryAttribute("code")>  _
    Partial Public Class ReadListDataCompletedEventArgs
        Inherits System.ComponentModel.AsyncCompletedEventArgs
        
        Private results() As Object
        
        Friend Sub New(ByVal results() As Object, ByVal exception As System.Exception, ByVal cancelled As Boolean, ByVal userState As Object)
            MyBase.New(exception, cancelled, userState)
            Me.results = results
        End Sub
        
        '''<remarks/>
        Public ReadOnly Property CommandType() As Integer
            Get
                Me.RaiseExceptionIfNecessary
                Return CType(Me.results(0),Integer)
            End Get
        End Property
        
        '''<remarks/>
        Public ReadOnly Property CommandText() As String
            Get
                Me.RaiseExceptionIfNecessary
                Return CType(Me.results(1),String)
            End Get
        End Property
        
        '''<remarks/>
        Public ReadOnly Property InDataTabDS() As System.Data.DataSet
            Get
                Me.RaiseExceptionIfNecessary
                Return CType(Me.results(2),System.Data.DataSet)
            End Get
        End Property
        
        '''<remarks/>
        Public ReadOnly Property NumberOfRefCur() As Integer
            Get
                Me.RaiseExceptionIfNecessary
                Return CType(Me.results(3),Integer)
            End Get
        End Property
        
        '''<remarks/>
        Public ReadOnly Property OutDataSet() As System.Data.DataSet
            Get
                Me.RaiseExceptionIfNecessary
                Return CType(Me.results(4),System.Data.DataSet)
            End Get
        End Property
        
        '''<remarks/>
        Public ReadOnly Property PageNo() As Integer
            Get
                Me.RaiseExceptionIfNecessary
                Return CType(Me.results(5),Integer)
            End Get
        End Property
        
        '''<remarks/>
        Public ReadOnly Property PageSize() As Integer
            Get
                Me.RaiseExceptionIfNecessary
                Return CType(Me.results(6),Integer)
            End Get
        End Property
        
        '''<remarks/>
        Public ReadOnly Property ConStr() As String
            Get
                Me.RaiseExceptionIfNecessary
                Return CType(Me.results(7),String)
            End Get
        End Property
        
        '''<remarks/>
        Public ReadOnly Property CurDBType() As Integer
            Get
                Me.RaiseExceptionIfNecessary
                Return CType(Me.results(8),Integer)
            End Get
        End Property
        
        '''<remarks/>
        Public ReadOnly Property ExceptionNo() As Integer
            Get
                Me.RaiseExceptionIfNecessary
                Return CType(Me.results(9),Integer)
            End Get
        End Property
        
        '''<remarks/>
        Public ReadOnly Property ExceptionMsg() As String
            Get
                Me.RaiseExceptionIfNecessary
                Return CType(Me.results(10),String)
            End Get
        End Property
    End Class
End Namespace
