VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form frmMain 
   AutoRedraw      =   -1  'True
   BackColor       =   &H00404040&
   BorderStyle     =   0  'None
   Caption         =   "  ENIGMA "
   ClientHeight    =   9000
   ClientLeft      =   -90
   ClientTop       =   -660
   ClientWidth     =   12000
   ControlBox      =   0   'False
   HelpContextID   =   1
   Icon            =   "frmMain.frx":0000
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   ScaleHeight     =   9000
   ScaleWidth      =   12000
   StartUpPosition =   2  'CenterScreen
   Begin MSComDlg.CommonDialog dialog1 
      Left            =   5040
      Top             =   1440
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Timer Timer2 
      Enabled         =   0   'False
      Interval        =   10
      Left            =   5040
      Top             =   960
   End
   Begin VB.Timer Timer1 
      Interval        =   250
      Left            =   5040
      Top             =   480
   End
   Begin VB.PictureBox picOpenCover 
      BackColor       =   &H00808080&
      BorderStyle     =   0  'None
      Height          =   4475
      Left            =   6120
      ScaleHeight     =   4470
      ScaleWidth      =   5835
      TabIndex        =   32
      Top             =   5760
      Visible         =   0   'False
      Width           =   5835
      Begin VB.PictureBox picRotorIN 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   2520
         Index           =   4
         Left            =   360
         MouseIcon       =   "frmMain.frx":030A
         MousePointer    =   99  'Custom
         Picture         =   "frmMain.frx":0614
         ScaleHeight     =   2520
         ScaleWidth      =   645
         TabIndex        =   36
         Top             =   3000
         Visible         =   0   'False
         Width           =   645
      End
      Begin VB.PictureBox picRotorIN 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   2535
         Index           =   1
         Left            =   2520
         MouseIcon       =   "frmMain.frx":5CF6
         MousePointer    =   99  'Custom
         Picture         =   "frmMain.frx":6000
         ScaleHeight     =   2535
         ScaleWidth      =   645
         TabIndex        =   33
         Top             =   3000
         Visible         =   0   'False
         Width           =   645
      End
      Begin VB.PictureBox picRotorIN 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   2535
         Index           =   2
         Left            =   1800
         MouseIcon       =   "frmMain.frx":B6E2
         MousePointer    =   99  'Custom
         Picture         =   "frmMain.frx":B9EC
         ScaleHeight     =   2535
         ScaleWidth      =   645
         TabIndex        =   34
         Top             =   3000
         Visible         =   0   'False
         Width           =   645
      End
      Begin VB.PictureBox picRotorIN 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   2535
         Index           =   3
         Left            =   1080
         MouseIcon       =   "frmMain.frx":110CE
         MousePointer    =   99  'Custom
         Picture         =   "frmMain.frx":113D8
         ScaleHeight     =   2535
         ScaleWidth      =   645
         TabIndex        =   35
         Top             =   3000
         Visible         =   0   'False
         Width           =   645
      End
      Begin VB.Label lblRotType 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "VIII"
         ForeColor       =   &H00C0C0C0&
         Height          =   252
         Index           =   2
         Left            =   2280
         TabIndex        =   81
         Top             =   2400
         Width           =   492
      End
      Begin VB.Label lblRotType 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "VIII"
         ForeColor       =   &H00C0C0C0&
         Height          =   252
         Index           =   1
         Left            =   2880
         TabIndex        =   82
         Top             =   2400
         Width           =   492
      End
      Begin VB.Label lblRotType 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "VIII"
         ForeColor       =   &H00C0C0C0&
         Height          =   252
         Index           =   3
         Left            =   1680
         TabIndex        =   80
         Top             =   2400
         Width           =   492
      End
      Begin VB.Label lblRotType 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Gamma"
         ForeColor       =   &H00C0C0C0&
         Height          =   252
         Index           =   4
         Left            =   960
         TabIndex        =   79
         Top             =   2400
         Width           =   612
      End
      Begin VB.Image imgRingPos 
         Height          =   855
         Index           =   1
         Left            =   3480
         MouseIcon       =   "frmMain.frx":16ABA
         MousePointer    =   99  'Custom
         Top             =   2640
         Visible         =   0   'False
         Width           =   2250
      End
      Begin VB.Image imgRingPos 
         Height          =   975
         Index           =   2
         Left            =   3480
         MouseIcon       =   "frmMain.frx":16DC4
         MousePointer    =   99  'Custom
         Top             =   3480
         Visible         =   0   'False
         Width           =   2250
      End
      Begin VB.Image imgRotInplace 
         Height          =   2520
         Index           =   3
         Left            =   1710
         MouseIcon       =   "frmMain.frx":170CE
         MousePointer    =   99  'Custom
         Picture         =   "frmMain.frx":173D8
         Stretch         =   -1  'True
         Top             =   60
         Width           =   645
      End
      Begin VB.Image imgRotInplace 
         Height          =   2520
         Index           =   2
         Left            =   2340
         MouseIcon       =   "frmMain.frx":1CABA
         MousePointer    =   99  'Custom
         Picture         =   "frmMain.frx":1CDC4
         Stretch         =   -1  'True
         Top             =   60
         Width           =   645
      End
      Begin VB.Image imgRotInplace 
         Height          =   2520
         Index           =   1
         Left            =   2970
         MouseIcon       =   "frmMain.frx":224A6
         MousePointer    =   99  'Custom
         Picture         =   "frmMain.frx":227B0
         Stretch         =   -1  'True
         Top             =   60
         Width           =   645
      End
      Begin VB.Image imgRotInplace 
         Height          =   2520
         Index           =   4
         Left            =   1080
         MouseIcon       =   "frmMain.frx":27E92
         MousePointer    =   99  'Custom
         Picture         =   "frmMain.frx":2819C
         Stretch         =   -1  'True
         Top             =   60
         Width           =   645
      End
      Begin VB.Label lblRotNr 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "VIII"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   252
         Left            =   3650
         MouseIcon       =   "frmMain.frx":2D87E
         MousePointer    =   99  'Custom
         TabIndex        =   78
         Top             =   2770
         Visible         =   0   'False
         Width           =   1212
      End
      Begin VB.Label lblRing 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Z 26"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   252
         Left            =   4000
         MouseIcon       =   "frmMain.frx":2DB88
         MousePointer    =   99  'Custom
         TabIndex        =   77
         Top             =   4050
         Visible         =   0   'False
         Width           =   492
      End
      Begin VB.Image imgTmpRotor 
         Height          =   1980
         Left            =   3240
         Picture         =   "frmMain.frx":2DE92
         Stretch         =   -1  'True
         Top             =   2530
         Visible         =   0   'False
         Width           =   2250
      End
      Begin VB.Label lblReflector 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "B"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00808080&
         Height          =   255
         Left            =   720
         MouseIcon       =   "frmMain.frx":3C7E4
         MousePointer    =   99  'Custom
         TabIndex        =   37
         Top             =   1500
         Width           =   375
      End
      Begin VB.Image imgSetupOK 
         Height          =   495
         Left            =   360
         MouseIcon       =   "frmMain.frx":3CAEE
         MousePointer    =   99  'Custom
         ToolTipText     =   " Close Cover "
         Top             =   240
         Width           =   375
      End
      Begin VB.Image imgRefThin 
         Height          =   1320
         Left            =   690
         Picture         =   "frmMain.frx":3CDF8
         Stretch         =   -1  'True
         Top             =   880
         Width           =   390
      End
      Begin VB.Image imgRefWide 
         Height          =   1320
         Left            =   660
         Picture         =   "frmMain.frx":3E9BA
         Stretch         =   -1  'True
         Top             =   870
         Width           =   1065
      End
      Begin VB.Image imgCoveropenBack 
         Height          =   4530
         Left            =   0
         Picture         =   "frmMain.frx":4343C
         Stretch         =   -1  'True
         Top             =   0
         Width           =   5850
      End
   End
   Begin VB.PictureBox picRotorBox 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   2525
      Left            =   6120
      MouseIcon       =   "frmMain.frx":99682
      MousePointer    =   99  'Custom
      ScaleHeight     =   2520
      ScaleWidth      =   5655
      TabIndex        =   39
      Top             =   3120
      Visible         =   0   'False
      Width           =   5655
      Begin VB.Label RotCaption 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "Gamma"
         ForeColor       =   &H0080C0FF&
         Height          =   255
         Index           =   10
         Left            =   4875
         TabIndex        =   75
         Top             =   120
         Width           =   560
      End
      Begin VB.Label RotCaption 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "Beta"
         ForeColor       =   &H0080C0FF&
         Height          =   255
         Index           =   9
         Left            =   4425
         TabIndex        =   48
         Top             =   120
         Width           =   495
      End
      Begin VB.Label RotCaption 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "VIII"
         ForeColor       =   &H0080C0FF&
         Height          =   255
         Index           =   8
         Left            =   3820
         TabIndex        =   47
         Top             =   120
         Width           =   480
      End
      Begin VB.Label RotCaption 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "VII"
         ForeColor       =   &H0080C0FF&
         Height          =   255
         Index           =   7
         Left            =   3288
         TabIndex        =   46
         Top             =   120
         Width           =   495
      End
      Begin VB.Label RotCaption 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "VI"
         ForeColor       =   &H0080C0FF&
         Height          =   255
         Index           =   6
         Left            =   2760
         TabIndex        =   45
         Top             =   120
         Width           =   495
      End
      Begin VB.Label RotCaption 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "V"
         ForeColor       =   &H0080C0FF&
         Height          =   255
         Index           =   5
         Left            =   2232
         TabIndex        =   44
         Top             =   120
         Width           =   495
      End
      Begin VB.Label RotCaption 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "IV"
         ForeColor       =   &H0080C0FF&
         Height          =   255
         Index           =   4
         Left            =   1704
         TabIndex        =   43
         Top             =   120
         Width           =   495
      End
      Begin VB.Label RotCaption 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "III"
         ForeColor       =   &H0080C0FF&
         Height          =   255
         Index           =   3
         Left            =   1176
         TabIndex        =   42
         Top             =   120
         Width           =   495
      End
      Begin VB.Label RotCaption 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "II"
         ForeColor       =   &H0080C0FF&
         Height          =   255
         Index           =   2
         Left            =   648
         TabIndex        =   41
         Top             =   120
         Width           =   495
      End
      Begin VB.Label RotCaption 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "I"
         ForeColor       =   &H0080C0FF&
         Height          =   255
         Index           =   1
         Left            =   120
         TabIndex        =   40
         Top             =   120
         Width           =   495
      End
      Begin VB.Image imgRotorInBox 
         Height          =   2040
         Index           =   10
         Left            =   4850
         MouseIcon       =   "frmMain.frx":9998C
         MousePointer    =   99  'Custom
         Picture         =   "frmMain.frx":99C96
         Stretch         =   -1  'True
         Top             =   240
         Width           =   645
      End
      Begin VB.Image imgRotorInBox 
         Height          =   2040
         Index           =   9
         Left            =   4327
         MouseIcon       =   "frmMain.frx":9E2F8
         MousePointer    =   99  'Custom
         Picture         =   "frmMain.frx":9E602
         Stretch         =   -1  'True
         Top             =   240
         Width           =   645
      End
      Begin VB.Image imgRotorInBox 
         Height          =   2040
         Index           =   8
         Left            =   3803
         MouseIcon       =   "frmMain.frx":A2C64
         MousePointer    =   99  'Custom
         Stretch         =   -1  'True
         Top             =   240
         Width           =   645
      End
      Begin VB.Image imgRotorInBox 
         Height          =   2040
         Index           =   7
         Left            =   3279
         MouseIcon       =   "frmMain.frx":A2F6E
         MousePointer    =   99  'Custom
         Stretch         =   -1  'True
         Top             =   240
         Width           =   645
      End
      Begin VB.Image imgRotorInBox 
         Height          =   2040
         Index           =   6
         Left            =   2755
         MouseIcon       =   "frmMain.frx":A3278
         MousePointer    =   99  'Custom
         Stretch         =   -1  'True
         Top             =   240
         Width           =   645
      End
      Begin VB.Image imgRotorInBox 
         Height          =   2040
         Index           =   5
         Left            =   2231
         MouseIcon       =   "frmMain.frx":A3582
         MousePointer    =   99  'Custom
         Stretch         =   -1  'True
         Top             =   240
         Width           =   645
      End
      Begin VB.Image imgRotorInBox 
         Height          =   2040
         Index           =   4
         Left            =   1707
         MouseIcon       =   "frmMain.frx":A388C
         MousePointer    =   99  'Custom
         Stretch         =   -1  'True
         Top             =   240
         Width           =   645
      End
      Begin VB.Image imgRotorInBox 
         Height          =   2040
         Index           =   3
         Left            =   1183
         MouseIcon       =   "frmMain.frx":A3B96
         MousePointer    =   99  'Custom
         Stretch         =   -1  'True
         Top             =   240
         Width           =   645
      End
      Begin VB.Image imgRotorInBox 
         Height          =   2040
         Index           =   2
         Left            =   659
         MouseIcon       =   "frmMain.frx":A3EA0
         MousePointer    =   99  'Custom
         Stretch         =   -1  'True
         Top             =   240
         Width           =   645
      End
      Begin VB.Image imgRotorInBox 
         Height          =   2040
         Index           =   1
         Left            =   135
         MouseIcon       =   "frmMain.frx":A41AA
         MousePointer    =   99  'Custom
         Picture         =   "frmMain.frx":A44B4
         Stretch         =   -1  'True
         Top             =   240
         Width           =   645
      End
      Begin VB.Image imgRotorBox 
         Height          =   2520
         Left            =   0
         Picture         =   "frmMain.frx":A8B16
         Stretch         =   -1  'True
         Top             =   0
         Width           =   5655
      End
   End
   Begin VB.PictureBox picPlugBoard 
      BorderStyle     =   0  'None
      Height          =   2910
      Left            =   6120
      ScaleHeight     =   2910
      ScaleWidth      =   5850
      TabIndex        =   38
      Top             =   120
      Visible         =   0   'False
      Width           =   5850
      Begin VB.Label PlugText 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         ForeColor       =   &H00FFFFFF&
         Height          =   195
         Index           =   25
         Left            =   4725
         MouseIcon       =   "frmMain.frx":AB521
         MousePointer    =   99  'Custom
         TabIndex        =   73
         Top             =   2200
         Width           =   195
      End
      Begin VB.Label PlugText 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         ForeColor       =   &H00FFFFFF&
         Height          =   195
         Index           =   24
         Left            =   4185
         MouseIcon       =   "frmMain.frx":AB82B
         MousePointer    =   99  'Custom
         TabIndex        =   72
         Top             =   2200
         Width           =   195
      End
      Begin VB.Image Plug 
         Height          =   540
         Index           =   25
         Left            =   4695
         MouseIcon       =   "frmMain.frx":ABB35
         MousePointer    =   99  'Custom
         Stretch         =   -1  'True
         Top             =   2060
         Width           =   255
      End
      Begin VB.Label PlugText 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         ForeColor       =   &H00FFFFFF&
         Height          =   195
         Index           =   26
         Left            =   5265
         MouseIcon       =   "frmMain.frx":ABE3F
         MousePointer    =   99  'Custom
         TabIndex        =   74
         Top             =   2200
         Width           =   195
      End
      Begin VB.Label PlugText 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         ForeColor       =   &H00FFFFFF&
         Height          =   195
         Index           =   23
         Left            =   3630
         MouseIcon       =   "frmMain.frx":AC149
         MousePointer    =   99  'Custom
         TabIndex        =   71
         Top             =   2200
         Width           =   195
      End
      Begin VB.Label PlugText 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         ForeColor       =   &H00FFFFFF&
         Height          =   195
         Index           =   22
         Left            =   2010
         MouseIcon       =   "frmMain.frx":AC453
         MousePointer    =   99  'Custom
         TabIndex        =   70
         Top             =   2200
         Width           =   195
      End
      Begin VB.Label PlugText 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         ForeColor       =   &H00FFFFFF&
         Height          =   195
         Index           =   21
         Left            =   1470
         MouseIcon       =   "frmMain.frx":AC75D
         MousePointer    =   99  'Custom
         TabIndex        =   69
         Top             =   2200
         Width           =   195
      End
      Begin VB.Label PlugText 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         ForeColor       =   &H00FFFFFF&
         Height          =   195
         Index           =   20
         Left            =   930
         MouseIcon       =   "frmMain.frx":ACA67
         MousePointer    =   99  'Custom
         TabIndex        =   68
         Top             =   2200
         Width           =   195
      End
      Begin VB.Label PlugText 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         ForeColor       =   &H00FFFFFF&
         Height          =   195
         Index           =   19
         Left            =   390
         MouseIcon       =   "frmMain.frx":ACD71
         MousePointer    =   99  'Custom
         TabIndex        =   67
         Top             =   2200
         Width           =   195
      End
      Begin VB.Label PlugText 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         ForeColor       =   &H00FFFFFF&
         Height          =   195
         Index           =   18
         Left            =   4980
         MouseIcon       =   "frmMain.frx":AD07B
         MousePointer    =   99  'Custom
         TabIndex        =   66
         Top             =   1650
         Width           =   195
      End
      Begin VB.Label PlugText 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         ForeColor       =   &H00FFFFFF&
         Height          =   195
         Index           =   17
         Left            =   4425
         MouseIcon       =   "frmMain.frx":AD385
         MousePointer    =   99  'Custom
         TabIndex        =   65
         Top             =   1650
         Width           =   195
      End
      Begin VB.Label PlugText 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         ForeColor       =   &H00FFFFFF&
         Height          =   195
         Index           =   16
         Left            =   3885
         MouseIcon       =   "frmMain.frx":AD68F
         MousePointer    =   99  'Custom
         TabIndex        =   64
         Top             =   1650
         Width           =   195
      End
      Begin VB.Label PlugText 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         ForeColor       =   &H00FFFFFF&
         Height          =   195
         Index           =   15
         Left            =   3330
         MouseIcon       =   "frmMain.frx":AD999
         MousePointer    =   99  'Custom
         TabIndex        =   63
         Top             =   1650
         Width           =   195
      End
      Begin VB.Label PlugText 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         ForeColor       =   &H00FFFFFF&
         Height          =   195
         Index           =   14
         Left            =   2265
         MouseIcon       =   "frmMain.frx":ADCA3
         MousePointer    =   99  'Custom
         TabIndex        =   62
         Top             =   1650
         Width           =   195
      End
      Begin VB.Label PlugText 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         ForeColor       =   &H00FFFFFF&
         Height          =   195
         Index           =   13
         Left            =   1710
         MouseIcon       =   "frmMain.frx":ADFAD
         MousePointer    =   99  'Custom
         TabIndex        =   61
         Top             =   1650
         Width           =   195
      End
      Begin VB.Label PlugText 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         ForeColor       =   &H00FFFFFF&
         Height          =   195
         Index           =   12
         Left            =   1170
         MouseIcon       =   "frmMain.frx":AE2B7
         MousePointer    =   99  'Custom
         TabIndex        =   60
         Top             =   1650
         Width           =   195
      End
      Begin VB.Label PlugText 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         ForeColor       =   &H00FFFFFF&
         Height          =   195
         Index           =   11
         Left            =   630
         MouseIcon       =   "frmMain.frx":AE5C1
         MousePointer    =   99  'Custom
         TabIndex        =   59
         Top             =   1650
         Width           =   195
      End
      Begin VB.Label PlugText 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         ForeColor       =   &H00FFFFFF&
         Height          =   195
         Index           =   10
         Left            =   5265
         MouseIcon       =   "frmMain.frx":AE8CB
         MousePointer    =   99  'Custom
         TabIndex        =   58
         Top             =   1100
         Width           =   195
      End
      Begin VB.Label PlugText 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         ForeColor       =   &H00FFFFFF&
         Height          =   195
         Index           =   9
         Left            =   4725
         MouseIcon       =   "frmMain.frx":AEBD5
         MousePointer    =   99  'Custom
         TabIndex        =   57
         Top             =   1100
         Width           =   195
      End
      Begin VB.Label PlugText 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         ForeColor       =   &H00FFFFFF&
         Height          =   195
         Index           =   8
         Left            =   4170
         MouseIcon       =   "frmMain.frx":AEEDF
         MousePointer    =   99  'Custom
         TabIndex        =   56
         Top             =   1100
         Width           =   195
      End
      Begin VB.Label PlugText 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         ForeColor       =   &H00FFFFFF&
         Height          =   195
         Index           =   7
         Left            =   3645
         MouseIcon       =   "frmMain.frx":AF1E9
         MousePointer    =   99  'Custom
         TabIndex        =   55
         Top             =   1100
         Width           =   195
      End
      Begin VB.Label PlugText 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         ForeColor       =   &H00FFFFFF&
         Height          =   195
         Index           =   6
         Left            =   3090
         MouseIcon       =   "frmMain.frx":AF4F3
         MousePointer    =   99  'Custom
         TabIndex        =   54
         Top             =   1100
         Width           =   195
      End
      Begin VB.Label PlugText 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         ForeColor       =   &H00FFFFFF&
         Height          =   195
         Index           =   5
         Left            =   2520
         MouseIcon       =   "frmMain.frx":AF7FD
         MousePointer    =   99  'Custom
         TabIndex        =   53
         Top             =   1100
         Width           =   195
      End
      Begin VB.Label PlugText 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         ForeColor       =   &H00FFFFFF&
         Height          =   195
         Index           =   4
         Left            =   2010
         MouseIcon       =   "frmMain.frx":AFB07
         MousePointer    =   99  'Custom
         TabIndex        =   52
         Top             =   1100
         Width           =   195
      End
      Begin VB.Label PlugText 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         ForeColor       =   &H00FFFFFF&
         Height          =   195
         Index           =   3
         Left            =   1470
         MouseIcon       =   "frmMain.frx":AFE11
         MousePointer    =   99  'Custom
         TabIndex        =   51
         Top             =   1100
         Width           =   195
      End
      Begin VB.Label PlugText 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         ForeColor       =   &H00FFFFFF&
         Height          =   195
         Index           =   2
         Left            =   930
         MouseIcon       =   "frmMain.frx":B011B
         MousePointer    =   99  'Custom
         TabIndex        =   50
         Top             =   1100
         Width           =   195
      End
      Begin VB.Label PlugText 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         ForeColor       =   &H00FFFFFF&
         Height          =   195
         Index           =   1
         Left            =   375
         MouseIcon       =   "frmMain.frx":B0425
         MousePointer    =   99  'Custom
         TabIndex        =   49
         Top             =   1100
         Width           =   195
      End
      Begin VB.Image Plug 
         Height          =   540
         Index           =   26
         Left            =   5235
         MouseIcon       =   "frmMain.frx":B072F
         MousePointer    =   99  'Custom
         Stretch         =   -1  'True
         Top             =   2060
         Width           =   255
      End
      Begin VB.Image Plug 
         Height          =   540
         Index           =   24
         Left            =   4155
         MouseIcon       =   "frmMain.frx":B0A39
         MousePointer    =   99  'Custom
         Stretch         =   -1  'True
         Top             =   2060
         Width           =   255
      End
      Begin VB.Image Plug 
         Height          =   540
         Index           =   23
         Left            =   3600
         MouseIcon       =   "frmMain.frx":B0D43
         MousePointer    =   99  'Custom
         Stretch         =   -1  'True
         Top             =   2060
         Width           =   255
      End
      Begin VB.Image Plug 
         Height          =   540
         Index           =   22
         Left            =   1980
         MouseIcon       =   "frmMain.frx":B104D
         MousePointer    =   99  'Custom
         Stretch         =   -1  'True
         Top             =   2060
         Width           =   255
      End
      Begin VB.Image Plug 
         Height          =   540
         Index           =   21
         Left            =   1440
         MouseIcon       =   "frmMain.frx":B1357
         MousePointer    =   99  'Custom
         Stretch         =   -1  'True
         Top             =   2060
         Width           =   255
      End
      Begin VB.Image Plug 
         Height          =   540
         Index           =   20
         Left            =   900
         MouseIcon       =   "frmMain.frx":B1661
         MousePointer    =   99  'Custom
         Stretch         =   -1  'True
         Top             =   2060
         Width           =   255
      End
      Begin VB.Image Plug 
         Height          =   540
         Index           =   19
         Left            =   360
         MouseIcon       =   "frmMain.frx":B196B
         MousePointer    =   99  'Custom
         Stretch         =   -1  'True
         Top             =   2060
         Width           =   255
      End
      Begin VB.Image Plug 
         Height          =   540
         Index           =   18
         Left            =   4950
         MouseIcon       =   "frmMain.frx":B1C75
         MousePointer    =   99  'Custom
         Stretch         =   -1  'True
         Top             =   1520
         Width           =   255
      End
      Begin VB.Image Plug 
         Height          =   540
         Index           =   17
         Left            =   4395
         MouseIcon       =   "frmMain.frx":B1F7F
         MousePointer    =   99  'Custom
         Stretch         =   -1  'True
         Top             =   1520
         Width           =   255
      End
      Begin VB.Image Plug 
         Height          =   540
         Index           =   16
         Left            =   3855
         MouseIcon       =   "frmMain.frx":B2289
         MousePointer    =   99  'Custom
         Stretch         =   -1  'True
         Top             =   1520
         Width           =   255
      End
      Begin VB.Image Plug 
         Height          =   540
         Index           =   15
         Left            =   3300
         MouseIcon       =   "frmMain.frx":B2593
         MousePointer    =   99  'Custom
         Stretch         =   -1  'True
         Top             =   1520
         Width           =   255
      End
      Begin VB.Image Plug 
         Height          =   540
         Index           =   14
         Left            =   2235
         MouseIcon       =   "frmMain.frx":B289D
         MousePointer    =   99  'Custom
         Stretch         =   -1  'True
         Top             =   1520
         Width           =   255
      End
      Begin VB.Image Plug 
         Height          =   540
         Index           =   13
         Left            =   1680
         MouseIcon       =   "frmMain.frx":B2BA7
         MousePointer    =   99  'Custom
         Stretch         =   -1  'True
         Top             =   1520
         Width           =   255
      End
      Begin VB.Image Plug 
         Height          =   540
         Index           =   12
         Left            =   1140
         MouseIcon       =   "frmMain.frx":B2EB1
         MousePointer    =   99  'Custom
         Stretch         =   -1  'True
         Top             =   1520
         Width           =   255
      End
      Begin VB.Image Plug 
         Height          =   540
         Index           =   11
         Left            =   600
         MouseIcon       =   "frmMain.frx":B31BB
         MousePointer    =   99  'Custom
         Stretch         =   -1  'True
         Top             =   1520
         Width           =   255
      End
      Begin VB.Image Plug 
         Height          =   540
         Index           =   10
         Left            =   5235
         MouseIcon       =   "frmMain.frx":B34C5
         MousePointer    =   99  'Custom
         Stretch         =   -1  'True
         Top             =   960
         Width           =   255
      End
      Begin VB.Image Plug 
         Height          =   540
         Index           =   9
         Left            =   4695
         MouseIcon       =   "frmMain.frx":B37CF
         MousePointer    =   99  'Custom
         Stretch         =   -1  'True
         Top             =   960
         Width           =   255
      End
      Begin VB.Image Plug 
         Height          =   540
         Index           =   8
         Left            =   4140
         MouseIcon       =   "frmMain.frx":B3AD9
         MousePointer    =   99  'Custom
         Stretch         =   -1  'True
         Top             =   960
         Width           =   255
      End
      Begin VB.Image Plug 
         Height          =   540
         Index           =   7
         Left            =   3615
         MouseIcon       =   "frmMain.frx":B3DE3
         MousePointer    =   99  'Custom
         Stretch         =   -1  'True
         Top             =   960
         Width           =   255
      End
      Begin VB.Image Plug 
         Height          =   540
         Index           =   6
         Left            =   3060
         MouseIcon       =   "frmMain.frx":B40ED
         MousePointer    =   99  'Custom
         Stretch         =   -1  'True
         Top             =   960
         Width           =   255
      End
      Begin VB.Image Plug 
         Height          =   540
         Index           =   5
         Left            =   2490
         MouseIcon       =   "frmMain.frx":B43F7
         MousePointer    =   99  'Custom
         Stretch         =   -1  'True
         Top             =   960
         Width           =   255
      End
      Begin VB.Image Plug 
         Height          =   540
         Index           =   4
         Left            =   1980
         MouseIcon       =   "frmMain.frx":B4701
         MousePointer    =   99  'Custom
         Stretch         =   -1  'True
         Top             =   960
         Width           =   255
      End
      Begin VB.Image Plug 
         Height          =   540
         Index           =   3
         Left            =   1440
         MouseIcon       =   "frmMain.frx":B4A0B
         MousePointer    =   99  'Custom
         Stretch         =   -1  'True
         Top             =   960
         Width           =   255
      End
      Begin VB.Image Plug 
         Height          =   540
         Index           =   2
         Left            =   900
         MouseIcon       =   "frmMain.frx":B4D15
         MousePointer    =   99  'Custom
         Stretch         =   -1  'True
         Top             =   960
         Width           =   255
      End
      Begin VB.Image Plug 
         Height          =   540
         Index           =   1
         Left            =   345
         MouseIcon       =   "frmMain.frx":B501F
         MousePointer    =   99  'Custom
         Stretch         =   -1  'True
         Top             =   960
         Width           =   255
      End
      Begin VB.Image imgExitPluGSetup 
         Height          =   435
         Left            =   0
         MouseIcon       =   "frmMain.frx":B5329
         MousePointer    =   99  'Custom
         ToolTipText     =   " Return to Enigma "
         Top             =   240
         Width           =   5895
      End
      Begin VB.Image Plug 
         Height          =   540
         Index           =   0
         Left            =   2760
         MouseIcon       =   "frmMain.frx":B5633
         MousePointer    =   99  'Custom
         Picture         =   "frmMain.frx":B593D
         Top             =   2070
         Visible         =   0   'False
         Width           =   255
      End
      Begin VB.Image picTitleBar 
         Height          =   255
         Index           =   2
         Left            =   0
         MousePointer    =   15  'Size All
         Top             =   0
         Width           =   5895
      End
      Begin VB.Image imgPlugsBack 
         Height          =   2925
         Left            =   0
         Picture         =   "frmMain.frx":B60CF
         Stretch         =   -1  'True
         Top             =   0
         Width           =   5850
      End
   End
   Begin VB.Image ImageSetup 
      Height          =   615
      Index           =   0
      Left            =   3600
      MouseIcon       =   "frmMain.frx":ED939
      MousePointer    =   99  'Custom
      ToolTipText     =   " Open Cover "
      Top             =   2160
      Width           =   855
   End
   Begin VB.Image picTitleBar 
      Height          =   252
      Index           =   0
      Left            =   0
      MousePointer    =   15  'Size All
      Top             =   0
      Width           =   5892
   End
   Begin VB.Image imgHelp 
      Height          =   1455
      Left            =   240
      MouseIcon       =   "frmMain.frx":EDC43
      MousePointer    =   99  'Custom
      ToolTipText     =   " Show Helpfile "
      Top             =   480
      Width           =   735
   End
   Begin VB.Label lblInfo 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00C0FFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   " Press F1 for help and more information on Enigma"
      ForeColor       =   &H00000000&
      Height          =   450
      Left            =   360
      TabIndex        =   76
      Top             =   840
      Width           =   2295
   End
   Begin VB.Image imgEndEnigma 
      Height          =   615
      Left            =   3960
      MouseIcon       =   "frmMain.frx":EDF4D
      MousePointer    =   99  'Custom
      ToolTipText     =   " Exit Enigma "
      Top             =   1320
      Width           =   855
   End
   Begin VB.Image imgGallerie 
      Height          =   615
      Left            =   240
      MouseIcon       =   "frmMain.frx":EE257
      MousePointer    =   99  'Custom
      ToolTipText     =   " Picture Gallery "
      Top             =   2160
      Width           =   735
   End
   Begin VB.Image imgHide4 
      Height          =   1545
      Left            =   1050
      Picture         =   "frmMain.frx":EE561
      Stretch         =   -1  'True
      Top             =   1200
      Width           =   600
   End
   Begin VB.Image RotDown 
      Height          =   495
      Index           =   4
      Left            =   1440
      MouseIcon       =   "frmMain.frx":EECC3
      MousePointer    =   99  'Custom
      Top             =   2160
      Width           =   255
   End
   Begin VB.Image RotDown 
      Height          =   615
      Index           =   3
      Left            =   2040
      MouseIcon       =   "frmMain.frx":EEFCD
      MousePointer    =   99  'Custom
      Top             =   2040
      Width           =   255
   End
   Begin VB.Image RotUp 
      Height          =   615
      Index           =   4
      Left            =   1440
      MouseIcon       =   "frmMain.frx":EF2D7
      MousePointer    =   99  'Custom
      Top             =   1200
      Width           =   255
   End
   Begin VB.Image RotUp 
      Height          =   735
      Index           =   3
      Left            =   2040
      MouseIcon       =   "frmMain.frx":EF5E1
      MousePointer    =   99  'Custom
      Top             =   1200
      Width           =   255
   End
   Begin VB.Image RotUp 
      Height          =   735
      Index           =   2
      Left            =   2640
      MouseIcon       =   "frmMain.frx":EF8EB
      MousePointer    =   99  'Custom
      Top             =   1200
      Width           =   255
   End
   Begin VB.Image RotUp 
      Height          =   735
      Index           =   1
      Left            =   3240
      MouseIcon       =   "frmMain.frx":EFBF5
      MousePointer    =   99  'Custom
      Top             =   1200
      Width           =   255
   End
   Begin VB.Image RotDown 
      Height          =   615
      Index           =   2
      Left            =   2640
      MouseIcon       =   "frmMain.frx":EFEFF
      MousePointer    =   99  'Custom
      Top             =   2040
      Width           =   255
   End
   Begin VB.Image RotDown 
      Height          =   615
      Index           =   1
      Left            =   3240
      MouseIcon       =   "frmMain.frx":F0209
      MousePointer    =   99  'Custom
      Top             =   2040
      Width           =   255
   End
   Begin VB.Image imgInfo 
      Height          =   495
      Left            =   2400
      MouseIcon       =   "frmMain.frx":F0513
      MousePointer    =   99  'Custom
      ToolTipText     =   " About Enigma Simulator "
      Top             =   480
      Width           =   1095
   End
   Begin VB.Label lblROT3 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
      BackStyle       =   0  'Transparent
      Caption         =   "A"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   225
      Left            =   1770
      TabIndex        =   2
      Top             =   1995
      Width           =   210
   End
   Begin VB.Image imgRotMove 
      Height          =   1215
      Index           =   4
      Left            =   1530
      Picture         =   "frmMain.frx":F081D
      Top             =   1350
      Width           =   75
   End
   Begin VB.Image imgRotMove 
      Height          =   1215
      Index           =   3
      Left            =   2120
      Picture         =   "frmMain.frx":F0D6F
      Stretch         =   -1  'True
      Top             =   1365
      Width           =   75
   End
   Begin VB.Image imgRotMove 
      Height          =   1215
      Index           =   2
      Left            =   2720
      Picture         =   "frmMain.frx":F12C1
      Stretch         =   -1  'True
      Top             =   1350
      Width           =   75
   End
   Begin VB.Image imgRotMove 
      Height          =   1215
      Index           =   1
      Left            =   3330
      Picture         =   "frmMain.frx":F1813
      Stretch         =   -1  'True
      Top             =   1350
      Width           =   75
   End
   Begin VB.Label lblROT1 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
      BackStyle       =   0  'Transparent
      Caption         =   "A"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   225
      Left            =   2970
      TabIndex        =   0
      Top             =   1995
      Width           =   210
      WordWrap        =   -1  'True
   End
   Begin VB.Label lblROT2 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
      BackStyle       =   0  'Transparent
      Caption         =   "A"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   225
      Left            =   2375
      TabIndex        =   1
      Top             =   1995
      Width           =   210
   End
   Begin VB.Label lblROT4 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
      BackStyle       =   0  'Transparent
      Caption         =   "A"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   225
      Left            =   1175
      TabIndex        =   3
      Top             =   1995
      Width           =   210
   End
   Begin VB.Image Knopf 
      Height          =   420
      Index           =   1
      Left            =   810
      MouseIcon       =   "frmMain.frx":F1D65
      MousePointer    =   99  'Custom
      Stretch         =   -1  'True
      Top             =   5260
      Width           =   420
   End
   Begin VB.Image Knopf 
      Height          =   420
      Index           =   2
      Left            =   3230
      MouseIcon       =   "frmMain.frx":F206F
      MousePointer    =   99  'Custom
      Stretch         =   -1  'True
      Top             =   5735
      Width           =   420
   End
   Begin VB.Image Knopf 
      Height          =   420
      Index           =   3
      Left            =   2150
      MouseIcon       =   "frmMain.frx":F2379
      MousePointer    =   99  'Custom
      Stretch         =   -1  'True
      Top             =   5735
      Width           =   420
   End
   Begin VB.Image Knopf 
      Height          =   420
      Index           =   4
      Left            =   1884
      MouseIcon       =   "frmMain.frx":F2683
      MousePointer    =   99  'Custom
      Stretch         =   -1  'True
      Top             =   5260
      Width           =   420
   End
   Begin VB.Image Knopf 
      Height          =   420
      Index           =   5
      Left            =   1585
      MouseIcon       =   "frmMain.frx":F298D
      MousePointer    =   99  'Custom
      Stretch         =   -1  'True
      Top             =   4795
      Width           =   420
   End
   Begin VB.Image Knopf 
      Height          =   420
      Index           =   6
      Left            =   2421
      MouseIcon       =   "frmMain.frx":F2C97
      MousePointer    =   99  'Custom
      Stretch         =   -1  'True
      Top             =   5260
      Width           =   420
   End
   Begin VB.Image Knopf 
      Height          =   420
      Index           =   7
      Left            =   2958
      MouseIcon       =   "frmMain.frx":F2FA1
      MousePointer    =   99  'Custom
      Stretch         =   -1  'True
      Top             =   5260
      Width           =   420
   End
   Begin VB.Image Knopf 
      Height          =   420
      Index           =   8
      Left            =   3495
      MouseIcon       =   "frmMain.frx":F32AB
      MousePointer    =   99  'Custom
      Stretch         =   -1  'True
      Top             =   5260
      Width           =   420
   End
   Begin VB.Image Knopf 
      Height          =   420
      Index           =   9
      Left            =   4285
      MouseIcon       =   "frmMain.frx":F35B5
      MousePointer    =   99  'Custom
      Stretch         =   -1  'True
      Top             =   4795
      Width           =   420
   End
   Begin VB.Image Knopf 
      Height          =   420
      Index           =   10
      Left            =   4032
      MouseIcon       =   "frmMain.frx":F38BF
      MousePointer    =   99  'Custom
      Stretch         =   -1  'True
      Top             =   5260
      Width           =   420
   End
   Begin VB.Image Knopf 
      Height          =   420
      Index           =   11
      Left            =   4570
      MouseIcon       =   "frmMain.frx":F3BC9
      MousePointer    =   99  'Custom
      Stretch         =   -1  'True
      Top             =   5260
      Width           =   420
   End
   Begin VB.Image Knopf 
      Height          =   420
      Index           =   12
      Left            =   4850
      MouseIcon       =   "frmMain.frx":F3ED3
      MousePointer    =   99  'Custom
      Stretch         =   -1  'True
      Top             =   5735
      Width           =   420
   End
   Begin VB.Image Knopf 
      Height          =   420
      Index           =   13
      Left            =   4310
      MouseIcon       =   "frmMain.frx":F41DD
      MousePointer    =   99  'Custom
      Stretch         =   -1  'True
      Top             =   5735
      Width           =   420
   End
   Begin VB.Image Knopf 
      Height          =   420
      Index           =   14
      Left            =   3770
      MouseIcon       =   "frmMain.frx":F44E7
      MousePointer    =   99  'Custom
      Stretch         =   -1  'True
      Top             =   5735
      Width           =   420
   End
   Begin VB.Image Knopf 
      Height          =   420
      Index           =   15
      Left            =   4825
      MouseIcon       =   "frmMain.frx":F47F1
      MousePointer    =   99  'Custom
      Stretch         =   -1  'True
      Top             =   4795
      Width           =   420
   End
   Begin VB.Image Knopf 
      Height          =   420
      Index           =   16
      Left            =   530
      MouseIcon       =   "frmMain.frx":F4AFB
      MousePointer    =   99  'Custom
      Stretch         =   -1  'True
      Top             =   5735
      Width           =   420
   End
   Begin VB.Image Knopf 
      Height          =   420
      Index           =   17
      Left            =   505
      MouseIcon       =   "frmMain.frx":F4E05
      MousePointer    =   99  'Custom
      Stretch         =   -1  'True
      Top             =   4795
      Width           =   420
   End
   Begin VB.Image Knopf 
      Height          =   420
      Index           =   18
      Left            =   2125
      MouseIcon       =   "frmMain.frx":F510F
      MousePointer    =   99  'Custom
      Stretch         =   -1  'True
      Top             =   4795
      Width           =   420
   End
   Begin VB.Image Knopf 
      Height          =   420
      Index           =   19
      Left            =   1340
      MouseIcon       =   "frmMain.frx":F5419
      MousePointer    =   99  'Custom
      Top             =   5260
      Width           =   420
   End
   Begin VB.Image Knopf 
      Height          =   420
      Index           =   20
      Left            =   2665
      MouseIcon       =   "frmMain.frx":F5723
      MousePointer    =   99  'Custom
      Stretch         =   -1  'True
      Top             =   4795
      Width           =   420
   End
   Begin VB.Image Knopf 
      Height          =   420
      Index           =   21
      Left            =   3745
      MouseIcon       =   "frmMain.frx":F5A2D
      MousePointer    =   99  'Custom
      Stretch         =   -1  'True
      Top             =   4795
      Width           =   420
   End
   Begin VB.Image Knopf 
      Height          =   420
      Index           =   22
      Left            =   2690
      MouseIcon       =   "frmMain.frx":F5D37
      MousePointer    =   99  'Custom
      Stretch         =   -1  'True
      Top             =   5735
      Width           =   420
   End
   Begin VB.Image Knopf 
      Height          =   420
      Index           =   23
      Left            =   1045
      MouseIcon       =   "frmMain.frx":F6041
      MousePointer    =   99  'Custom
      Stretch         =   -1  'True
      Top             =   4795
      Width           =   420
   End
   Begin VB.Image Knopf 
      Height          =   420
      Index           =   24
      Left            =   1610
      MouseIcon       =   "frmMain.frx":F634B
      MousePointer    =   99  'Custom
      Stretch         =   -1  'True
      Top             =   5735
      Width           =   420
   End
   Begin VB.Image Knopf 
      Height          =   420
      Index           =   25
      Left            =   1070
      MouseIcon       =   "frmMain.frx":F6655
      MousePointer    =   99  'Custom
      Stretch         =   -1  'True
      Top             =   5735
      Width           =   420
   End
   Begin VB.Image Knopf 
      Height          =   420
      Index           =   26
      Left            =   3205
      MouseIcon       =   "frmMain.frx":F695F
      MousePointer    =   99  'Custom
      Stretch         =   -1  'True
      Top             =   4795
      Width           =   420
   End
   Begin VB.Label Lamp 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "A"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   375
      Index           =   1
      Left            =   810
      TabIndex        =   29
      Top             =   3670
      Width           =   375
   End
   Begin VB.Label Lamp 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "B"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   375
      Index           =   2
      Left            =   3310
      TabIndex        =   28
      Top             =   4110
      Width           =   375
   End
   Begin VB.Label Lamp 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "C"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   375
      Index           =   3
      Left            =   2170
      TabIndex        =   27
      Top             =   4110
      Width           =   375
   End
   Begin VB.Label Lamp 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "D"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   375
      Index           =   4
      Left            =   1940
      TabIndex        =   26
      Top             =   3670
      Width           =   375
   End
   Begin VB.Label Lamp 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "E"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   375
      Index           =   5
      Left            =   1600
      TabIndex        =   25
      Top             =   3270
      Width           =   375
   End
   Begin VB.Label Lamp 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "F"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   375
      Index           =   6
      Left            =   2490
      TabIndex        =   24
      Top             =   3670
      Width           =   375
   End
   Begin VB.Label Lamp 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "G"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   375
      Index           =   7
      Left            =   3030
      TabIndex        =   23
      Top             =   3670
      Width           =   375
   End
   Begin VB.Label Lamp 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "H"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   375
      Index           =   8
      Left            =   3590
      TabIndex        =   22
      Top             =   3670
      Width           =   375
   End
   Begin VB.Label Lamp 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "I"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   375
      Index           =   9
      Left            =   4390
      TabIndex        =   21
      Top             =   3270
      Width           =   375
   End
   Begin VB.Label Lamp 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "J"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   375
      Index           =   10
      Left            =   4135
      TabIndex        =   20
      Top             =   3670
      Width           =   375
   End
   Begin VB.Label Lamp 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "K"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   375
      Index           =   11
      Left            =   4710
      TabIndex        =   19
      Top             =   3670
      Width           =   375
   End
   Begin VB.Label Lamp 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "L"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   375
      Index           =   12
      Left            =   4980
      TabIndex        =   18
      Top             =   4110
      Width           =   375
   End
   Begin VB.Label Lamp 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "M"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   375
      Index           =   13
      Left            =   4410
      TabIndex        =   17
      Top             =   4110
      Width           =   375
   End
   Begin VB.Label Lamp 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "N"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   375
      Index           =   14
      Left            =   3835
      TabIndex        =   16
      Top             =   4110
      Width           =   375
   End
   Begin VB.Label Lamp 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "O"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   375
      Index           =   15
      Left            =   4950
      TabIndex        =   15
      Top             =   3270
      Width           =   375
   End
   Begin VB.Label Lamp 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "P"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   375
      Index           =   16
      Left            =   520
      TabIndex        =   14
      Top             =   4110
      Width           =   375
   End
   Begin VB.Label Lamp 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "Q"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   375
      Index           =   17
      Left            =   490
      TabIndex        =   13
      Top             =   3270
      Width           =   375
   End
   Begin VB.Label Lamp 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "R"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   375
      Index           =   18
      Left            =   2160
      TabIndex        =   12
      Top             =   3270
      Width           =   375
   End
   Begin VB.Label Lamp 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "S"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   375
      Index           =   19
      Left            =   1370
      TabIndex        =   11
      Top             =   3670
      Width           =   375
   End
   Begin VB.Label Lamp 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "T"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   375
      Index           =   20
      Left            =   2715
      TabIndex        =   10
      Top             =   3270
      Width           =   375
   End
   Begin VB.Label Lamp 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "U"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   375
      Index           =   21
      Left            =   3850
      TabIndex        =   9
      Top             =   3270
      Width           =   375
   End
   Begin VB.Label Lamp 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "V"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   375
      Index           =   22
      Left            =   2730
      TabIndex        =   8
      Top             =   4110
      Width           =   375
   End
   Begin VB.Label Lamp 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "W"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   375
      Index           =   23
      Left            =   1050
      TabIndex        =   7
      Top             =   3270
      Width           =   375
   End
   Begin VB.Label Lamp 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "X"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   375
      Index           =   24
      Left            =   1620
      TabIndex        =   6
      Top             =   4110
      Width           =   375
   End
   Begin VB.Label Lamp 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "Y"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   375
      Index           =   25
      Left            =   1070
      TabIndex        =   5
      Top             =   4110
      Width           =   375
   End
   Begin VB.Label Lamp 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "Z"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   375
      Index           =   26
      Left            =   3280
      TabIndex        =   4
      Top             =   3270
      Width           =   375
   End
   Begin VB.Image kDown 
      Height          =   420
      Index           =   26
      Left            =   5040
      MouseIcon       =   "frmMain.frx":F6C69
      MousePointer    =   99  'Custom
      Picture         =   "frmMain.frx":F6F73
      Stretch         =   -1  'True
      Top             =   8520
      Width           =   420
   End
   Begin VB.Image kDown 
      Height          =   420
      Index           =   25
      Left            =   4620
      MouseIcon       =   "frmMain.frx":F78E5
      MousePointer    =   99  'Custom
      Picture         =   "frmMain.frx":F7BEF
      Stretch         =   -1  'True
      Top             =   8520
      Width           =   420
   End
   Begin VB.Image kDown 
      Height          =   420
      Index           =   24
      Left            =   4200
      MouseIcon       =   "frmMain.frx":F8561
      MousePointer    =   99  'Custom
      Picture         =   "frmMain.frx":F886B
      Stretch         =   -1  'True
      Top             =   8520
      Width           =   420
   End
   Begin VB.Image kDown 
      Height          =   420
      Index           =   23
      Left            =   3780
      MouseIcon       =   "frmMain.frx":F91DD
      MousePointer    =   99  'Custom
      Picture         =   "frmMain.frx":F94E7
      Stretch         =   -1  'True
      Top             =   8520
      Width           =   420
   End
   Begin VB.Image kDown 
      Height          =   420
      Index           =   22
      Left            =   3360
      MouseIcon       =   "frmMain.frx":F9E59
      MousePointer    =   99  'Custom
      Picture         =   "frmMain.frx":FA163
      Stretch         =   -1  'True
      Top             =   8520
      Width           =   420
   End
   Begin VB.Image kDown 
      Height          =   420
      Index           =   21
      Left            =   2940
      MouseIcon       =   "frmMain.frx":FAAD5
      MousePointer    =   99  'Custom
      Picture         =   "frmMain.frx":FADDF
      Stretch         =   -1  'True
      Top             =   8520
      Width           =   420
   End
   Begin VB.Image kDown 
      Height          =   420
      Index           =   20
      Left            =   2520
      MouseIcon       =   "frmMain.frx":FB751
      MousePointer    =   99  'Custom
      Picture         =   "frmMain.frx":FBA5B
      Stretch         =   -1  'True
      Top             =   8520
      Width           =   420
   End
   Begin VB.Image kDown 
      Height          =   420
      Index           =   19
      Left            =   2100
      MouseIcon       =   "frmMain.frx":FC3CD
      MousePointer    =   99  'Custom
      Picture         =   "frmMain.frx":FC6D7
      Stretch         =   -1  'True
      Top             =   8520
      Width           =   420
   End
   Begin VB.Image kDown 
      Height          =   420
      Index           =   18
      Left            =   1680
      MouseIcon       =   "frmMain.frx":FD049
      MousePointer    =   99  'Custom
      Picture         =   "frmMain.frx":FD353
      Stretch         =   -1  'True
      Top             =   8520
      Width           =   420
   End
   Begin VB.Image kDown 
      Height          =   420
      Index           =   17
      Left            =   1260
      MouseIcon       =   "frmMain.frx":FDCC5
      MousePointer    =   99  'Custom
      Picture         =   "frmMain.frx":FDFCF
      Stretch         =   -1  'True
      Top             =   8520
      Width           =   420
   End
   Begin VB.Image kDown 
      Height          =   420
      Index           =   16
      Left            =   840
      MouseIcon       =   "frmMain.frx":FE941
      MousePointer    =   99  'Custom
      Picture         =   "frmMain.frx":FEC4B
      Stretch         =   -1  'True
      Top             =   8520
      Width           =   420
   End
   Begin VB.Image kDown 
      Height          =   420
      Index           =   15
      Left            =   420
      MouseIcon       =   "frmMain.frx":FF5BD
      MousePointer    =   99  'Custom
      Picture         =   "frmMain.frx":FF8C7
      Stretch         =   -1  'True
      Top             =   8520
      Width           =   420
   End
   Begin VB.Image kDown 
      Height          =   420
      Index           =   14
      Left            =   0
      MouseIcon       =   "frmMain.frx":100239
      MousePointer    =   99  'Custom
      Picture         =   "frmMain.frx":100543
      Stretch         =   -1  'True
      Top             =   8520
      Width           =   420
   End
   Begin VB.Image kDown 
      Height          =   420
      Index           =   13
      Left            =   5040
      MouseIcon       =   "frmMain.frx":100EB5
      MousePointer    =   99  'Custom
      Picture         =   "frmMain.frx":1011BF
      Stretch         =   -1  'True
      Top             =   8160
      Width           =   420
   End
   Begin VB.Image kDown 
      Height          =   420
      Index           =   12
      Left            =   4620
      MouseIcon       =   "frmMain.frx":101B31
      MousePointer    =   99  'Custom
      Picture         =   "frmMain.frx":101E3B
      Stretch         =   -1  'True
      Top             =   8160
      Width           =   420
   End
   Begin VB.Image kDown 
      Height          =   420
      Index           =   11
      Left            =   4200
      MouseIcon       =   "frmMain.frx":1027AD
      MousePointer    =   99  'Custom
      Picture         =   "frmMain.frx":102AB7
      Stretch         =   -1  'True
      Top             =   8160
      Width           =   420
   End
   Begin VB.Image kDown 
      Height          =   420
      Index           =   10
      Left            =   3780
      MouseIcon       =   "frmMain.frx":103429
      MousePointer    =   99  'Custom
      Picture         =   "frmMain.frx":103733
      Stretch         =   -1  'True
      Top             =   8160
      Width           =   420
   End
   Begin VB.Image kDown 
      Height          =   420
      Index           =   9
      Left            =   3360
      MouseIcon       =   "frmMain.frx":1040A5
      MousePointer    =   99  'Custom
      Picture         =   "frmMain.frx":1043AF
      Stretch         =   -1  'True
      Top             =   8160
      Width           =   420
   End
   Begin VB.Image kDown 
      Height          =   420
      Index           =   8
      Left            =   2940
      MouseIcon       =   "frmMain.frx":104D21
      MousePointer    =   99  'Custom
      Picture         =   "frmMain.frx":10502B
      Stretch         =   -1  'True
      Top             =   8160
      Width           =   420
   End
   Begin VB.Image kDown 
      Height          =   420
      Index           =   7
      Left            =   2520
      MouseIcon       =   "frmMain.frx":10599D
      MousePointer    =   99  'Custom
      Picture         =   "frmMain.frx":105CA7
      Stretch         =   -1  'True
      Top             =   8160
      Width           =   420
   End
   Begin VB.Image kDown 
      Height          =   420
      Index           =   6
      Left            =   2100
      MouseIcon       =   "frmMain.frx":106619
      MousePointer    =   99  'Custom
      Picture         =   "frmMain.frx":106923
      Stretch         =   -1  'True
      Top             =   8160
      Width           =   420
   End
   Begin VB.Image kDown 
      Height          =   420
      Index           =   5
      Left            =   1680
      MouseIcon       =   "frmMain.frx":107295
      MousePointer    =   99  'Custom
      Picture         =   "frmMain.frx":10759F
      Stretch         =   -1  'True
      Top             =   8160
      Width           =   420
   End
   Begin VB.Image kDown 
      Height          =   420
      Index           =   4
      Left            =   1260
      MouseIcon       =   "frmMain.frx":107F11
      MousePointer    =   99  'Custom
      Picture         =   "frmMain.frx":10821B
      Stretch         =   -1  'True
      Top             =   8160
      Width           =   420
   End
   Begin VB.Image kDown 
      Height          =   420
      Index           =   3
      Left            =   840
      MouseIcon       =   "frmMain.frx":108B8D
      MousePointer    =   99  'Custom
      Picture         =   "frmMain.frx":108E97
      Stretch         =   -1  'True
      Top             =   8160
      Width           =   420
   End
   Begin VB.Image kDown 
      Height          =   420
      Index           =   2
      Left            =   420
      MouseIcon       =   "frmMain.frx":109809
      MousePointer    =   99  'Custom
      Picture         =   "frmMain.frx":109B13
      Stretch         =   -1  'True
      Top             =   8160
      Width           =   420
   End
   Begin VB.Image kDown 
      Height          =   420
      Index           =   1
      Left            =   0
      MouseIcon       =   "frmMain.frx":10A485
      MousePointer    =   99  'Custom
      Picture         =   "frmMain.frx":10A78F
      Stretch         =   -1  'True
      Top             =   8160
      Width           =   420
   End
   Begin VB.Image kDown 
      Height          =   420
      Index           =   0
      Left            =   -120
      MouseIcon       =   "frmMain.frx":10B101
      MousePointer    =   99  'Custom
      Stretch         =   -1  'True
      Top             =   7080
      Width           =   420
   End
   Begin VB.Image imgPlugSetup 
      Height          =   375
      Left            =   120
      MouseIcon       =   "frmMain.frx":10B40B
      MousePointer    =   99  'Custom
      ToolTipText     =   " Set Plugs "
      Top             =   6600
      Width           =   5535
   End
   Begin VB.Image imgBoxOnOff 
      Height          =   495
      Left            =   2280
      MouseIcon       =   "frmMain.frx":10B715
      MousePointer    =   99  'Custom
      ToolTipText     =   "Show textbox "
      Top             =   7080
      Width           =   1335
   End
   Begin VB.Label lblInput 
      BackColor       =   &H00FFFFFF&
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   255
      Left            =   160
      TabIndex        =   31
      ToolTipText     =   " Click here to Copy Output to Clipboard "
      Top             =   7550
      Width           =   5560
      WordWrap        =   -1  'True
   End
   Begin VB.Label lblOutput 
      BackColor       =   &H00FFFFFF&
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   255
      Left            =   160
      TabIndex        =   30
      ToolTipText     =   " Click here to Copy Output to Clipboard "
      Top             =   7740
      Width           =   5560
      WordWrap        =   -1  'True
   End
   Begin VB.Image Image1 
      Height          =   8100
      Left            =   0
      Picture         =   "frmMain.frx":10BA1F
      Stretch         =   -1  'True
      Top             =   0
      Width           =   5865
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private bMoveFrom As Boolean
Private tmpRotor As Integer
Private tmpRing As Integer
Private currPlug As Integer
Private PlugA As String
Private PlugB As String
Private KeyIsDown As Boolean
Private Mem1 As Integer
Private Mem2 As Integer
Private Mem3 As Integer
Private Mem4 As Integer


