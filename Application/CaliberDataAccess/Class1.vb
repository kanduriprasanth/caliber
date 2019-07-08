Imports Microsoft.VisualBasic
Imports System.Web
Imports System
Imports System.Data
Imports System.Data.SqlClient
'Imports Oracle
'Imports Oracle.DataAccess
Imports System.Collections.Generic
Imports System.ComponentModel
Imports System.Text
Imports System.Runtime.Remoting
Imports System.Runtime.Remoting.Channels
Namespace CaliberClient
    Public Class CaliberData
        Structure KeyFeildStruct
            Dim PlantID As Integer
            Dim ConfigID As Integer
            Dim EsignerLogin As String
            Dim EsignerId As Integer
            Dim EsignerRoleId As Integer
            Dim EsignerRank As Single
            Dim EsignDateTime As DateTime
            Dim Esign As String
            Dim EsignerRem As String
        End Structure
        Structure EsingStruct
            Dim EsignerLogin As String
            Dim EsignerId As Integer
            Dim EsignerRoleId As Integer
            Dim EsignerRank As Single
            Dim EsignDateTime As DateTime
            Dim Esign As String
        End Structure
        Function GetKeyFeilds(ByVal EsignerLogin As String, ByVal PlantID As Integer, Optional ByVal ConfigID As Integer = 0, Optional ByVal EsignerRem As String = "") As KeyFeildStruct
            GetKeyFeilds = New KeyFeildStruct
            GetKeyFeilds.EsignDateTime = System.DateTime.Now
            GetKeyFeilds.ConfigID = ConfigID
            ' EsignerData()
        End Function
        Dim _ExceptionMsg As String
        Public Property ExceptionMsg() As String
            Get
                ExceptionMsg = _ExceptionMsg
            End Get
            Set(ByVal value As String)
                _ExceptionMsg = value
            End Set
        End Property
        Private _ExceptionNo As Integer
        Public Property ExceptionNo() As Integer
            Get
                ExceptionNo = _ExceptionNo
            End Get
            Set(ByVal value As Integer)
                _ExceptionNo = value
            End Set
        End Property
        Function GetParamTable() As System.Data.DataTable
            GetParamTable = New System.Data.DataTable
            GetParamTable.Columns.Add("ParameterName", GetType(String))
            GetParamTable.Columns.Add("DbType", GetType(Integer))
            GetParamTable.Columns.Add("Value", GetType(Object))
            GetParamTable.Columns.Add("ParameterDirection", GetType(Integer))

        End Function
        Function GetOutPutTable() As System.Data.DataTable
            GetOutPutTable = New System.Data.DataTable
            GetOutPutTable.Columns.Add("ParameterName", GetType(String))
            GetOutPutTable.Columns.Add("ReturnValue", GetType(String))

        End Function
        Structure Parameter
            Dim ParameterName As String
            Dim DbType As ParamDBType
            Dim Value As Object
            Dim ParameterDirection As System.Data.ParameterDirection
        End Structure
        Enum ParamDBType As Integer
            [String] = 1
            [Integer] = 2
            [Single] = 3
            [DateTime] = 4
            [TinyInt] = 5
            [Image] = 6
            [ntext] = 7
            [smallInt] = 8
        End Enum
        Sub AddParameter(ByRef myParamTable As System.Data.DataTable, ByVal myParameter As Parameter)
            Dim myRow As System.Data.DataRow
            myRow = myParamTable.NewRow
            myRow("ParameterName") = myParameter.ParameterName
            myRow("DbType") = myParameter.DbType
            If IsNothing(myParameter.Value) Then myParameter.Value = DBNull.Value
            myRow("Value") = myParameter.Value
            myRow("ParameterDirection") = myParameter.ParameterDirection

            myParamTable.Rows.Add(myRow)
        End Sub
    End Class
