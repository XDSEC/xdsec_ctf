VERSION 5.00
Begin VB.Form frmClipBoard 
   BackColor       =   &H00C0C0C0&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   " Enigma Smart Clipboard"
   ClientHeight    =   5025
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   8175
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5025
   ScaleWidth      =   8175
   StartUpPosition =   1  'CenterOwner
   Begin VB.CommandButton cmdApply 
      Caption         =   "Apply &New Format"
      Height          =   375
      Left            =   120
      TabIndex        =   12
      Top             =   4560
      Width           =   3135
   End
   Begin VB.TextBox txtFormat 
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   4215
      Left            =   3360
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   13
      Top             =   240
      Width           =   4695
   End
   Begin VB.Frame Frame2 
      BackColor       =   &H00C0C0C0&
      Caption         =   "Source"
      Height          =   1095
      Left            =   120
      TabIndex        =   17
      Top             =   120
      Width           =   3135
      Begin VB.OptionButton optOutput 
         BackColor       =   &H00C0C0C0&
         Caption         =   "&Enigma Output"
         Height          =   255
         Left            =   360
         TabIndex        =   0
         Top             =   360
         Width           =   2415
      End
      Begin VB.OptionButton optInput 
         BackColor       =   &H00C0C0C0&
         Caption         =   "Typed &Input"
         Height          =   255
         Left            =   360
         TabIndex        =   1
         Top             =   650
         Width           =   2415
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0C0C0&
      Caption         =   "Format"
      Height          =   3135
      Left            =   120
      TabIndex        =   16
      Top             =   1320
      Width           =   3135
      Begin VB.TextBox txtLF 
         Alignment       =   2  'Center
         BackColor       =   &H00FFFFFF&
         Height          =   285
         Left            =   2280
         MaxLength       =   2
         TabIndex        =   4
         Text            =   "5"
         Top             =   720
         Width           =   375
      End
      Begin VB.CheckBox chkConvert 
         BackColor       =   &H00C0C0C0&
         Caption         =   "Convert &Abbreviations"
         Enabled         =   0   'False
         Height          =   255
         Left            =   360
         TabIndex        =   5
         Top             =   1080
         Width           =   2415
      End
      Begin VB.CheckBox chkAbrev 
         BackColor       =   &H00C0C0C0&
         Caption         =   "KK = Parenthesis"
         Enabled         =   0   'False
         Height          =   255
         Index           =   5
         Left            =   720
         TabIndex        =   11
         Top             =   2640
         Value           =   1  'Checked
         Width           =   2055
      End
      Begin VB.CheckBox chkAbrev 
         BackColor       =   &H00C0C0C0&
         Caption         =   "YY = Dash/Hypen/Slant"
         Enabled         =   0   'False
         Height          =   255
         Index           =   4
         Left            =   720
         TabIndex        =   10
         Top             =   2400
         Value           =   1  'Checked
         Width           =   2175
      End
      Begin VB.CheckBox chkAbrev 
         BackColor       =   &H00C0C0C0&
         Caption         =   "XX = Colon"
         Enabled         =   0   'False
         Height          =   255
         Index           =   3
         Left            =   720
         TabIndex        =   9
         Top             =   2160
         Value           =   1  'Checked
         Width           =   1935
      End
      Begin VB.CheckBox chkAbrev 
         BackColor       =   &H00C0C0C0&
         Caption         =   "UD = Question Mark"
         Enabled         =   0   'False
         Height          =   255
         Index           =   2
         Left            =   720
         TabIndex        =   8
         Top             =   1920
         Value           =   1  'Checked
         Width           =   2175
      End
      Begin VB.CheckBox chkAbrev 
         BackColor       =   &H00C0C0C0&
         Caption         =   "Y = Comma"
         Enabled         =   0   'False
         Height          =   255
         Index           =   1
         Left            =   720
         TabIndex        =   7
         Top             =   1680
         Value           =   1  'Checked
         Width           =   2055
      End
      Begin VB.CheckBox chkGroups 
         BackColor       =   &H00C0C0C0&
         Caption         =   "Copy as &Groups"
         Height          =   255
         Left            =   360
         TabIndex        =   2
         Top             =   360
         Width           =   2535
      End
      Begin VB.CheckBox chkAbrev 
         BackColor       =   &H00C0C0C0&
         Caption         =   "X = Period"
         Enabled         =   0   'False
         Height          =   255
         Index           =   0
         Left            =   720
         TabIndex        =   6
         Top             =   1440
         Value           =   1  'Checked
         Width           =   1935
      End
      Begin VB.CheckBox chkLF 
         BackColor       =   &H00C0C0C0&
         Caption         =   "Groups per &Line"
         Height          =   255
         Left            =   720
         TabIndex        =   3
         Top             =   720
         Width           =   1575
      End
   End
   Begin VB.CommandButton cmdOK 
      BackColor       =   &H00C0C0C0&
      Caption         =   "&To Clipboard"
      Height          =   375
      Left            =   5520
      TabIndex        =   14
      Top             =   4560
      Width           =   1215
   End
   Begin VB.CommandButton cmdCancel 
      BackColor       =   &H00C0C0C0&
      Cancel          =   -1  'True
      Caption         =   "&Close"
      Height          =   375
      Left            =   6840
      TabIndex        =   15
      Top             =   4560
      Width           =   1215
   End
End
Attribute VB_Name = "frmClipBoard"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private strClipText As String