Private Sub imgRotorBox_Click()
'click on empty place in rotor box
If tmpRotor = 0 Then Exit Sub
Me.imgRotorInBox(tmpRotor).Visible = True
Call SetTempRotor(0, 0)
Call ButtonSound
End Sub

Private Sub ImageSetup_Click(Index As Integer)
'switch to internal view (setupmode)
If Me.Timer2.Enabled = True Then Exit Sub
Call ClearAllKeyDown
Call ButtonSound
Call SetupMode
End Sub

Private Sub imgEndEnigma_Click()
If Me.Timer2.Enabled = True Then Exit Sub
Call EndProgram
End Sub

Private Sub imgHelp_Click()
'show helpfile
dialog1.HelpFile = "Enigma.HLP"
dialog1.HelpCommand = cdlHelpContents
dialog1.ShowHelp
End Sub

Private Sub imgInfo_Click()
'show about window
If Me.Timer2.Enabled = True Then Exit Sub
Call ButtonSound
frmInfo.Show (vbModal)
End Sub

Private Sub imgBoxOnOff_Click()
'display/hide textbox under enigma
Call ButtonSound
If ShowBox = True Then
    ShowBox = False
    frmMain.Height = gintHeightForm
    frmMain.imgBoxOnOff.ToolTipText = " Show Textbox "
    Else
    ShowBox = True
    frmMain.Height = gintHeightBox
    frmMain.imgBoxOnOff.ToolTipText = " Hide Textbox "
    End If
