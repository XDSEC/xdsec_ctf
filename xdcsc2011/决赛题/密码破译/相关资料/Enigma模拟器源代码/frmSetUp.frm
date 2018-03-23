VERSION 5.00
Begin VB.Form frmSetUp 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   " ORIGINAL ENIGMA WEHRMACHT/LUFTWAFFE/KRIEGSMARINE 1939 - 1945"
   ClientHeight    =   3870
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   6990
   ControlBox      =   0   'False
   Icon            =   "frmSetUp.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3870
   ScaleWidth      =   6990
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  'CenterOwner
   Begin VB.Frame Frame3 
      Height          =   50
      Left            =   120
      TabIndex        =   35
      Top             =   3240
      Width           =   6735
   End
   Begin VB.CheckBox Check1 
      Caption         =   "&Show Textbox"
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   120
      TabIndex        =   25
      Top             =   2880
      Width           =   3135
   End
   Begin VB.Frame Frame1 
      Caption         =   "MODEL"
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   120
      TabIndex        =   33
      Top             =   2040
      Width           =   1455
      Begin VB.ComboBox cmbModel 
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   330
         Left            =   120
         Style           =   2  'Dropdown List
         TabIndex        =   11
         Top             =   240
         Width           =   1215
      End
   End
   Begin VB.Frame Frame2 
      Caption         =   "STECKER"
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   1680
      TabIndex        =   32
      Top             =   2040
      Width           =   5175
      Begin VB.TextBox Stecker 
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Index           =   13
         Left            =   4560
         MaxLength       =   2
         TabIndex        =   24
         Top             =   280
         Width           =   300
      End
      Begin VB.TextBox Stecker 
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Index           =   12
         Left            =   4200
         MaxLength       =   2
         TabIndex        =   23
         Top             =   280
         Width           =   300
      End
      Begin VB.TextBox Stecker 
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Index           =   11
         Left            =   3840
         MaxLength       =   2
         TabIndex        =   22
         Top             =   280
         Width           =   300
      End
      Begin VB.TextBox Stecker 
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Index           =   10
         Left            =   3480
         MaxLength       =   2
         TabIndex        =   21
         Top             =   280
         Width           =   300
      End
      Begin VB.TextBox Stecker 
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Index           =   9
         Left            =   3120
         MaxLength       =   2
         TabIndex        =   20
         Top             =   280
         Width           =   300
      End
      Begin VB.TextBox Stecker 
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Index           =   8
         Left            =   2760
         MaxLength       =   2
         TabIndex        =   19
         Top             =   280
         Width           =   300
      End
      Begin VB.TextBox Stecker 
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Index           =   7
         Left            =   2400
         MaxLength       =   2
         TabIndex        =   18
         Top             =   280
         Width           =   300
      End
      Begin VB.TextBox Stecker 
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Index           =   6
         Left            =   2040
         MaxLength       =   2
         TabIndex        =   17
         Top             =   280
         Width           =   300
      End
      Begin VB.TextBox Stecker 
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Index           =   5
         Left            =   1680
         MaxLength       =   2
         TabIndex        =   16
         Top             =   280
         Width           =   300
      End
      Begin VB.TextBox Stecker 
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Index           =   4
         Left            =   1320
         MaxLength       =   2
         TabIndex        =   15
         Top             =   280
         Width           =   300
      End
      Begin VB.TextBox Stecker 
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Index           =   3
         Left            =   960
         MaxLength       =   2
         TabIndex        =   14
         Top             =   280
         Width           =   300
      End
      Begin VB.TextBox Stecker 
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Index           =   2
         Left            =   600
         MaxLength       =   2
         TabIndex        =   13
         Top             =   280
         Width           =   300
      End
      Begin VB.TextBox Stecker 
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Index           =   1
         Left            =   240
         MaxLength       =   2
         TabIndex        =   12
         Top             =   280
         Width           =   300
      End
   End
   Begin VB.Frame framWalze 
      Caption         =   "UMKEHRWALZE"
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1815
      Index           =   5
      Left            =   120
      TabIndex        =   31
      Top             =   120
      Width           =   1455
      Begin VB.ComboBox cmbREFLECTOR 
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   330
         Left            =   120
         Style           =   2  'Dropdown List
         TabIndex        =   2
         Top             =   360
         Width           =   1225
      End
   End
   Begin VB.Frame framWalze 
      Caption         =   "WALZE(M4)"
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1815
      Index           =   4
      Left            =   1680
      TabIndex        =   30
      Top             =   120
      Width           =   1215
      Begin VB.VScrollBar RingSet 
         Height          =   855
         Index           =   4
         Left            =   840
         Max             =   26
         Min             =   1
         TabIndex        =   7
         Top             =   840
         Value           =   1
         Width           =   255
      End
      Begin VB.ComboBox cmbROT 
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   330
         Index           =   4
         Left            =   120
         Style           =   2  'Dropdown List
         TabIndex        =   3
         Top             =   360
         Width           =   975
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         Caption         =   "RING"
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   0
         Left            =   240
         TabIndex        =   37
         Top             =   840
         Width           =   495
      End
      Begin VB.Label lblRing 
         Alignment       =   1  'Right Justify
         Caption         =   "00"
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   4
         Left            =   240
         TabIndex        =   36
         Top             =   1080
         Width           =   495
      End
   End
   Begin VB.Frame framWalze 
      Caption         =   "WALZE 1"
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1815
      Index           =   3
      Left            =   3000
      TabIndex        =   29
      Top             =   120
      Width           =   1215
      Begin VB.VScrollBar RingSet 
         Height          =   855
         Index           =   3
         Left            =   840
         Max             =   26
         Min             =   1
         TabIndex        =   8
         Top             =   840
         Value           =   1
         Width           =   255
      End
      Begin VB.ComboBox cmbROT 
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   330
         Index           =   3
         Left            =   240
         Style           =   2  'Dropdown List
         TabIndex        =   4
         Top             =   360
         Width           =   855
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         Caption         =   "RING"
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   1
         Left            =   240
         TabIndex        =   39
         Top             =   840
         Width           =   495
      End
      Begin VB.Label lblRing 
         Alignment       =   1  'Right Justify
         Caption         =   "00"
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   3
         Left            =   240
         TabIndex        =   38
         Top             =   1080
         Width           =   495
      End
   End
   Begin VB.Frame framWalze 
      Caption         =   "WALZE 2"
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1815
      Index           =   2
      Left            =   4320
      TabIndex        =   28
      Top             =   120
      Width           =   1215
      Begin VB.VScrollBar RingSet 
         Height          =   855
         Index           =   2
         Left            =   840
         Max             =   26
         Min             =   1
         TabIndex        =   9
         Top             =   840
         Value           =   1
         Width           =   255
      End
      Begin VB.ComboBox cmbROT 
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   330
         Index           =   2
         Left            =   240
         Style           =   2  'Dropdown List
         TabIndex        =   5
         Top             =   360
         Width           =   855
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         Caption         =   "RING"
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   2
         Left            =   240
         TabIndex        =   41
         Top             =   840
         Width           =   495
      End
      Begin VB.Label lblRing 
         Alignment       =   1  'Right Justify
         Caption         =   "00"
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   2
         Left            =   240
         TabIndex        =   40
         Top             =   1080
         Width           =   495
      End
   End
   Begin VB.Frame framWalze 
      Caption         =   "WALZE 3"
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1815
      Index           =   1
      Left            =   5640
      TabIndex        =   27
      Top             =   120
      Width           =   1215
      Begin VB.VScrollBar RingSet 
         Height          =   855
         Index           =   1
         Left            =   840
         Max             =   26
         Min             =   1
         TabIndex        =   10
         Top             =   840
         Value           =   1
         Width           =   255
      End
      Begin VB.ComboBox cmbROT 
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   330
         Index           =   1
         Left            =   240
         Style           =   2  'Dropdown List
         TabIndex        =   6
         Top             =   360
         Width           =   855
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         Caption         =   "RING"
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   3
         Left            =   240
         TabIndex        =   43
         Top             =   840
         Width           =   495
      End
      Begin VB.Label lblRing 
         Alignment       =   1  'Right Justify
         Caption         =   "00"
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   1
         Left            =   240
         TabIndex        =   42
         Top             =   1080
         Width           =   495
      End
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Close &Enigma"
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   2880
      TabIndex        =   26
      Top             =   3360
      Width           =   1575
   End
   Begin VB.CommandButton cmdCancel 
      Cancel          =   -1  'True
      Caption         =   "&Cancel"
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   5760
      TabIndex        =   1
      Top             =   3360
      Width           =   1095
   End
   Begin VB.CommandButton cmdOK 
      Caption         =   "&OK"
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   4560
      TabIndex        =   0
      Top             =   3360
      Width           =   1095
   End
   Begin VB.Label Label1 
      Caption         =   "© Dirk Rijmenants 2004"
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   120
      TabIndex        =   34
      Top             =   3480
      Width           =   2655
   End
