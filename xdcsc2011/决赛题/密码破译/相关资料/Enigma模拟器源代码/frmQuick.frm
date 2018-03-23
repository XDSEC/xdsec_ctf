VERSION 5.00
Begin VB.Form frmQuick 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   " Enigma Auto Typing"
   ClientHeight    =   5130
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   6975
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5130
   ScaleWidth      =   6975
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  'CenterOwner
   Begin VB.ComboBox cmbSpeed 
      Height          =   315
      ItemData        =   "frmQuick.frx":0000
      Left            =   120
      List            =   "frmQuick.frx":0002
      Style           =   2  'Dropdown List
      TabIndex        =   1
      Top             =   4680
      Width           =   1095
   End
   Begin VB.TextBox txtQuick 
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
      Height          =   4095
      Left            =   120
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   0
      Top             =   480
      Width           =   6735
   End
   Begin VB.CommandButton cmdClose 
      Cancel          =   -1  'True
      Caption         =   "&Close"
      Height          =   375
      Left            =   5640
      TabIndex        =   4
      Top             =   4680
      Width           =   1215
   End
   Begin VB.CommandButton cmdClipBoard 
      Caption         =   "&Get Clipboard"
      Height          =   375
      Left            =   3000
      TabIndex        =   2
      Top             =   4680
      Width           =   1215
   End
   Begin VB.CommandButton cmdStart 
      Caption         =   "&Start"
      Height          =   375
      Left            =   4320
      TabIndex        =   3
      Top             =   4680
      Width           =   1215
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "The Enigma machine will only encode or decode alphabet characters and ignore all others !"
      ForeColor       =   &H00000000&
      Height          =   375
      Left            =   120
      TabIndex        =   5
      Top             =   120
      Width           =   6735
   End
End
Attribute VB_Name = "frmQuick"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private blnQuickChanged As Boolean

Private Sub cmdClipBoard_Click()
'copy clipboard to textbox
Dim rtv As Integer
If blnQuickChanged = True Then
    rtv = MsgBox("Do You want to delete the current text?", vbYesNo + vbQuestion, " Get Clipboard")
    If rtv = vbNo Then Exit Sub
    End If
On Error Resume Next
Me.txtQuick.Text = Clipboard.GetText
End Sub

Private Sub cmdClose_Click()
Me.Hide
End Sub

Private Sub Form_Activate()
Me.cmdStart.SetFocus
End Sub

Private Sub Form_Load()
'init combo box speeds
Me.cmbSpeed.AddItem "Slow"
Me.cmbSpeed.AddItem "Normal"
Me.cmbSpeed.AddItem "Fast"
Me.cmbSpeed.AddItem "Very Fast"
Me.cmbSpeed.ListIndex = 2
End Sub

Private Sub txtQuick_Change()
blnQuickChanged = True
End Sub

Private Sub cmdStart_Click()
'sstart coding/decoding the tet
Dim tmpQuick As String
Dim tmpchar As Integer
Dim i As Long
'select process speed
Select Case Me.cmbSpeed.Text
Case "Slow"
    frmMain.Timer2.Interval = 4000
Case "Normal"
    frmMain.Timer2.Interval = 300
Case "Fast"
    frmMain.Timer2.Interval = 50
Case "Very Fast"
    frmMain.Timer2.Interval = 2
End Select
'delet all but alphabet
tmpQuick = Me.txtQuick.Text
Screen.MousePointer = 11
gstrQuickString = ""
'clear all chars non alphabet
For i = 1 To Len(tmpQuick)
    tmpchar = Asc(UCase(Mid(tmpQuick, i, 1))) - 64
    If tmpchar > 0 And tmpchar < 27 Then
        gstrQuickString = gstrQuickString & UCase(Mid(tmpQuick, i, 1))
    End If
Next i
Screen.MousePointer = 0
If gstrQuickString = "" Then Exit Sub
'delete text in textbox
frmMain.lblInput.Caption = ""
frmMain.lblOutput.Caption = ""
gstrClipInput = ""
gstrClipOutput = ""
groupsCount = 1
'start auto typing timer
frmMain.Timer2.Enabled = True
Me.Hide
End Sub