End Sub

Private Sub imgGallerie_Click()
If Me.Timer2.Enabled = True Then Exit Sub
Call ButtonSound
frmGallerie.Show
End Sub

Private Sub lblInput_Click()
'display copy window
If Me.Timer2.Enabled = True Then Exit Sub
frmClipBoard.Show (vbModal)
End Sub

Private Sub lblOutput_Click()
'display copy window
If Me.Timer2.Enabled = True Then Exit Sub
frmClipBoard.Show (vbModal)
End Sub

Private Sub picTitleBar_MouseDown(Index As Integer, button As Integer, Shift As Integer, X As Single, Y As Single)
'get mouse movement
Dim POINT As POINTAPI
GetCursorPos POINT
LastPoint.X = POINT.X
LastPoint.Y = POINT.Y
bMoveFrom = True
End Sub

Private Sub picTitleBar_MouseMove(Index As Integer, button As Integer, Shift As Integer, X As Single, Y As Single)
'if mouse is down, move the form
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

Private Sub picTitleBar_MouseUp(Index As Integer, button As Integer, Shift As Integer, X As Single, Y As Single)
bMoveFrom = False
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
'check keyboard pressing
If Me.Timer2.Enabled = True Then
    'abort auto typing when ESC
    If KeyCode = 27 Then
        Me.Timer2.Enabled = False
        Call ClearAllKeyDown
        Else
        Exit Sub
        End If
    End If