End
Attribute VB_Name = "frmSetUp"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub cmbModel_Click()
Call SetModel
End Sub

Private Sub Command1_Click()
Call EndProgram
End Sub

Private Sub Form_Activate()
Dim k As Integer
Dim p As Integer
'set model
If MODEL = MACHINETYPE.MODEL_M3 Then
    Me.cmbModel.ListIndex = 0
    Else
    Me.cmbModel.ListIndex = 1
    End If
'set combos walze
For k = 1 To 3
Me.cmbROT(k).ListIndex = RotorType(k) - 1
Next k
If RotorType(4) <> 0 Then Me.cmbROT(4).ListIndex = RotorType(4) - 9
If ReflectorType = 1 Or ReflectorType = 3 Then
    Me.cmbREFLECTOR.ListIndex = 0
    Else
    Me.cmbREFLECTOR.ListIndex = 1
    End If
'set ringstellung
For k = 1 To 4
    Me.RingSet(k).Value = RingOffset(k) + 1
    Me.lblRing(k).Caption = SetLabel(RingOffset(k) + 1)
Next k
'set stecker
For k = 1 To 13
    Me.Stecker(k).Text = ""
Next k
For k = 1 To Len(SteckerList) Step 2
    p = p + 1
    Me.Stecker(p).Text = UCase(Mid(SteckerList, k, 2))
