VERSION 5.00
Begin VB.Form frmGallerie 
   BorderStyle     =   0  'None
   Caption         =   "ENIGMA Pictures"
   ClientHeight    =   6120
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   7080
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   6120
   ScaleWidth      =   7080
   StartUpPosition =   1  'CenterOwner
   Begin VB.FileListBox File1 
      Height          =   1608
      Left            =   600
      Pattern         =   "*eni.jpg"
      TabIndex        =   0
      Top             =   840
      Visible         =   0   'False
      Width           =   1575
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "No pictures found"
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   15.6
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   615
      Left            =   960
      TabIndex        =   1
      Top             =   2760
      Width           =   4935
   End
   Begin VB.Image imgPic 
      Height          =   4900
      Left            =   390
      Stretch         =   -1  'True
      Top             =   435
      Width           =   6260
   End
   Begin VB.Image picTitleBar 
      Height          =   255
      Left            =   0
      MousePointer    =   15  'Size All
      Top             =   0
      Width           =   7095
   End
   Begin VB.Image button 
      Height          =   375
      Index           =   3
      Left            =   360
      MouseIcon       =   "frmGallerie.frx":0000
      MousePointer    =   99  'Custom
      ToolTipText     =   " Previous "
      Top             =   5400
      Width           =   375
   End
   Begin VB.Image button 
      Height          =   375
      Index           =   2
      Left            =   1080
      MouseIcon       =   "frmGallerie.frx":030A
      MousePointer    =   99  'Custom
      ToolTipText     =   " Next "
      Top             =   5400
      Width           =   375
   End
   Begin VB.Image button 
      Height          =   375
      Index           =   1
      Left            =   6240
      MouseIcon       =   "frmGallerie.frx":0614
      MousePointer    =   99  'Custom
      ToolTipText     =   " Close Gallery "
      Top             =   5400
      Width           =   375
   End
   Begin VB.Image imgGallerieBack 
      Height          =   6132
      Left            =   0
      Picture         =   "frmGallerie.frx":091E
      Stretch         =   -1  'True
      Top             =   0
      Width           =   7092
   End
End
Attribute VB_Name = "frmGallerie"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

' COPYRIGHT NOTICE
' Pictures in gallery Copyright by:
'   (c) KMi, The Open University, 2000
'   (c) Tom Perera - Enigma Museum www.w1tp.com/enigma
Private bMoveFrom As Boolean
Private currPic As Integer
Private PicPath As String

Private Sub Form_Activate()
On Error Resume Next
'load all images into filelist
PicPath = App.Path
If Right(PicPath, 1) <> "\" Then PicPath = PicPath & "\"
If Me.File1.ListCount = 0 Then
    Me.Label1.Visible = True
    Exit Sub
    Else
    Me.Label1.Visible = False
    End If
If currPic = 0 Then currPic = 1
'show first pic
Me.imgPic.Picture = LoadPicture(PicPath & Me.File1.List(currPic - 1))
Me.imgPic.Refresh
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
'check for keyboard pressing
Select Case KeyCode
Case 27
    Call button_Click(1)
Case 37
    Call button_Click(3)
Case 39
    Call button_Click(2)
Case Else
    Call button_Click(2)
End Select
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
    'mouse not down, than exit
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

Private Sub button_Click(Index As Integer)
'check the buttons
Call ButtonSound
On Error Resume Next
Select Case Index
Case 1
    Me.Hide
Case 2
    'get next picture from filelist
    currPic = currPic + 1
    If currPic > Me.File1.ListCount Then currPic = 1
    Me.imgPic.Picture = LoadPicture(PicPath & Me.File1.List(currPic - 1))
    Me.imgPic.Refresh
Case 3
    'get previous picture from filelist
    currPic = currPic - 1
    If currPic < 1 Then currPic = Me.File1.ListCount
    Me.imgPic.Picture = LoadPicture(PicPath & Me.File1.List(currPic - 1))
    Me.imgPic.Refresh
End Select
End Sub