'memo function
If KeyCode = 36 Then Call MemCallStartPos: Exit Sub
If KeyCode = 45 Then Call MemReadStartPos: Exit Sub
Dim Z As String
'allow f1 help
If KeyCode = 112 Then
    Call ClearAllKeyDown
    Exit Sub
    End If
If KeyCode = 116 Then
    Call ButtonSound
    frmClipBoard.Show (vbModal)
    Call ButtonSound
    Exit Sub
    End If
If KeyCode = 117 Then
    Call ButtonSound
    frmQuick.Show (vbModal)
    Call ButtonSound
    Exit Sub
    End If
If KeyIsDown Then Exit Sub
KeyIsDown = True
If KeyCode > 64 And KeyCode < 91 Then
    'readoff alfabet only
    KeyCode = Asc(UCase(Chr(KeyCode)))
    Z = Chr(KeyCode)
    'draw key down
    Call DrawKeyDown(KeyCode - 64)
    'encrypt letter
    EncodeChar (KeyCode - 64)
ElseIf KeyCode = 46 Or KeyCode = 8 Then
    Call ClearAllKeyDown
    'delete text in textbox
    Me.lblInput.Caption = ""
    Me.lblOutput.Caption = ""
    gstrClipInput = ""
    gstrClipOutput = ""
    groupsCount = 1
