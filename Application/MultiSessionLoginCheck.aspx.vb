Imports System.Drawing
Partial Public Class MultiSessionLoginCheck
    Inherits System.Web.UI.Page

#Region "Declerations"
    Public SessionDic As New Dictionary(Of Integer, ArrayList)
    Public SessionIddate As ArrayList
    Public Tr As TableRow
    Public Tc As TableCell
    Public FirstLogin As Integer
#End Region

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Response.Expires = 0
        SessionDic = Application("SessionDic")
        yes.Attributes("onClick") = "javascript:winclose(1);"
        no.Attributes("onClick") = "javascript:winclose(0);"
        Ok.Attributes("onClick") = "javascript:winclose(0);"
        yes.Visible = False
        no.Visible = False
        Ok.Visible = False
        FirstLogin = Request.QueryString("FirstLogin")
        Try

       
            If Not Page.IsPostBack Then


                If FirstLogin = 0 Then
                    Tr = New TableRow
                    Tc = New TableCell
                    Tc.CssClass = "MainTD"
                    Tc.Font.Bold = True
                    Tc.ForeColor = Color.IndianRed
                    Tc.Text = "You are Currently Logged In From System -"
                    Tr.Controls.Add(Tc)

                    Tc = New TableCell
                    Tc.CssClass = "MainTD"
                    Tc.Font.Bold = True
                    Tc.Text = SessionDic.Item(Session("UserID"))(2).ToString
                    Tr.Controls.Add(Tc)
                    LoinDetTable.Controls.Add(Tr)


                    Tr = New TableRow
                    Tc = New TableCell
                    Tc.CssClass = "MainTD"
                    Tc.Font.Bold = True
                    Tc.ForeColor = Color.IndianRed
                    Tc.Text = "You are Currently Logged In Session Time -"
                    Tr.Controls.Add(Tc)


                    Tc = New TableCell
                    Tc.Font.Bold = True
                    Tc.Text = SessionDic.Item(Session("UserID"))(1).ToString
                    Tr.Controls.Add(Tc)
                    Tc.CssClass = "MainTD"
                    LoinDetTable.Controls.Add(Tr)

                    MainFootTd.Text = "Do You Want To Logout Of Earlier Sessions"


                    yes.Visible = True
                    no.Visible = True
                    Ok.Visible = False

                Else

                    Tr = New TableRow
                    Tc = New TableCell
                    Tc.CssClass = "MainTD"
                    Tc.Font.Bold = True
                    Tc.ForeColor = Color.IndianRed
                    Tc.Text = "You are Currently Logged In From System -"
                    Tr.Controls.Add(Tc)

                    Tc = New TableCell
                    Tc.CssClass = "MainTD"
                    Tc.Font.Bold = True
                    Tc.Text = SessionDic.Item(Session("UserID"))(2).ToString
                    Tr.Controls.Add(Tc)
                    LoinDetTable.Controls.Add(Tr)


                    Tr = New TableRow
                    Tc = New TableCell
                    Tc.CssClass = "MainTD"
                    Tc.Font.Bold = True
                    Tc.ForeColor = Color.IndianRed
                    Tc.Text = "You are Currently Logged In Session Time -"
                    Tr.Controls.Add(Tc)


                    Tc = New TableCell
                    Tc.Font.Bold = True
                    Tc.Text = SessionDic.Item(Session("UserID"))(1).ToString
                    Tr.Controls.Add(Tc)
                    Tc.CssClass = "MainTD"
                    LoinDetTable.Controls.Add(Tr)

                    MainFootTd.Text = "You Are Already Logged In From A Different System, Logout Of Present Session & Login Again"
                    AllBtnDisablingTxt.Text = 1
                    yes.Visible = False
                    no.Visible = False
                    Ok.Visible = True
                End If

            End If
        Catch ex As Exception

        End Try

    End Sub

    Private Sub yes_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles yes.Click
        SessionDic = Application("SessionDic")
        If SessionDic.ContainsKey(Session("UserID")) Then
            SessionIddate = New ArrayList
            SessionIddate.Add(Session.SessionID)
            SessionIddate.Add(DateTime.Now)
            SessionIddate.Add(Request.ServerVariables("REMOTE_ADDR"))
            If Request.Url.Segments(2) <> "MultiSessionLoginCheck.aspx" Then
                SessionIddate.Add(Request.Url.Segments(2))
            Else
                SessionIddate.Add(Session("PathHistory"))
            End If
            SessionIddate.Add(1)
            SessionIddate.Add(0)
            SessionDic.Remove(Session("UserID"))
            SessionDic.Add(Session("UserID"), SessionIddate)
            Application("SessionDic") = SessionDic
            Response.Redirect(SessionIddate(3))
        Else
            SessionIddate = New ArrayList
            SessionIddate.Add(Session.SessionID)
            SessionIddate.Add(DateTime.Now)
            SessionIddate.Add(Request.ServerVariables("REMOTE_ADDR"))
            SessionIddate.Add(Session("PathHistory"))
            SessionIddate.Add(1)
            SessionIddate.Add(0)
            SessionDic.Add(Session("UserID"), SessionIddate)
            Application("SessionDic") = SessionDic
            Response.Redirect(SessionIddate(3))


        End If

    End Sub

    Private Sub No_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles no.Click
        Session.Abandon()
    End Sub

    Private Sub Ok_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Ok.Click
        Try
            SessionDic = Application("SessionDic")
            If SessionDic.ContainsKey(Session("UserID")) Then
                If SessionDic.Item(Session("UserID"))(5) = 1 Then
                    SessionDic.Remove(Session("UserID"))
                    Application("SessionDic") = SessionDic
                    Session("UserID") = ""
                    Session("Ok") = 0
                Else
                    SessionDic.Item(Session("UserID"))(4) = 0
                    Application("SessionDic") = SessionDic
                End If
            End If

            Session.Abandon()
        Catch ex As Exception

        End Try
    End Sub
End Class