Next k
End Sub

Private Sub cmdOK_Click()
Dim R1 As Integer
Dim R2 As Integer
Dim R3 As Integer
Dim R4 As Integer
Dim k As Integer
Dim i As Integer
Dim LT As Integer
R1 = Me.cmbROT(1).ListIndex + 1
R2 = Me.cmbROT(2).ListIndex + 1
R3 = Me.cmbROT(3).ListIndex + 1
R4 = Me.cmbROT(4).ListIndex + 9
'check rotors
If R1 = R2 Or R1 = R3 Or R2 = R3 Then
    MsgBox "Each rotor can only be used once." & vbCrLf & vbCrLf & "Please select an other rotor combination.", vbExclamation, " Enigma"
    Exit Sub
    End If
Dim tmpStecker As String
If Me.cmbModel.ListIndex = 0 Then
    MODEL = MACHINETYPE.MODEL_M3
    frmMain.imgHide4.Visible = True
    If Me.cmbREFLECTOR.ListIndex = 0 Then SetREFLECTOR (1)
    If Me.cmbREFLECTOR.ListIndex = 1 Then SetREFLECTOR (2)
    Else
    MODEL = MACHINETYPE.MODEL_M4
    frmMain.imgHide4.Visible = False
    If Me.cmbREFLECTOR.ListIndex = 0 Then SetREFLECTOR (3)
    If Me.cmbREFLECTOR.ListIndex = 1 Then SetREFLECTOR (4)
    End If
Call SetROTOR1(R1, Me.RingSet(1).Value)
Call SetROTOR2(R2, Me.RingSet(2).Value)
Call SetROTOR3(R3, Me.RingSet(3).Value)
Call SetROTOR4(R4, Me.RingSet(4).Value)
For k = 1 To 13
    If Len(Me.Stecker(k).Text) = 2 Or Me.Stecker(k).Text = "" Then
        tmpStecker = tmpStecker & Me.Stecker(k).Text
        Else
        MsgBox "One of the plugboard pairs is not complete." & vbCrLf & vbCrLf & "Please enter two different letters for each pair.", vbExclamation, " Enigma"
        Me.Stecker(k).SetFocus
        Exit Sub
        End If