Else
    KeyCode = 0
End If
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer)
'letter lamp out
KeyIsDown = False
If currentLamp > 0 Then Me.Lamp(currentLamp).ForeColor = &H404040
If KeyCode > 64 And KeyCode < 91 Then
    Call ClearKeyDown(KeyCode - 64)
    End If
End Sub

Private Sub Knopf_MouseDown(Index As Integer, button As Integer, Shift As Integer, X As Single, Y As Single)
'letter button is pressed
If Me.Timer2.Enabled = True Then Exit Sub
Call DrawKeyDown(Index)
Call EncodeChar(Index)
End Sub

Private Sub Knopf_MouseUp(Index As Integer, button As Integer, Shift As Integer, X As Single, Y As Single)
'letter lamp out
If Me.Timer2.Enabled = True Then Exit Sub
If currentLamp > 0 Then Me.Lamp(currentLamp).ForeColor = &H404040
Call ClearKeyDown(Index)
End Sub

Private Sub txtInput_KeyPress(KeyAscii As Integer)
KeyAscii = Asc(UCase(Chr(KeyAscii)))
End Sub

Private Sub RotDown_Click(Index As Integer)
'move rotor manually +1
Call MoveRotorDown(Index)
End Sub

Private Sub RotDown_DblClick(Index As Integer)
'move rotor manually +1
Call MoveRotorDown(Index)
End Sub

