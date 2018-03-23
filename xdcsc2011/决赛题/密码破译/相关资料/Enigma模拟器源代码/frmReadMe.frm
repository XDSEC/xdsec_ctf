VERSION 5.00
Begin VB.Form frmReadMe 
   Caption         =   " Enigma ReadMe"
   ClientHeight    =   5700
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7800
   Icon            =   "frmReadMe.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   5700
   ScaleWidth      =   7800
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox txtReadMe 
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   5655
      Left            =   0
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      ScrollBars      =   3  'Both
      TabIndex        =   0
      Top             =   0
      Width           =   7815
   End
End
Attribute VB_Name = "frmReadMe"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Form_Load()
Dim strReadme As String
Dim fileo As Integer
On Error Resume Next
fileo = FreeFile
Open App.Path & "\ReadMe.txt" For Input As #fileo
strReadme = Input(LOF(fileo), 1)
Close #fileo
Me.txtReadMe.Text = strReadme
Err.Clear
End Sub

Private Sub Form_Resize()
If Me.WindowState <> vbMinimized Then
    Me.txtReadMe.Width = Me.Width - 100
    Me.txtReadMe.Height = Me.Height - 400
    End If
End Sub