Next k
For k = 1 To Len(tmpStecker)
    LT = 0
    For i = 1 To Len(tmpStecker)
        If Mid(tmpStecker, i, 1) = Mid(tmpStecker, k, 1) Then LT = LT + 1
    Next i
    If LT > 1 Then
        MsgBox "Each letter on the plugboard can only by used once." & vbCrLf & vbCrLf & "Please check the plugboard.", vbExclamation, " Enigma"
        Me.Stecker(Int(k / 2) + (k Mod 2)).SetFocus
        Exit Sub
        End If
Next k
Call SetSTECKER(tmpStecker)
Me.Hide
Call SetWheelView
'Call ResetENIGMA
If Me.Check1.Value = 1 Then
    frmMain.Height = 8115
    frmMain.imgBoxOnOff.ToolTipText = " Hide Textbox "
    Else
    frmMain.Height = 7350
    frmMain.imgBoxOnOff.ToolTipText = " Show Textbox "
    End If
Call ButtonSound
End Sub

Private Sub cmdCancel_Click()
Call ButtonSound
Me.Hide
End Sub

Private Sub RingSet_Change(Index As Integer)
Me.lblRing(Index).Caption = SetLabel(Me.RingSet(Index).Value)
End Sub

Private Sub SetModel()
Dim k As Integer
With Me
.cmbREFLECTOR.Clear
.cmbROT(1).Clear
.cmbROT(2).Clear
.cmbROT(3).Clear
If .cmbModel.ListIndex = 0 Then
    .framWalze(4).Visible = False
    .cmbREFLECTOR.AddItem "B"
    .cmbREFLECTOR.AddItem "C"
    Else
    .framWalze(4).Visible = True
    .cmbREFLECTOR.AddItem "B dunn"
    .cmbREFLECTOR.AddItem "C dunn"
    End If
For k = 1 To 3
    .cmbROT(k).AddItem "I"
    .cmbROT(k).AddItem "II"
    .cmbROT(k).AddItem "III"
    .cmbROT(k).AddItem "IV"
    .cmbROT(k).AddItem "V"
    If .cmbModel.ListIndex = 1 Then
        .cmbROT(k).AddItem "VI"
        .cmbROT(k).AddItem "VII"
        .cmbROT(k).AddItem "VIII"
        End If
Next k

.cmbROT(1).ListIndex = 2
.cmbROT(2).ListIndex = 1
.cmbROT(3).ListIndex = 0
.cmbROT(4).ListIndex = 0

'set ringstellung
.RingSet(1).Value = 1
.lblRing(1).Caption = SetLabel(.RingSet(1).Value)
.RingSet(2).Value = 1
.lblRing(2).Caption = SetLabel(.RingSet(2).Value)
.RingSet(3).Value = 1
.lblRing(3).Caption = SetLabel(.RingSet(3).Value)
.RingSet(4).Value = 1
.lblRing(4).Caption = SetLabel(.RingSet(4).Value)
.cmbREFLECTOR.ListIndex = 0
End With
End Sub

Private Sub Stecker_GotFocus(Index As Integer)
Stecker(Index).SelStart = 0
Stecker(Index).SelLength = Len(Stecker(Index))
End Sub

Private Sub Stecker_KeyPress(Index As Integer, KeyAscii As Integer)
KeyAscii = Asc(UCase(Chr(KeyAscii)))
If KeyAscii = 8 Then
    Exit Sub
ElseIf KeyAscii = 13 Then
    KeyAscii = 0
    If Index < 13 Then
        Me.Stecker(Index + 1).SetFocus
        Else
        Me.Stecker(1).SetFocus
        End If
ElseIf (KeyAscii - 64) < 1 Or (KeyAscii - 64) > 26 Then
    KeyAscii = 0
End If
End Sub

Public Function SetLabel(Lval As Integer) As String
SetLabel = Trim(Str(Lval))
If Lval < 10 Then SetLabel = "0" & SetLabel
SetLabel = Chr(Lval + 64) & "-" & SetLabel
End Function