Private Sub RotUp_Click(Index As Integer)
'move rotor manually -1
Call MoveRotorUp(Index)
End Sub

Private Sub RotUp_DblClick(Index As Integer)
'move rotor manually -1
Call MoveRotorUp(Index)
End Sub

Private Sub MoveRotorUp(Index As Integer)
'set the rotor-offset -1
RotorOffset(Index) = RotorOffset(Index) - 1: If RotorOffset(Index) < 0 Then RotorOffset(Index) = 25
Call SetWheelView
Call ButtonSound
End Sub

Private Sub MoveRotorDown(Index As Integer)
'set the rotor-offset +1
RotorOffset(Index) = RotorOffset(Index) + 1: If RotorOffset(Index) > 25 Then RotorOffset(Index) = 0
Call SetWheelView
Call ButtonSound
End Sub

'-----------------------------------------------------
'                   SETUP ROTORS
'-----------------------------------------------------
Private Sub SetupMode()
'change to rotorbox view
Dim k As Integer
Me.picOpenCover.Visible = True
Me.picRotorBox.Visible = True
tmpRotor = 0
tmpRing = 0
For k = 1 To 10
    imgRotorInBox(k).Visible = True
Next k
'set the rotors in the macine
For k = 1 To 4
    'display it
    If RotorType(k) <> 0 Then Me.imgRotorInBox(RotorType(k)).Visible = False
    'show the type in roman
    Me.lblRotType(k).Caption = IntToRoman(RotorType(k))
