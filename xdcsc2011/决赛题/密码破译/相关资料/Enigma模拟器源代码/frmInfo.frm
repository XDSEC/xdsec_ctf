VERSION 5.00
Begin VB.Form frmInfo 
   BorderStyle     =   0  'None
   Caption         =   " Enigma Info"
   ClientHeight    =   4005
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   5370
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4005
   ScaleWidth      =   5370
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  'CenterOwner
   Begin VB.Timer Timer1 
      Interval        =   50
      Left            =   3360
      Top             =   3360
   End
   Begin VB.PictureBox picScroll 
      BackColor       =   &H00404040&
      BorderStyle     =   0  'None
      Height          =   2775
      Left            =   390
      ScaleHeight     =   2775
      ScaleWidth      =   4575
      TabIndex        =   0
      Top             =   430
      Width           =   4575
      Begin VB.TextBox txtscroll1 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H00404040&
         BorderStyle     =   0  'None
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   375
         Left            =   0
         Locked          =   -1  'True
         MousePointer    =   1  'Arrow
         MultiLine       =   -1  'True
         TabIndex        =   2
         TabStop         =   0   'False
         Text            =   "frmInfo.frx":0000
         Top             =   240
         Width           =   4575
      End
      Begin VB.TextBox txtScroll2 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H00404040&
         BorderStyle     =   0  'None
         ForeColor       =   &H00FFFFFF&
         Height          =   11055
         Left            =   360
         Locked          =   -1  'True
         MousePointer    =   1  'Arrow
         MultiLine       =   -1  'True
         TabIndex        =   1
         TabStop         =   0   'False
         Text            =   "frmInfo.frx":0018
         ToolTipText     =   " Click here to copy this information to the clipboard "
         Top             =   720
         Width           =   3855
      End
   End
   Begin VB.Image picTitleBar 
      Height          =   255
      Left            =   0
      MousePointer    =   15  'Size All
      Top             =   0
      Width           =   5415
   End
   Begin VB.Image Image1 
      Height          =   375
      Left            =   4455
      MouseIcon       =   "frmInfo.frx":001E
      MousePointer    =   99  'Custom
      Top             =   3360
      Width           =   375
   End
   Begin VB.Image Image2 
      Height          =   4005
      Left            =   0
      Picture         =   "frmInfo.frx":0328
      Stretch         =   -1  'True
      Top             =   0
      Width           =   5370
   End
End
Attribute VB_Name = "frmInfo"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private bMoveFrom As Boolean

Private Sub Form_Activate()
Me.Timer1.Enabled = True
Me.txtscroll1.Top = 2800
Me.txtScroll2.Top = Me.txtscroll1.Top + 400
End Sub

Private Sub Form_Load()
Dim tmp As String

tmp = "© D. Rijmenants 2004"
tmp = tmp & vbCrLf
tmp = tmp & vbCrLf
tmp = tmp & "Encode and decode messages with the original German Enigma cipher machine" & vbCrLf
tmp = tmp & vbCrLf
tmp = tmp & "Operate the 3-rotor model from the Wehrmacht and Luftwaffe or the famous 4-rotor M4 from the Kriegsmarine, both used during WorldWar II" & vbCrLf
tmp = tmp & vbCrLf
tmp = tmp & "Fully compatible with the real Enigma. " & vbCrLf
tmp = tmp & vbCrLf
tmp = tmp & vbCrLf
tmp = tmp & "Programming and graphics" & vbCrLf
tmp = tmp & vbCrLf
tmp = tmp & "Dirk Rijmenants" & vbCrLf
tmp = tmp & vbCrLf
tmp = tmp & vbCrLf
tmp = tmp & "Special thanks to" & vbCrLf
tmp = tmp & vbCrLf
tmp = tmp & "Tom Perera" & vbCrLf
tmp = tmp & "W1TP Telegraph & Scientific Instrument Museum" & vbCrLf
tmp = tmp & "www.w1tp.com" & vbCrLf
tmp = tmp & vbCrLf
tmp = tmp & "and" & vbCrLf
tmp = tmp & vbCrLf
tmp = tmp & "Chris Valentine" & vbCrLf
tmp = tmp & "KMi The Open University" & vbCrLf
tmp = tmp & "http://cnm.open.ac.uk/projects/stationx/enigma" & vbCrLf
tmp = tmp & vbCrLf
tmp = tmp & "for using their photo's in the gallery" & vbCrLf
tmp = tmp & vbCrLf
tmp = tmp & vbCrLf
tmp = tmp & "Special thanks to" & vbCrLf
tmp = tmp & vbCrLf
tmp = tmp & "Frode Weierud" & vbCrLf
tmp = tmp & "Crypto Simulation Group" & vbCrLf
tmp = tmp & "http://frode.home.cern.ch/frode" & vbCrLf
tmp = tmp & vbCrLf
tmp = tmp & "for his advice, help with the translation and supplying the original message." & vbCrLf
tmp = tmp & vbCrLf
tmp = tmp & vbCrLf
tmp = tmp & "Copyright Info" & vbCrLf
tmp = tmp & vbCrLf
tmp = tmp & "This program is freeware." & vbCrLf
tmp = tmp & "It is stricktly forbidden to use this software or copies or parts of it for commercial purposes, or to sell, lease or make profit from this program by any means. " & vbCrLf
tmp = tmp & vbCrLf
tmp = tmp & "Press F1 for more information" & vbCrLf
tmp = tmp & vbCrLf
tmp = tmp & "Click here to copy this info to clipboard" & vbCrLf
tmp = tmp & vbCrLf
tmp = tmp & "© D. Rijmenants 2004" & vbCrLf
Me.txtScroll2.Text = tmp
End Sub

Private Sub picTitleBar_MouseDown(button As Integer, Shift As Integer, X As Single, Y As Single)
'get mouse movement
Dim POINT As POINTAPI
GetCursorPos POINT
LastPoint.X = POINT.X
LastPoint.Y = POINT.Y
bMoveFrom = True
End Sub

Private Sub picTitleBar_MouseMove(button As Integer, Shift As Integer, X As Single, Y As Single)
'move the form while mouse is down
Dim iDX As Long, iDY As Long
Dim POINT As POINTAPI
If Not bMoveFrom Then
    Exit Sub
    End If
GetCursorPos POINT
iDX& = (POINT.X - LastPoint.X) * iTPPX&
iDY& = (POINT.Y - LastPoint.Y) * iTPPY&
LastPoint.X = POINT.X
LastPoint.Y = POINT.Y
Me.Move Me.Left + iDX&, Me.Top + iDY&
End Sub

Private Sub picTitleBar_MouseUp(button As Integer, Shift As Integer, X As Single, Y As Single)
bMoveFrom = False
End Sub

Private Sub Image1_Click()
Call ButtonSound
Me.Timer1.Enabled = False
Me.Hide
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
Call ButtonSound
Me.Hide
End Sub

Private Sub txtScroll1_GotFocus()
    Me.SetFocus
End Sub

Private Sub txtScroll2_Click()
On Error Resume Next
Clipboard.SetText Me.txtScroll2.Text
End Sub

Private Sub txtScroll2_GotFocus()
    Me.SetFocus
End Sub

Private Sub Timer1_Timer()
If txtScroll2.Top + txtScroll2.Height < picScroll.Top Then
    txtScroll2.Top = picScroll.Height + 400
    txtscroll1.Top = txtScroll2.Top - 400
    Else
    txtScroll2.Top = txtScroll2.Top - 15
    txtscroll1.Top = txtScroll2.Top - 400
    End If
End Sub