Private Sub chkConvert_Click()
Dim k As Integer
For k = 0 To 5
    If Me.chkConvert.Value = 1 Then
        Me.chkAbrev(k).Enabled = True
        Else
        Me.chkAbrev(k).Enabled = False
    End If
Next k
End Sub

Private Sub chkGroups_Click()
Dim k As Integer
If Me.chkGroups.Value = 0 Then
    Me.chkConvert.Enabled = True
    For k = 0 To 5
        If Me.chkConvert.Value = 1 Then
            Me.chkAbrev(k).Enabled = True
            Else
            Me.chkAbrev(k).Enabled = False
        End If
    Next k
    Me.chkLF.Enabled = False
    Me.txtLF.Enabled = False
    Me.txtLF.BackColor = &HC0C0C0
    Else
    Me.chkConvert.Enabled = False
    For k = 0 To 5
        Me.chkAbrev(k).Enabled = False
    Next k
    Me.chkLF.Enabled = True
    If Me.chkLF.Value = 0 Then
        Me.txtLF.Enabled = False
        Me.txtLF.BackColor = &HC0C0C0
        Else
        Me.txtLF.Enabled = True
        Me.txtLF.BackColor = &HFFFFFF
        End If
    End If
End Sub

Private Sub chkLF_Click()
If Me.chkLF.Value = 0 Then
    Me.txtLF.Enabled = False
    Me.txtLF.BackColor = &HC0C0C0
    Else
    Me.txtLF.Enabled = True
    Me.txtLF.BackColor = &HFFFFFF
    End If
End Sub

Private Sub cmdApply_Click()
Call ApplyFormat
Me.txtFormat.Text = strClipText
End Sub

Private Sub Form_Activate()
Me.cmdOK.SetFocus
Call ApplyFormat
Me.txtFormat.Text = strClipText
End Sub

Private Sub Form_Load()
Me.optOutput.Value = True
Me.chkGroups.Value = 1
End Sub

Private Sub cmdCancel_Click()
Me.Hide
End Sub

Private Sub cmdOK_Click()
On Error Resume Next
Clipboard.SetText Me.txtFormat.Text
Me.Hide
End Sub

Private Sub ApplyFormat()
'apply new format
Dim strTmp As String
Dim k As Long
Dim strAbr1 As String
Dim strAbr2 As String
Dim blnParent1 As Boolean
Dim lfCount As Long
On Error Resume Next
If gstrClipInput = "" Then Exit Sub
Screen.MousePointer = 11
'check wath to copy
If Me.optInput.Value = True Then
    'copy input
    strClipText = gstrClipInput
    Else
    'copy output
    strClipText = gstrClipOutput
    End If
'check format
If Me.chkGroups.Value = 0 Then
    'no groups, delete spaces
    strTmp = ""
    For k = 1 To Len(strClipText)
        If Mid(strClipText, k, 1) <> " " Then strTmp = strTmp & Mid(strClipText, k, 1)
    Next k
    strClipText = strTmp
    strTmp = ""
    If Me.chkConvert.Value = 1 Then
        'replace abbreviations
        For k = 1 To Len(strClipText)
            strAbr1 = Mid(strClipText, k, 1)
            strAbr2 = Mid(strClipText, k, 2)
            'check double abbrev
            If strAbr2 = "UD" And Me.chkAbrev(2).Value = 1 Then
                strTmp = strTmp & "?": k = k + 1
            ElseIf strAbr2 = "XX" And Me.chkAbrev(3).Value = 1 Then
                strTmp = strTmp & ":": k = k + 1
            ElseIf strAbr2 = "YY" And Me.chkAbrev(4).Value = 1 Then
                strTmp = strTmp & "/": k = k + 1
            ElseIf strAbr2 = "KK" And Me.chkAbrev(5).Value = 1 Then
                blnParent1 = Not blnParent1
                If blnParent1 = True Then
                    strTmp = strTmp & "(": k = k + 1
                    Else
                    strTmp = strTmp & ")": k = k + 1
                    End If
            'check single abbrev
            ElseIf strAbr1 = "X" And Me.chkAbrev(0).Value = 1 Then
                strTmp = strTmp & "."
            ElseIf strAbr1 = "Y" And Me.chkAbrev(1).Value = 1 Then
                strTmp = strTmp & ","
            Else
            strTmp = strTmp & Mid(strClipText, k, 1)
            End If
        Next k
        strClipText = strTmp
        strTmp = ""
    End If
    Else
    'show in groups
    If Me.chkLF.Value = 1 And Val(Me.txtLF.Text) > 1 Then
        'insert line feeds
        lfCount = 0
        For k = 1 To Len(strClipText)
            If Mid(strClipText, k, 1) = " " Then lfCount = lfCount + 1
            If lfCount = Val(Me.txtLF.Text) Then
                lfCount = 0
                strTmp = strTmp & vbCrLf
                Else
                strTmp = strTmp & Mid(strClipText, k, 1)
                End If
        Next k
        strClipText = strTmp
        strTmp = ""
    End If
End If
Screen.MousePointer = 0
End Sub

Private Sub txtLF_KeyPress(KeyAscii As Integer)
'limit input groups to figures
Select Case KeyAscii
Case 8, 9
    Exit Sub
Case Is < 48, Is > 57
    KeyAscii = 0
End Select
End Sub

Private Sub txtLF_GotFocus()
Me.txtLF.SelStart = 0
Me.txtLF.SelLength = Len(Me.txtLF.Text)
End Sub