End Namespace
Namespace CaliberClient
    Public Class CommonDataAccessCls
        Structure KeyFeildStruct
            Dim PlantID As Integer
            Dim ConfigID As Integer
            Dim EsignerLogin As String
            Dim EsignerId As Integer
            Dim EsignerRoleId As Integer
            Dim EsignerRank As Single
            Dim EsignDateTime As DateTime
            Dim Esign As String
            Dim EsignerRem As String
        End Structure
        Dim _ExceptionMsg As String
        Public Property ExceptionMsg() As String
            Get
                ExceptionMsg = _ExceptionMsg
            End Get
            Set(ByVal value As String)
                _ExceptionMsg = value
            End Set
        End Property
        Private _ExceptionNo As Integer
        Public Property ExceptionNo() As Integer
            Get
                ExceptionNo = _ExceptionNo
            End Get
            Set(ByVal value As Integer)
                _ExceptionNo = value
            End Set
        End Property
        Const OracleParamPrefix As String = "v_"
        Const SQLParamPrefix As String = "@"
        Enum DBSrcType
            MSSQL = 1
            Oracle = 2
        End Enum
        Public ReadOnly Property ReadWriteCon() As String
            Get
                Dim RWCon As String = HttpContext.Current.Session("RWCon")
                If IsNothing(RWCon) Then RWCon = "RWCon"
                ReadWriteCon = HttpContext.Current.Application(RWCon)
            End Get

        End Property
        Public ReadOnly Property GlobalCon() As String
            Get
                GlobalCon = HttpContext.Current.Application("GCon")
            End Get
        End Property
        Public ReadOnly Property ReadOnlyCon() As String
            Get
                Dim RCon As String = HttpContext.Current.Session("RCon")
                If IsNothing(RCon) Then RCon = "RCon"
                ReadOnlyCon = HttpContext.Current.Application(RCon)
            End Get
        End Property
        Public ReadOnly Property FileConStr() As String
            Get
                FileConStr = HttpContext.Current.Application("MyUploadConStr")
            End Get
        End Property
        ReadOnly Property AccessMode() As Integer
            Get
                AccessMode = HttpContext.Current.Application("AccessMode")
                If IsNothing(AccessMode) Then AccessMode = 0
            End Get
        End Property
        Sub AddParamaters(ByVal CurDBType As DBSrcType, ByRef InDataTab As Data.DataTable, ByVal myCommand As Object, Optional ByVal NumberOfRefCur As Integer = 0)
            Dim r, i As Integer
            Dim myRow As Data.DataRow
            Select Case CurDBType
                Case DBSrcType.MSSQL
                    Dim myParam As Data.SqlClient.SqlParameter

                    For r = 0 To InDataTab.Rows.Count - 1
                        myRow = InDataTab.Rows(r)
                        myParam = New SqlParameter
                        myParam.Direction = myRow("ParameterDirection")
                        myParam.ParameterName = SQLParamPrefix & myRow("ParameterName")
                        Select Case myRow("DbType")
                            Case 1
                                myParam.SqlDbType = SqlDbType.NVarChar
                                myParam.Size = Len(myParam.Value)
                            Case 2
                                myParam.SqlDbType = SqlDbType.Int
                            Case 3
                                myParam.SqlDbType = SqlDbType.Float
                            Case 4
                                myParam.SqlDbType = SqlDbType.SmallDateTime
                            Case 5
                                myParam.SqlDbType = SqlDbType.TinyInt
                            Case 6
                                myParam.SqlDbType = SqlDbType.Image
                            Case 7
                                myParam.SqlDbType = SqlDbType.NText
                            Case 8
                                myParam.SqlDbType = SqlDbType.SmallInt
                        End Select
                        myParam.Value = myRow("Value")
                        myCommand.Parameters.Add(myParam)
                    Next
                Case DBSrcType.Oracle
                    'Dim myParam As Oracle.DataAccess.Client.OracleParameter
                    For r = 0 To InDataTab.Rows.Count - 1
                        'myRow = InDataTab.Rows(r)
                        'myParam = New Oracle.DataAccess.Client.OracleParameter
                        'myParam.Direction = myRow("ParameterDirection")
                        'myParam.ParameterName = OracleParamPrefix & myRow("ParameterName")
                        'Select Case myRow("DbType")
                        '    Case 1
                        '        myParam.OracleDbType = Oracle.DataAccess.Client.OracleDbType.Varchar2
                        '    Case 2
                        '        myParam.OracleDbType = Oracle.DataAccess.Client.OracleDbType.Int32
                        '    Case 3
                        '        myParam.OracleDbType = Oracle.DataAccess.Client.OracleDbType.Single
                        '    Case 4
                        '        myParam.OracleDbType = Oracle.DataAccess.Client.OracleDbType.Date
                        '    Case 5
                        '        myParam.OracleDbType = Oracle.DataAccess.Client.OracleDbType.Int16
                        '    Case 6
                        '        myParam.OracleDbType = Oracle.DataAccess.Client.OracleDbType.Blob
                        '    Case 7
                        '        myParam.OracleDbType = Oracle.DataAccess.Client.OracleDbType.NClob
                        '    Case 8
                        '        myParam.OracleDbType = Oracle.DataAccess.Client.OracleDbType.Int16
                        'End Select
                        'myParam.Value = myRow("Value")
                        'myCommand.Parameters.Add(myParam)
                    Next
                    If NumberOfRefCur > 0 Then
                        'myParam = New Oracle.DataAccess.Client.OracleParameter
                        'myParam.ParameterName = "cv_1" '"refcur"
                        'myParam.OracleDbType = Oracle.DataAccess.Client.OracleDbType.RefCursor
                        'myParam.Direction = ParameterDirection.Output
                        'myCommand.Parameters.Add(myParam)
                    End If
                    For i = 1 To NumberOfRefCur - 1
                        'myParam = New Oracle.DataAccess.Client.OracleParameter
                        'myParam.ParameterName = "cv_" & (i + 1) '"refcur" & i
                        'myParam.OracleDbType = Oracle.DataAccess.Client.OracleDbType.RefCursor
                        'myParam.Direction = ParameterDirection.Output
                        'myCommand.Parameters.Add(myParam)
                    Next
            End Select
        End Sub
        Public Sub WirteData(ByVal CommandType As System.Data.CommandType, ByVal CommandText As String, ByRef InDataTab As System.Data.DataTable, ByVal NumberOfRefCur As Integer, ByRef OutDataTab As System.Data.DataTable, Optional ByVal IsKeyFeild As Boolean = False, Optional ByVal IsGlobalCon As Boolean = False, Optional ByVal IsFileCon As Boolean = False)
            ExceptionMsg = ""
            ExceptionNo = 0
            Dim ConStr As String = ReadWriteCon
            If IsGlobalCon = True Then ConStr = GlobalCon
            If IsFileCon = True Then ConStr = FileConStr
            Dim CurDBType As Integer = HttpContext.Current.Application("DbType")

            Select Case AccessMode
                Case 0
                    Dim myRow As Data.DataRow
                    Dim r As Integer
                    Select Case CurDBType
                        Case DBSrcType.MSSQL
                            Dim myParam As Data.SqlClient.SqlParameter
                            Dim myCommand As New Data.SqlClient.SqlCommand
                            myCommand.CommandType = CommandType
                            myCommand.CommandText = CommandText
                            Dim myConnection As Data.SqlClient.SqlConnection
                            Dim myTrans As SqlTransaction
                            myConnection = New SqlConnection(ConStr)
                            AddParamaters(CurDBType, InDataTab, myCommand)
                            If IsKeyFeild = True Then
                                myParam = New SqlParameter
                                myParam.Direction = Data.ParameterDirection.Output
                                myParam.ParameterName = SQLParamPrefix & "KeyFeild"
                                myParam.SqlDbType = SqlDbType.NVarChar
                                myParam.Size = 150
                                myCommand.Parameters.Add(myParam)
                            End If
                            Try
                                myConnection.Open()
                                myTrans = myConnection.BeginTransaction
                                myCommand.Connection = myConnection
                                myCommand.Transaction = myTrans
                                myCommand.ExecuteNonQuery()
                                For r = 0 To OutDataTab.Rows.Count - 1
                                    myRow = OutDataTab.Rows(r)
                                    myParam = myCommand.Parameters(SQLParamPrefix & myRow("ParameterName"))
                                    myRow("ReturnValue") = myParam.Value.ToString
                                Next
                                If IsKeyFeild = True Then
                                    myRow = OutDataTab.NewRow
                                    myParam = myCommand.Parameters(SQLParamPrefix & "KeyFeild")
                                    myRow("ReturnValue") = myParam.Value.ToString
                                    OutDataTab.Rows.Add(myRow)
                                End If
                                myTrans.Commit()
                                myConnection.Close()
                            Catch ex As Exception
                                ExceptionMsg = ex.ToString
                                ExceptionNo = 3
                                If myConnection.State = ConnectionState.Open Then
                                    myTrans.Rollback()
                                End If
                            Finally
                                myConnection.Close()
                                myCommand.Dispose()
                            End Try
                        Case DBSrcType.Oracle
                            'Dim myParam As Oracle.DataAccess.Client.OracleParameter
                            'Dim myCommand As New Oracle.DataAccess.Client.OracleCommand
                            'myCommand.CommandType = CommandType
                            'myCommand.CommandText = CommandText

                            'Dim myConnection As Oracle.DataAccess.Client.OracleConnection
                            'Dim myTrans As Oracle.DataAccess.Client.OracleTransaction
                            'myConnection = New Oracle.DataAccess.Client.OracleConnection(ConStr)
                            'AddParamaters(CurDBType, InDataTab, myCommand)
                            '---------------Oracle Reference Cursor------------------------
                            If NumberOfRefCur > 0 Then
                                'myParam = New Oracle.DataAccess.Client.OracleParameter
                                'myParam.ParameterName = "cv_1" ' "refcur"
                                'myParam.OracleDbType = Oracle.DataAccess.Client.OracleDbType.RefCursor
                                'myParam.Direction = ParameterDirection.Output
                                'myCommand.Parameters.Add(myParam)
                            End If
                            '----------------------------------------------------------------
                            Try
                                'myConnection.Open()
                                'myTrans = myConnection.BeginTransaction
                                'myCommand.Connection = myConnection
                                'myCommand.ExecuteNonQuery()
                                For r = 0 To OutDataTab.Rows.Count - 1
                                    'myRow = OutDataTab.Rows(r)
                                    'myParam = myCommand.Parameters(OracleParamPrefix & myRow("ParameterName"))
                                    'myRow("ReturnValue") = myParam.Value.ToString
                                Next
                                If NumberOfRefCur > 0 Then
                                    myRow = OutDataTab.NewRow
                                    'myParam = myCommand.Parameters("cv_1") '("refcur")
                                    'Dim reader As IDataReader = myParam.Value.GetDataReader()
                                    'reader.Read()
                                    'myRow("ReturnValue") = reader.GetString(0)
                                    OutDataTab.Rows.Add(myRow)
                                    'reader.Close()
                                End If
                                'myTrans.Commit()
                                'myConnection.Close()
                            Catch ex As Exception
                                ExceptionMsg = ex.ToString
                                ExceptionNo = 3
                                'If myConnection.State = ConnectionState.Open Then
                                '    myTrans.Rollback()
                                'End If
                            Finally
                                'myConnection.Close()
                                'myCommand.Dispose()
                            End Try

                    End Select

                Case 1
                    'Dim WebRef As New localhost.Service1
                    'Try
                    '    Dim InDataTabDS As New DataSet
                    '    InDataTabDS.Tables.Add(InDataTab)
                    '    Dim OutDataTabDS As New DataSet
                    '    OutDataTabDS.Tables.Add(OutDataTab)
                    '    WebRef.WirteData(CommandType, CommandText, InDataTabDS, NumberOfRefCur, OutDataTabDS, IsKeyFeild, ConStr, CurDBType, ExceptionNo, ExceptionMsg)
                    'Catch ex As Exception
                    '    ExceptionMsg = ex.ToString
                    '    ExceptionNo = 3
                    'Finally
                    '    WebRef = Nothing
                    'End Try
                Case 2

                    'Dim obj As CaliberRemoteDataAccess.Service1 = New CaliberRemoteDataAccess.Service1()
                    'Try

                    '    obj = CType(Activator.GetObject(GetType(CaliberRemoteDataAccess.Service1), "tcp://localhost:8085/CaliberRMIService"), CaliberRemoteDataAccess.Service1)

                    '    Dim InDataTabDS As New DataSet
                    '    InDataTabDS.Tables.Add(InDataTab)
                    '    Dim OutDataTabDS As New DataSet
                    '    OutDataTabDS.Tables.Add(OutDataTab)
                    '    obj.WirteData(CommandType, CommandText, InDataTabDS, NumberOfRefCur, OutDataTabDS, IsKeyFeild, ConStr, CurDBType, ExceptionNo, ExceptionMsg)

                    'Catch ex As Exception
                    '    ExceptionMsg = ex.ToString
                    '    ExceptionNo = 3
                    'Finally
                    '    obj = Nothing
                    'End Try
            End Select

        End Sub
        'This is a general  funtion for reading records from single/multi tables
        Public Sub ReadData(ByVal CommandType As System.Data.CommandType, ByVal CommandText As String, ByRef InDataTab As System.Data.DataTable, ByVal NumberOfRefCur As Integer, ByRef OutDataSet As System.Data.DataSet, Optional ByVal IsFileCon As Boolean = False, Optional ByVal IsGlobalCon As Boolean = False)
            ExceptionMsg = ""
            ExceptionNo = 0
            Dim ConStr As String = ReadOnlyCon
            If IsFileCon = True Then ConStr = FileConStr
            If IsGlobalCon = True Then ConStr = GlobalCon
            Dim CurDBType As Integer = HttpContext.Current.Application("DbType")

            Select Case AccessMode
                Case 0
                    Dim myRow As Data.DataRow
                    Dim reader As IDataReader
                    Dim myCommand As Object
                    Dim myConnection As Object
                    Select Case CurDBType

                        Case DBSrcType.MSSQL
                            myCommand = New Data.SqlClient.SqlCommand
                            myCommand.CommandType = CommandType
                            myCommand.CommandText = CommandText
                            myConnection = New SqlConnection(ConStr) 'Added by Ravi
                            AddParamaters(CurDBType, InDataTab, myCommand)
                        Case DBSrcType.Oracle
                            'myCommand = New Oracle.DataAccess.Client.OracleCommand
                            'myCommand.CommandType = CommandType
                            'myCommand.CommandText = CommandText
                            'myConnection = New Oracle.DataAccess.Client.OracleConnection(ConStr) 'Added by Ravi
                            'AddParamaters(CurDBType, InDataTab, myCommand, NumberOfRefCur)
                    End Select

                    Try
                        myConnection.Open()
                        myCommand.Connection = myConnection
                        reader = myCommand.ExecuteReader
                        If Not IsNothing(reader) Then
                            Dim c As Integer
                            Dim DataTab As Data.DataTable
                            DataTab = New Data.DataTable
                            For c = 0 To reader.FieldCount - 1
                                DataTab.Columns.Add(reader.GetName(c), reader.GetFieldType(c))
                            Next
                            Do While reader.Read
                                'reader.
                                myRow = DataTab.NewRow()
                                For c = 0 To reader.FieldCount - 1
                                    myRow(c) = reader.GetValue(c)
                                Next
                                DataTab.Rows.Add(myRow)
                            Loop
                            OutDataSet.Tables.Add(DataTab)

                            Do While reader.NextResult
                                DataTab = New Data.DataTable
                                For c = 0 To reader.FieldCount - 1
                                    DataTab.Columns.Add(reader.GetName(c), reader.GetFieldType(c))
                                Next
                                Do While reader.Read
                                    myRow = DataTab.NewRow()
                                    For c = 0 To reader.FieldCount - 1
                                        myRow(c) = reader.GetValue(c)
                                    Next
                                    DataTab.Rows.Add(myRow)
                                Loop
                                OutDataSet.Tables.Add(DataTab)
                            Loop
                        End If
                        myConnection.Close()
                    Catch ex As Exception
                        ExceptionMsg = ex.ToString
                        ExceptionNo = 3
                    Finally
                        If Not IsNothing(myConnection) Then
                            myConnection.Close()
                            myCommand.Dispose()
                        End If
                    End Try
                Case 1
                    'Dim WebRef As New localhost.Service1
                    'Try
                    '    Dim InDataTabDS As New DataSet
                    '    InDataTabDS.Tables.Add(InDataTab)

                    '    WebRef.ReadData(CommandType, CommandText, InDataTabDS, NumberOfRefCur, OutDataSet, ConStr, CurDBType, ExceptionNo, ExceptionMsg)
                    'Catch ex As Exception
                    '    ExceptionMsg = ex.ToString
                    '    ExceptionNo = 3
                    'Finally
                    '    WebRef = Nothing
                    'End Try
                Case 2
                    'Dim obj As CaliberRemoteDataAccess.Service1 = New CaliberRemoteDataAccess.Service1()
                    'Try
                    '    obj = CType(Activator.GetObject(GetType(CaliberRemoteDataAccess.Service1), "tcp://localhost:8085/CaliberRMIService"), CaliberRemoteDataAccess.Service1)
                    '    Dim InDataTabDS As New DataSet
                    '    InDataTabDS.Tables.Add(InDataTab)
                    '    obj.ReadData(CommandType, CommandText, InDataTabDS, NumberOfRefCur, OutDataSet, ConStr, CurDBType, ExceptionNo, ExceptionMsg)
                    'Catch ex As Exception
                    '    ExceptionMsg = ex.ToString
                    '    ExceptionNo = 3
                    'Finally
                    '    obj = Nothing
                    'End Try
            End Select

        End Sub
        ' This function is desinged for only return param values, not for record sets
        Public Sub ReadData(ByVal CommandType As System.Data.CommandType, ByVal CommandText As String, ByRef InDataTab As System.Data.DataTable, ByVal NumberOfRefCur As Integer, ByRef OutParamData As System.Data.DataTable, Optional ByVal IsGlobalCon As Boolean = False)
            ExceptionMsg = ""
            ExceptionNo = 0
            Dim ConStr As String = ReadOnlyCon
            If IsGlobalCon = True Then ConStr = GlobalCon
            Dim CurDBType As Integer = HttpContext.Current.Application("DbType")
            Select Case AccessMode
                Case 0
                    Dim myRow As Data.DataRow
                    Dim r As Integer
                    Dim myCommand As Object
                    Dim myConnection As Object
                    Dim myParam As Object
                    Dim Prefix As String = SQLParamPrefix
                    Select Case CurDBType

                        Case DBSrcType.MSSQL
                            Prefix = SQLParamPrefix
                            myCommand = New Data.SqlClient.SqlCommand
                            myCommand.CommandType = CommandType
                            myCommand.CommandText = CommandText
                            myConnection = New SqlConnection(ReadOnlyCon)
                            AddParamaters(CurDBType, InDataTab, myCommand)
                        Case DBSrcType.Oracle
                            'Prefix = OracleParamPrefix
                            'myCommand = New Oracle.DataAccess.Client.OracleCommand
                            'myCommand.CommandType = CommandType
                            'myCommand.CommandText = CommandText
                            'myConnection = New Oracle.DataAccess.Client.OracleConnection(ReadOnlyCon)
                            'AddParamaters(CurDBType, InDataTab, myCommand, NumberOfRefCur)
                    End Select

                    Try
                        myConnection.Open()
                        myCommand.Connection = myConnection
                        myCommand.ExecuteNonQuery()

                        For r = 0 To OutParamData.Rows.Count - 1
                            myRow = OutParamData.Rows(r)
                            myParam = myCommand.Parameters.Item(Prefix & myRow("ParameterName"))
                            myRow("ReturnValue") = myParam.Value.ToString
                        Next
                        myConnection.Close()
                    Catch ex As Exception
                    Finally
                        If Not IsNothing(myConnection) Then
                            myConnection.Close()
                            myCommand.Dispose()
                        End If
                    End Try
                Case 1
                    'Dim WebRef As New localhost.Service1
                    'Try
                    '    Dim InDataTabDS As New DataSet
                    '    InDataTabDS.Tables.Add(InDataTab)
                    '    Dim ReturnValue As String = ""
                    '    WebRef.ReadData2(CommandType, CommandText, InDataTabDS, NumberOfRefCur, OutParamData.DataSet, ConStr, CurDBType, ExceptionNo, ExceptionMsg, ReturnValue)
                    '    OutParamData.Rows(0)("ReturnValue") = ReturnValue
                    'Catch ex As Exception
                    '    ExceptionMsg = ex.ToString
                    '    ExceptionNo = 3
                    'Finally
                    '    WebRef = Nothing
                    'End Try
                Case 2
                    'Dim obj As CaliberRemoteDataAccess.Service1 = New CaliberRemoteDataAccess.Service1()
                    'Try
                    '    obj = CType(Activator.GetObject(GetType(CaliberRemoteDataAccess.Service1), "tcp://localhost:8085/CaliberRMIService"), CaliberRemoteDataAccess.Service1)
                    '    Dim InDataTabDS As New DataSet
                    '    InDataTabDS.Tables.Add(InDataTab)
                    '    Dim ReturnValue As String = ""
                    '    obj.ReadData2(CommandType, CommandText, InDataTabDS, NumberOfRefCur, OutParamData.DataSet, ConStr, CurDBType, ExceptionNo, ExceptionMsg, ReturnValue)
                    '    OutParamData.Rows(0)("ReturnValue") = ReturnValue
                    'Catch ex As Exception
                    '    ExceptionMsg = ex.ToString
                    '    ExceptionNo = 3
                    'Finally
                    '    obj = Nothing
                    'End Try
            End Select
        End Sub
        Public Sub ReadListData(ByVal CommandType As System.Data.CommandType, ByRef CommandText As String, ByRef InDataTab As System.Data.DataTable, ByVal NumberOfRefCur As Integer, ByRef OutDataSet As System.Data.DataSet, ByVal PageNo As Integer, ByVal PageSize As Integer, Optional ByVal IsGlobalCon As Boolean = False)
            ExceptionMsg = ""
            ExceptionNo = 0
            Dim ConStr As String = ReadOnlyCon
            If IsGlobalCon = True Then ConStr = GlobalCon
            Dim CurDBType As Integer = HttpContext.Current.Application("DbType")

            Select Case AccessMode
                Case 0
                    Dim AbsPsoition As Integer
                    Dim PageStartPos As Integer
                    Dim PageEndPos As Integer
                    AbsPsoition = 0
                    If PageNo < 1 Then PageNo = 1
                    If PageSize < 1 Then PageSize = 1
                    PageStartPos = (PageNo - 1) * (PageSize)
                    PageEndPos = PageNo * PageSize
                    Dim myRow As Data.DataRow
                    Dim reader As IDataReader
                    Dim myCommand As Object
                    Dim myConnection As Object
                    Try
                        Select Case CurDBType
                            Case DBSrcType.MSSQL
                                myCommand = New Data.SqlClient.SqlCommand
                                myCommand.CommandType = CommandType
                                myCommand.CommandText = CommandText
                                myConnection = New Data.SqlClient.SqlConnection(ConStr)
                                AddParamaters(CurDBType, InDataTab, myCommand)
                            Case DBSrcType.Oracle
                                'myCommand = New Oracle.DataAccess.Client.OracleCommand
                                'myCommand.CommandType = CommandType
                                'myCommand.CommandText = CommandText
                                'myConnection = New Oracle.DataAccess.Client.OracleConnection(ConStr)
                                'AddParamaters(CurDBType, InDataTab, myCommand, NumberOfRefCur)
                        End Select
                        myConnection.Open()
                        myCommand.Connection = myConnection
                        reader = myCommand.ExecuteReader
                        If Not IsNothing(reader) Then
                            Dim c As Integer
                            Dim DataTab As Data.DataTable
                            DataTab = New Data.DataTable
                            For c = 0 To reader.FieldCount - 1
                                DataTab.Columns.Add(reader.GetName(c), reader.GetFieldType(c))
                            Next
                            DataTab.Columns.Add("CALSNO", GetType(Integer))
                            If PageNo > 1 Then
                                Do While (AbsPsoition < PageStartPos)
                                    If Not reader.Read Then Exit Do
                                    AbsPsoition = AbsPsoition + 1
                                Loop
                            End If
                            Do While (AbsPsoition < PageEndPos)
                                If Not reader.Read Then Exit Do
                                AbsPsoition = AbsPsoition + 1
                                myRow = DataTab.NewRow()
                                For c = 0 To reader.FieldCount - 1
                                    myRow(c) = reader.GetValue(c)
                                Next
                                myRow("CALSNO") = AbsPsoition
                                DataTab.Rows.Add(myRow)
                            Loop
                            OutDataSet.Tables.Add(DataTab)
                            Do While reader.Read
                                AbsPsoition = AbsPsoition + 1
                            Loop
                            DataTab = New Data.DataTable
                            DataTab.Columns.Add("TotalRecords", GetType(Integer))
                            myRow = DataTab.NewRow()
                            myRow(0) = AbsPsoition
                            DataTab.Rows.Add(myRow)
                            OutDataSet.Tables.Add(DataTab)
                        End If
                        myConnection.Close()
                    Catch ex As Exception
                        ExceptionMsg = ex.ToString
                        ExceptionNo = 3
                    Finally
                        If Not IsNothing(myConnection) Then
                            myConnection.Close()
                            myCommand.Dispose()
                        End If
                    End Try
                Case 1
                    'Dim WebRef As New localhost.Service1
                    'Try
                    '    Dim InDataTabDS As New DataSet
                    '    InDataTabDS.Tables.Add(InDataTab)
                    '    WebRef.ReadListData(CommandType, CommandText, InDataTabDS, NumberOfRefCur, OutDataSet, PageNo, PageSize, ConStr, CurDBType, ExceptionNo, ExceptionMsg)
                    'Catch ex As Exception
                    '    ExceptionMsg = ex.ToString
                    '    ExceptionNo = 3
                    'Finally
                    '    WebRef = Nothing
                    'End Try
                Case 2
                    'Dim obj As CaliberRemoteDataAccess.Service1 = New CaliberRemoteDataAccess.Service1()
                    'Try

                    '    obj = CType(Activator.GetObject(GetType(CaliberRemoteDataAccess.Service1), "tcp://localhost:8085/CaliberRMIService"), CaliberRemoteDataAccess.Service1)

                    '    Dim InDataTabDS As New DataSet
                    '    InDataTabDS.Tables.Add(InDataTab)
                    '    obj.ReadListData(CommandType, CommandText, InDataTabDS, NumberOfRefCur, OutDataSet, PageNo, PageSize, ConStr, CurDBType, ExceptionNo, ExceptionMsg)
                    'Catch ex As Exception
                    '    ExceptionMsg = ex.ToString
                    '    ExceptionNo = 3
                    'Finally
                    '    obj = Nothing
                    'End Try
            End Select
        End Sub
        Public Sub ExtWirteData(ByVal CurDBType As Integer, ByVal ConStr As String, ByVal CommandType As System.Data.CommandType, ByVal CommandText As String, ByRef InDataTab As System.Data.DataTable, ByVal NumberOfRefCur As Integer, ByRef OutDataTab As System.Data.DataTable, Optional ByVal IsKeyFeild As Boolean = False)
            ExceptionMsg = ""
            ExceptionNo = 0
            Dim myRow As Data.DataRow
            Dim r As Integer
            Select Case CurDBType
                Case DBSrcType.MSSQL
                    Dim myParam As Data.SqlClient.SqlParameter
                    Dim myCommand As New Data.SqlClient.SqlCommand
                    myCommand.CommandType = CommandType
                    myCommand.CommandText = CommandText
                    Dim myConnection As Data.SqlClient.SqlConnection
                    Dim myTrans As SqlTransaction
                    myConnection = New SqlConnection(ConStr)
                    AddParamaters(CurDBType, InDataTab, myCommand)
                    If IsKeyFeild = True Then
                        myParam = New SqlParameter
                        myParam.Direction = Data.ParameterDirection.Output
                        myParam.ParameterName = SQLParamPrefix & "KeyFeild"
                        myParam.SqlDbType = SqlDbType.NVarChar
                        myParam.Size = 150
                        myCommand.Parameters.Add(myParam)
                    End If

                    Try
                        myConnection.Open()
                        myTrans = myConnection.BeginTransaction
                        myCommand.Connection = myConnection
                        myCommand.Transaction = myTrans
                        myCommand.ExecuteNonQuery()
                        For r = 0 To OutDataTab.Rows.Count - 1
                            myRow = OutDataTab.Rows(r)
                            myParam = myCommand.Parameters(SQLParamPrefix & myRow("ParameterName"))
                            myRow("ReturnValue") = myParam.Value.ToString
                        Next
                        If IsKeyFeild = True Then
                            myRow = OutDataTab.NewRow
                            myParam = myCommand.Parameters(SQLParamPrefix & "KeyFeild")
                            myRow("ReturnValue") = myParam.Value.ToString
                            OutDataTab.Rows.Add(myRow)
                        End If
                        myTrans.Commit()
                        myConnection.Close()
                    Catch ex As Exception
                        ExceptionMsg = ex.ToString
                        ExceptionNo = 3
                        If myConnection.State = ConnectionState.Open Then
                            myTrans.Rollback()
                        End If
                    Finally
                        myConnection.Close()
                        myCommand.Dispose()
                    End Try
                Case DBSrcType.Oracle

                    'Dim myParam As Oracle.DataAccess.Client.OracleParameter
                    'Dim myCommand As New Oracle.DataAccess.Client.OracleCommand
                    ' myCommand.CommandType = CommandType
                    'myCommand.CommandText = CommandText
                    'Dim myConnection As Oracle.DataAccess.Client.OracleConnection
                    'Dim myTrans As Oracle.DataAccess.Client.OracleTransaction
                    'myConnection = New Oracle.DataAccess.Client.OracleConnection(ConStr)
                    'AddParamaters(CurDBType, InDataTab, myCommand)
                    '---------------Oracle Reference Cursor------------------------
                    If NumberOfRefCur > 0 Then
                        'myParam = New Oracle.DataAccess.Client.OracleParameter
                        'myParam.ParameterName = "cv_1" '"refcur"
                        'myParam.OracleDbType = Oracle.DataAccess.Client.OracleDbType.RefCursor
                        'myParam.Direction = ParameterDirection.Output
                        'myCommand.Parameters.Add(myParam)
                    End If
                    '----------------------------------------------------------------
                    Try
                        'myConnection.Open()
                        'myTrans = myConnection.BeginTransaction
                        'myCommand.Connection = myConnection
                        'myCommand.ExecuteNonQuery()
                        For r = 0 To OutDataTab.Rows.Count - 1
                            'myRow = OutDataTab.Rows(r)
                            'myParam = myCommand.Parameters(OracleParamPrefix & myRow("ParameterName"))
                            'myRow("ReturnValue") = myParam.Value.ToString
                        Next
                        If NumberOfRefCur > 0 Then
                            myRow = OutDataTab.NewRow
                            ' myParam = myCommand.Parameters("cv_1") '("refcur")
                            'Dim reader As IDataReader = myParam.Value.GetDataReader()
                            'reader.Read()
                            'myRow("ReturnValue") = reader.GetString(0)
                            OutDataTab.Rows.Add(myRow)
                            'reader.Close()
                        End If
                        'myTrans.Commit()
                        'myConnection.Close()
                    Catch ex As Exception
                        ExceptionMsg = ex.ToString
                        ExceptionNo = 3
                        'If myConnection.State = ConnectionState.Open Then
                        '    myTrans.Rollback()
                        'End If
                    Finally
                        'myConnection.Close()
                        'myCommand.Dispose()
                    End Try
            End Select
        End Sub
        'This is a general  funtion for reading records from single/multi tables
        Public Sub ExtReadData(ByVal CurDBType As Integer, ByVal ConStr As String, ByVal CommandType As System.Data.CommandType, ByVal CommandText As String, ByRef InDataTab As System.Data.DataTable, ByVal NumberOfRefCur As Integer, ByRef OutDataSet As System.Data.DataSet)
            ExceptionMsg = ""
            ExceptionNo = 0

            Dim myRow As Data.DataRow
            Dim reader As IDataReader
            Dim myCommand As Object
            Dim myConnection As Object
            Select Case CurDBType
                Case DBSrcType.MSSQL
                    myCommand = New Data.SqlClient.SqlCommand
                    myCommand.CommandType = CommandType
                    myCommand.CommandText = CommandText
                    myConnection = New SqlConnection(ConStr)
                    AddParamaters(CurDBType, InDataTab, myCommand)
                Case DBSrcType.Oracle
                    'myCommand = New Oracle.DataAccess.Client.OracleCommand
                    'myCommand.CommandType = CommandType
                    'myCommand.CommandText = CommandText
                    'myConnection = New Oracle.DataAccess.Client.OracleConnection(ConStr)
                    'AddParamaters(CurDBType, InDataTab, myCommand, NumberOfRefCur)
            End Select

            Try
                myConnection.Open()
                myCommand.Connection = myConnection
                reader = myCommand.ExecuteReader
                If Not IsNothing(reader) Then
                    Dim c As Integer
                    Dim DataTab As Data.DataTable
                    DataTab = New Data.DataTable
                    For c = 0 To reader.FieldCount - 1
                        DataTab.Columns.Add(reader.GetName(c), reader.GetFieldType(c))
                    Next
                    Do While reader.Read
                        myRow = DataTab.NewRow()
                        For c = 0 To reader.FieldCount - 1
                            myRow(c) = reader.GetValue(c)
                        Next
                        DataTab.Rows.Add(myRow)
                    Loop
                    OutDataSet.Tables.Add(DataTab)
                    Do While reader.NextResult
                        DataTab = New Data.DataTable
                        For c = 0 To reader.FieldCount - 1
                            DataTab.Columns.Add(reader.GetName(c), reader.GetFieldType(c))
                        Next
                        Do While reader.Read
                            myRow = DataTab.NewRow()
                            For c = 0 To reader.FieldCount - 1
                                myRow(c) = reader.GetValue(c)
                            Next
                            DataTab.Rows.Add(myRow)
                        Loop
                        OutDataSet.Tables.Add(DataTab)
                    Loop
                End If
                myConnection.Close()
            Catch ex As Exception
                ExceptionMsg = ex.ToString
                ExceptionNo = 3
            Finally
                If Not IsNothing(myConnection) Then
                    myConnection.Close()
                    myCommand.Dispose()
                End If
            End Try
        End Sub
        ' This function is desinged for only return param values, not for record sets
        Public Sub ExtReadData(ByVal CurDBType As Integer, ByVal ConStr As String, ByVal CommandType As System.Data.CommandType, ByVal CommandText As String, ByRef InDataTab As System.Data.DataTable, ByVal NumberOfRefCur As Integer, ByRef OutParamData As System.Data.DataTable)
            ExceptionMsg = ""
            ExceptionNo = 0

            Dim myRow As Data.DataRow
            Dim r As Integer
            Dim myCommand As Object
            Dim myConnection As Object
            Dim myParam As Object
            Dim Prefix As String = SQLParamPrefix
            Select Case CurDBType

                Case DBSrcType.MSSQL
                    Prefix = SQLParamPrefix
                    myCommand = New Data.SqlClient.SqlCommand
                    myCommand.CommandType = CommandType
                    myCommand.CommandText = CommandText
                    myConnection = New SqlConnection(ConStr)
                    AddParamaters(CurDBType, InDataTab, myCommand)
                Case DBSrcType.Oracle
                    'Prefix = OracleParamPrefix
                    'myCommand = New Oracle.DataAccess.Client.OracleCommand
                    'myCommand.CommandType = CommandType
                    'myCommand.CommandText = CommandText
                    'myConnection = New Oracle.DataAccess.Client.OracleConnection(ConStr)
                    'AddParamaters(CurDBType, InDataTab, myCommand, NumberOfRefCur)
            End Select
            Try
                myConnection.Open()
                myCommand.Connection = myConnection
                myCommand.ExecuteNonQuery()
                For r = 0 To OutParamData.Rows.Count - 1
                    myRow = OutParamData.Rows(r)
                    myParam = myCommand.Parameters(Prefix & myRow("ParameterName"))
                    myRow("ReturnValue") = myParam.Value.ToString
                Next
                myConnection.Close()
            Catch ex As Exception
            Finally
                If Not IsNothing(myConnection) Then
                    myConnection.Close()
                    myCommand.Dispose()
                End If
            End Try
        End Sub

        Public Sub ExtReadListData(ByVal CurDBType As Integer, ByVal ConStr As String, ByVal CommandType As System.Data.CommandType, ByRef CommandText As String, ByRef InDataTab As System.Data.DataTable, ByVal NumberOfRefCur As Integer, ByRef OutDataSet As System.Data.DataSet, ByVal PageNo As Integer, ByVal PageSize As Integer)
            ExceptionMsg = ""
            ExceptionNo = 0

            Dim AbsPsoition As Integer
            Dim PageStartPos As Integer
            Dim PageEndPos As Integer
            AbsPsoition = 0
            If PageNo < 1 Then PageNo = 1
            If PageSize < 1 Then PageSize = 1
            PageStartPos = (PageNo - 1) * (PageSize)
            PageEndPos = PageNo * PageSize
            Dim myRow As Data.DataRow
            Dim reader As IDataReader
            Dim myCommand As Object
            Dim myConnection As Object
            Try
                Select Case CurDBType

                    Case DBSrcType.MSSQL
                        myCommand = New Data.SqlClient.SqlCommand
                        myCommand.CommandType = CommandType
                        myCommand.CommandText = CommandText
                        myConnection = New Data.SqlClient.SqlConnection(ConStr)
                        AddParamaters(CurDBType, InDataTab, myCommand)
                    Case DBSrcType.Oracle
                        'myCommand = New Oracle.DataAccess.Client.OracleCommand
                        'myCommand.CommandType = CommandType
                        'myCommand.CommandText = CommandText
                        'myConnection = New Oracle.DataAccess.Client.OracleConnection(ConStr)
                        'AddParamaters(CurDBType, InDataTab, myCommand, NumberOfRefCur)

                End Select


                myConnection.Open()
                myCommand.Connection = myConnection
                reader = myCommand.ExecuteReader
                If Not IsNothing(reader) Then
                    Dim c As Integer
                    Dim DataTab As Data.DataTable
                    DataTab = New Data.DataTable
                    For c = 0 To reader.FieldCount - 1
                        DataTab.Columns.Add(reader.GetName(c), reader.GetFieldType(c))
                    Next
                    DataTab.Columns.Add("CALSNO", GetType(Integer))
                    If PageNo > 1 Then
                        Do While (AbsPsoition < PageStartPos)
                            If Not reader.Read Then Exit Do
                            AbsPsoition = AbsPsoition + 1
                        Loop
                    End If


                    Do While (AbsPsoition < PageEndPos)
                        If Not reader.Read Then Exit Do
                        AbsPsoition = AbsPsoition + 1

                        myRow = DataTab.NewRow()
                        For c = 0 To reader.FieldCount - 1
                            myRow(c) = reader.GetValue(c)
                        Next
                        myRow("CALSNO") = AbsPsoition
                        DataTab.Rows.Add(myRow)
                    Loop
                    OutDataSet.Tables.Add(DataTab)
                    Do While reader.Read
                        AbsPsoition = AbsPsoition + 1
                    Loop
                    DataTab = New Data.DataTable
                    DataTab.Columns.Add("TotalRecords", GetType(Integer))
                    myRow = DataTab.NewRow()
                    myRow(0) = AbsPsoition
                    DataTab.Rows.Add(myRow)
                    OutDataSet.Tables.Add(DataTab)

                End If
                myConnection.Close()
            Catch ex As Exception
                ExceptionMsg = ex.ToString
                ExceptionNo = 3
            Finally
                If Not IsNothing(myConnection) Then
                    myConnection.Close()
                    myCommand.Dispose()
                End If
            End Try

        End Sub
        Public Sub EsignerData(ByVal EsignerLogin As String, ByRef GetKeyFeilds As KeyFeildStruct)

        End Sub


    End Class
End Namespace