Next k
'if 3-rotor Army, don't display VI, VII and VII
If MODEL = MACHINETYPE.MODEL_M3 Then
    For k = 6 To 10
        Me.imgRotorInBox(k).Visible = False
    Next k
    End If
'display the correct reflector
Call SetReF(ReflectorType)
End Sub

Private Sub imgSetupOK_Click()
'check if all rotors present
Dim k As Integer
For k = 1 To 3
    'don't close cover if not all needed rotors in machine
    If RotorType(k) = 0 Then Exit Sub
Next k
' don't close cover if M4 has no 4th rotor (beta or gamma)
If MODEL = MACHINETYPE.MODEL_M4 And RotorType(4) = 0 Then Exit Sub
'erase eventual displayed lifted rotor
Call SetTempRotor(0, 0)
Me.picOpenCover.Visible = False
Me.picRotorBox.Visible = False
Call ButtonSound
End Sub

Private Sub imgRotInplace_Click(Index As Integer)
If RotorType(Index) <> 0 Then
    'click on rotor in place
    If tmpRotor <> 0 Then Exit Sub
    ' clear it in machine
    Me.imgRotInplace(Index).Picture = Nothing
    ' transfer it's settings to displayed wheel
    Call SetTempRotor(RotorType(Index), RingOffset(Index))
    ' clear setting from whereit came
    Call SetRotorIn(Index, 0, 0)
    Call ButtonSound
    Else
    ' click on empty place in enigma
    'on place 1,2,3 no beta or gamma
    If tmpRotor = 9 Or tmpRotor = 10 Then
        If Index < 4 Then Exit Sub
        End If
    'on place 4 only beta or gamma
    If Index = 4 Then
        If tmpRotor < 9 Then Exit Sub
        End If
    'if no rotor on display , exit
    If tmpRotor = 0 Then Exit Sub
    Call SetRotorIn(Index, tmpRotor, tmpRing)
    Call SetTempRotor(0, 0)
    Call ButtonSound
    End If
End Sub

Private Sub imgRotorInBox_Click(Index As Integer)
' click on rotor in box
If tmpRotor <> 0 Then Exit Sub
Me.imgRotorInBox(Index).Visible = False
Call SetTempRotor(Index, 0)
Call ButtonSound
End Sub

Private Sub lblReflector_MouseDown(button As Integer, Shift As Integer, X As Single, Y As Single)
'click ref label
Call SelectRef(button)
Call ButtonSound
End Sub

Private Sub imgRefThin_MouseDown(button As Integer, Shift As Integer, X As Single, Y As Single)
'click thin reflector
Call SelectRef(button)
Call ButtonSound
End Sub

Private Sub imgRefWide_MouseDown(button As Integer, Shift As Integer, X As Single, Y As Single)
' click on wide reflector
Call SelectRef(button)
Call ButtonSound
End Sub

Private Sub SelectRef(but As Integer)
'cycle between the 4 reflectors
If but = 1 Then
    ReflectorType = ReflectorType + 1
    If ReflectorType > 4 Then ReflectorType = 1
    Else
    ReflectorType = ReflectorType - 1
    If ReflectorType < 1 Then ReflectorType = 4
    End If
Call SetReF(ReflectorType)
End Sub

Private Sub SetReF(refType As Integer)
' set the reflector and display the 3 extra M4 Wheels if needed
Dim k As Integer
With Me
' if wheel outlifted, first put it back
If tmpRotor <> 0 Then
    .imgRotorInBox(tmpRotor).Visible = True
    Call SetTempRotor(0, 0)
    End If
' set the reflector type view
Select Case refType
Case 1 '3-rotor Army with wide B
    .lblReflector.Caption = "B"
    .imgRefWide.Visible = True
    .imgRefThin.Visible = False
    Call SetRotorIn(4, 0, 0)
    .imgHide4.Visible = True
    MODEL = MACHINETYPE.MODEL_M3
Case 2 '3-rotor Army with wide c
    .lblReflector.Caption = "C"
    .imgRefWide.Visible = True
    .imgRefThin.Visible = False
    Call SetRotorIn(4, 0, 0)
    .imgHide4.Visible = True
    MODEL = MACHINETYPE.MODEL_M3
Case 3 'M4 with wide B
    .lblReflector.Caption = "B"
    .imgRefWide.Visible = False
    .imgRefThin.Visible = True
    .imgHide4.Visible = False
    MODEL = MACHINETYPE.MODEL_M4
Case 4 'M4 with wide c
    .lblReflector.Caption = "C"
    .imgRefWide.Visible = False
    .imgRefThin.Visible = True
    .imgHide4.Visible = False
    MODEL = MACHINETYPE.MODEL_M4
End Select
If MODEL = MACHINETYPE.MODEL_M3 Then
    '3-rotor Army model
    'clear all M4 rotors in box
    For k = 6 To 10
        .imgRotorInBox(k).Visible = False
        .RotCaption(k).Visible = False
    Next k
    'clear all M4 rotors, inserted in 3-rotor Army machine
    For k = 1 To 3
        If RotorType(k) > 5 Then Call SetRotorIn(k, 0, 0)
    Next k
    Else
    'M4 model
    'display all available rotors in box
    For k = 6 To 10
        .imgRotorInBox(k).Visible = True
        .RotCaption(k).Visible = True
    Next k
    End If
'clear all rotors in box that are in use in the machine
For k = 1 To 4
    If RotorType(k) <> 0 Then .imgRotorInBox(RotorType(k)).Visible = False
    .lblRotType(k).Caption = IntToRoman(RotorType(k))
Next k
End With
End Sub

Private Sub SetTempRotor(RotNr As Integer, RotRing As Integer)
' hold settings of out-lifted (displayd) rotor
If RotNr <> 0 Then
    Me.imgTmpRotor.Visible = True
    Me.lblRing.Visible = True
    Me.lblRotNr.Visible = True
    Me.imgRingPos(1).Visible = True
    Me.imgRingPos(2).Visible = True
    tmpRotor = RotNr
    tmpRing = RotRing
    Me.lblRotNr = IntToRoman(tmpRotor)
    Me.lblRing.Caption = SetRingLabel(tmpRing)
    Else
    Me.imgTmpRotor.Visible = False
    Me.lblRing.Visible = False
    Me.lblRotNr.Visible = False
    Me.imgRingPos(1).Visible = False
    Me.imgRingPos(2).Visible = False
    tmpRotor = 0
    tmpRing = 0
    End If
End Sub

Private Sub SetRotorIn(Index As Integer, RotNr As Integer, RotRing As Integer)
'validate settings of placed rotor by given position and ringsetting
If RotNr <> 0 Then
    Me.imgRotInplace(Index).Picture = picRotorIN(Index).Picture
    RotorType(Index) = RotNr
    RingOffset(Index) = RotRing
    Me.lblRotType(Index).Caption = IntToRoman(RotNr)
    Else
    Me.imgRotInplace(Index).Picture = Nothing
    RotorType(Index) = 0
    RingOffset(Index) = 0
    Me.lblRotType(Index).Caption = ""
    End If
End Sub

Private Function IntToRoman(convR As Integer) As String
' get roman figure for outlifted view
Select Case convR
Case 1
    IntToRoman = "I"
Case 2
    IntToRoman = "II"
Case 3
    IntToRoman = "III"
Case 4
    IntToRoman = "IV"
Case 5
    IntToRoman = "V"
Case 6
    IntToRoman = "VI"
Case 7
    IntToRoman = "VII"
Case 8
    IntToRoman = "VIII"
Case 9
    IntToRoman = "Beta"
Case 10
    IntToRoman = "Gamma"
End Select
End Function

Private Sub lblRing_Click()
'adjust the ringsetting on outlifted wheel
tmpRing = tmpRing - 1
If tmpRing < 0 Then tmpRing = 25
Me.lblRing.Caption = SetRingLabel(tmpRing)
Call ButtonSound
End Sub

Private Sub lblRing_DblClick()
'adjust the ringsetting on outlifted wheel
tmpRing = tmpRing - 1
If tmpRing < 0 Then tmpRing = 25
Me.lblRing.Caption = SetRingLabel(tmpRing)
Call ButtonSound
End Sub

Private Sub lblRotNr_Click()
'adjust the ringsetting on outlifted wheel
tmpRing = tmpRing + 1
If tmpRing > 25 Then tmpRing = 0
Me.lblRing.Caption = SetRingLabel(tmpRing)
Call ButtonSound
End Sub

Private Sub lblRotNr_DblClick()
'adjust the ringsetting on outlifted wheel
tmpRing = tmpRing + 1
If tmpRing > 25 Then tmpRing = 0
Me.lblRing.Caption = SetRingLabel(tmpRing)
Call ButtonSound
End Sub

Private Sub imgRingPos_MouseDown(Index As Integer, button As Integer, Shift As Integer, X As Single, Y As Single)
'adjust the ringsetting on outlifted wheel
If Index = 1 Then
    tmpRing = tmpRing + 1
    If tmpRing > 25 Then tmpRing = 0
    Else
    tmpRing = tmpRing - 1
    If tmpRing < 0 Then tmpRing = 25
    End If
Me.lblRing.Caption = SetRingLabel(tmpRing)
Call ButtonSound
End Sub

Private Sub imgRingPos_DblClick(Index As Integer)
'adjust the ringsetting on outlifted wheel
If Index = 1 Then
    tmpRing = tmpRing + 1
    If tmpRing > 25 Then tmpRing = 0
    Else
    tmpRing = tmpRing - 1
    If tmpRing < 0 Then tmpRing = 25
    End If
Me.lblRing.Caption = SetRingLabel(tmpRing)
Call ButtonSound
End Sub

Private Function SetRingLabel(ByVal Lval As Integer) As String
'show ringsettings on outlifted wheel
Lval = Lval + 1
SetRingLabel = Trim(Str(tmpRing + 1))
If Lval < 10 Then SetRingLabel = "0" & SetRingLabel
SetRingLabel = Chr(tmpRing + 65) & "-" & SetRingLabel
Call ButtonSound
End Function


'-----------------------------------------------------
'                   SETUP PLUGS
'-----------------------------------------------------

Private Sub imgPlugSetup_Click()
If Me.Timer2.Enabled = True Then Exit Sub
'change to plugboard view
Dim k As Integer
Dim tmp As String
Call ClearAllKeyDown
Call ButtonSound
With Me
.Height = .picPlugBoard.Height
If ShowBox = True Then
    .Top = .Top + (gintHeightBox - .picPlugBoard.Height)
    Else
    .Top = .Top + (gintHeightForm - .picPlugBoard.Height)
    End If
.picPlugBoard.Visible = True
If .Top + .picPlugBoard.Height > Screen.Height Then
    .Top = Screen.Height - .picPlugBoard.Height
    End If
'set all current plugs
For k = 1 To 26
    tmp = Mid(STECKER, k, 1)
    If tmp <> Chr(k + 64) Then
        'if letter in stecker-string not in place, set plugs
        .Plug(k).Picture = .Plug(0).Picture
        .Plug(Asc(tmp) - 64).Picture = .Plug(0).Picture
        .PlugText(k).Caption = tmp
        .PlugText(Asc(tmp) - 64).Caption = Chr(k + 64)
        Else
        .Plug(k).Picture = Nothing
        .PlugText(k).Caption = ""
        End If
Next k
End With
End Sub

Private Sub imgExitPluGSetup_Click()
' return to normal view
With Me
Call ButtonSound
If currPlug = 1 Then
    'wipe last uncompleted plugpair
    .PlugText(Asc(PlugA) - 64).Caption = ""
    .Plug(Asc(PlugA) - 64).Visible = False
    currPlug = 0
    End If
.picPlugBoard.Visible = False
If ShowBox = True Then
    .Top = Me.Top - (gintHeightBox - .picPlugBoard.Height)
    .Height = gintHeightBox
    Else
    .Top = Me.Top - (gintHeightForm - .picPlugBoard.Height)
    .Height = gintHeightForm
    End If
If .Top < 0 Then Me.Top = 0
End With
End Sub

Private Sub Plug_Click(Index As Integer)
Call ClickPlug(Index)
End Sub

Private Sub PlugText_Click(Index As Integer)
Call ClickPlug(Index)
End Sub

Private Sub ClickPlug(PlugNr As Integer)
Dim Sa As String
Dim Sb As String
Dim Z As Integer
Call ButtonSound
Z = Asc(Mid(STECKER, PlugNr, 1)) - 64
If currPlug = 1 Then
    If Z = (Asc(PlugA) - 64) Then
        'click twice te same plug, so delete  plug
        Me.PlugText(Asc(PlugA) - 64).Caption = ""
        Me.Plug(Asc(PlugA) - 64).Picture = Nothing
        currPlug = 0
        Exit Sub
        End If
    End If
If Z = PlugNr Then
    'plug was not used
    If currPlug = 0 Then
        'set first of pair
        Me.Plug(PlugNr).Picture = Me.Plug(0).Picture
        PlugA = Mid(STECKER, PlugNr, 1)
        currPlug = 1
        Me.PlugText(Asc(PlugA) - 64).Caption = PlugA
        Else
        'set second of pair
        PlugB = Mid(STECKER, PlugNr, 1)
        Me.Plug(PlugNr).Picture = Me.Plug(0).Picture
        Me.PlugText(Asc(PlugA) - 64).Caption = PlugB
        Me.PlugText(Asc(PlugB) - 64).Caption = PlugA
        'switch stecker
        Mid(STECKER, Asc(PlugA) - 64, 1) = PlugB
        Mid(STECKER, Asc(PlugB) - 64, 1) = PlugA
        currPlug = 0
        End If
    Else
    'the selected plug was used, so clear plug pair
    Me.Plug(PlugNr).Picture = Nothing
    Me.Plug(Z).Picture = Nothing
    Sa = Mid(STECKER, Z, 1)
    Sb = Mid(STECKER, PlugNr, 1)
    Mid(STECKER, Asc(Sa) - 64, 1) = Sa
    Mid(STECKER, Asc(Sb) - 64, 1) = Sb
    Me.PlugText(Asc(Sa) - 64).Caption = ""
    Me.PlugText(Asc(Sb) - 64).Caption = ""
    End If
End Sub

Private Sub Timer1_Timer()
' display flashing message at start pointing to readme
Static flashCount As Integer
flashCount = flashCount + 1
Select Case flashCount
    Case 1, 3, 5, 7
        Me.lblInfo.Visible = False
    Case 2, 4, 6, 8
        Me.lblInfo.Visible = True
    Case 24
        Me.Timer1.Enabled = False
        Me.lblInfo.Visible = False
End Select
End Sub

Private Sub DrawKeyDown(currKey As Integer)
Me.Knopf(currKey).Picture = Me.kDown(currKey)
End Sub

Private Sub ClearKeyDown(currKey As Integer)
Me.Knopf(currKey).Picture = Nothing
End Sub

Private Sub ClearAllKeyDown()
Dim i As Integer
For i = 1 To 26
    Call ClearKeyDown(i)
Next i
End Sub

Private Sub EncodeChar(Index As Integer)
' encode or decode a selected letter
Dim Z As String
Dim L As Integer
With frmMain
'delet previous lamp
If currentLamp > 0 Then .Lamp(currentLamp).ForeColor = &H404040
Z = Chr(Index + 64)
gstrClipInput = gstrClipInput & Z
'pass letter trough all plugs,rotors and reflector
Z = CRYPTO(Z)
'set lamp
.Lamp(Asc(Z) - 64).ForeColor = &HC0FFFF
currentLamp = Asc(Z) - 64
.lblInput.Caption = .lblInput.Caption & Chr(Index + 64)
.lblOutput.Caption = .lblOutput.Caption & Z
gstrClipOutput = gstrClipOutput & Z
'display groups of 5 (3-rotor Army) or groups of 4 (M4)
groupsCount = groupsCount + 1
If MODEL = MACHINETYPE.MODEL_M3 And groupsCount = 6 Then
    groupsCount = 1
    .lblInput.Caption = .lblInput.Caption & " "
    .lblOutput.Caption = .lblOutput.Caption & " "
    gstrClipInput = gstrClipInput & " "
    gstrClipOutput = gstrClipOutput & " "
ElseIf MODEL = MACHINETYPE.MODEL_M4 And groupsCount = 5 Then
    groupsCount = 1
    .lblInput.Caption = .lblInput.Caption & " "
    .lblOutput.Caption = .lblOutput.Caption & " "
    gstrClipInput = gstrClipInput & " "
    gstrClipOutput = gstrClipOutput & " "
    End If
If Len(.lblInput.Caption) > 52 Then
    .lblInput.Caption = Right(.lblInput.Caption, 52)
    .lblOutput.Caption = Right(.lblOutput.Caption, 52)
    End If
Call SetWheelView
End With
End Sub

Private Sub Timer2_Timer()
'Auto-Typing timer
Static prevKey As Integer
Dim tmpchar As Integer
'wipe previous lamp
If currentLamp > 0 Then frmMain.Lamp(currentLamp).ForeColor = &H404040
'draw all keys up
If prevKey <> 0 Then Call ClearKeyDown(prevKey)
If gstrQuickString = "" Then
    'end of text is reached
    Me.Timer2.Enabled = False
    prevKey = 0
    Exit Sub
    End If
'process next char from textwindow
tmpchar = Asc(Left(gstrQuickString, 1)) - 64
gstrQuickString = Mid(gstrQuickString, 2)
Call DrawKeyDown(tmpchar)
Call EncodeChar(tmpchar)
prevKey = tmpchar
End Sub

Private Sub MemReadStartPos()
'save the current rotor start positions
Mem1 = RotorOffset(1)
Mem2 = RotorOffset(2)
Mem3 = RotorOffset(3)
Mem4 = RotorOffset(4)
Call ButtonSound
End Sub

Private Sub MemCallStartPos()
'restore the saved rotor start positions
RotorOffset(1) = Mem1
RotorOffset(2) = Mem2
RotorOffset(3) = Mem3
RotorOffset(4) = Mem4
Call SetWheelView
Call ButtonSound
End Sub
