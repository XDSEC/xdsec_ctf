Attribute VB_Name = "Module1"

'----------------------------------------------
'  ENIGMA simulation (c) Dirk Rijmenants 2004
'----------------------------------------------

' This code simulates the authentical functioning of the ENIGMA
' machine as used by the Whermacht and Luftwaffe (3-rotor Army)
' and the famous 4-rotor MODEL M4 by the Kriegmarine.
'
' Copyright 2004 by D. Rijmenants
'
' Pictures in gallery Copyright by:
'   (c) KMi, The Open University, 2000
'   (c) Tom Perera - Enigma Museum www.w1tp.com/enigma
'
'wheel positions model 3-rotor Army(Whermacht & Luftwaffe):
'REFLECTOR/  ROTOR3  /  ROTOR2  /  ROTOR1
'signal passes ROTOR1/ROTOR2/ROTOR3/REFLECTOR/ROTOR3/ROTOR2/ROTOR1

'wheel positions model M4 (Kriegsmarine):
'REFLECTOR/  ROTORm  /  ROTOR3  /  ROTOR2  /  ROTOR1
'signal passes ROTOR1/ROTOR2/ROTOR3/ROTORm/REFLECTOR/ROTORm/ROTOR3/ROTOR2/ROTOR1

Option Explicit

' all predefined rotors
Public ROTORS(10) As String

' currently used rotors
' example: 2nd rotor is a type V, so RotorType(2) = 5
' thus the 2nd rotor-string is ROTORS(RotorType(2))
Public RotorType(4) As Integer

'all predefined reflectors
Public REFLECTORS(4) As String

' currently used reflectors
' example: thin B, so ReflectorType = 3
' thus the reflector-string is REFLECTORS(ReflectorType)
Public ReflectorType As Integer

' offset of the internal wirings (ringstellung)
Public RingOffset(4) As Integer

' current rotoroffset (wheelposition)
Public RotorOffset(4) As Integer

' plug alfabet with (optional) switched letters
Public STECKER As String

'machine type
Public MODEL As Integer
Public Enum MACHINETYPE
    MODEL_M3 'Whermacht/Luftwaffe
    MODEL_M4 'KriegsMarine
   'ENIGMA_D 'non military use
End Enum

'curently burning lamp
Public currentLamp As Integer

'count the letters (to display in groups of 4 or 5)
Public groupsCount As Integer

Public Const gintHeightForm = 7360
Public Const gintHeightBox = 8115

Public ShowBox As Boolean
Public gstrClipInput As String
Public gstrClipOutput As String
Public gstrQuickString As String

'point api to move form
Public Declare Function GetCursorPos Lib "user32" (lpPoint As POINTAPI) As Long
Public LastPoint As POINTAPI
Public iTPPY As Long
Public iTPPX As Long
Public Type POINTAPI
        X As Long
        Y As Long
End Type

'sound api
Declare Function sndPlaySound Lib "WINMM.DLL" Alias "sndPlaySoundA" _
        (ByVal lpszSoundName As Any, ByVal uFlags As Long) As Long
Public Const SND_ASYNC = &H1     ' Play asynchronously
Public Const SND_NODEFAULT = &H2 ' Don't use default sound
Public Const SND_MEMORY = &H4    ' lpszSoundName points to a memory file
Public SoundBuffer As String

Sub Main()
Dim k As Integer
Dim tmp As String
iTPPX& = Screen.TwipsPerPixelX
iTPPY& = Screen.TwipsPerPixelY
'Rotors KriegsMarine/Whermacht/Luftwaffe
ROTORS(1) = "EKMFLGDQVZNTOWYHXUSPAIBRCJ" ' I
ROTORS(2) = "AJDKSIRUXBLHWTMCQGZNPYFVOE" ' II
ROTORS(3) = "BDFHJLCPRTXVZNYEIWGAKMUSQO" ' III
ROTORS(4) = "ESOVPZJAYQUIRHXLNFTGKDCMWB" ' IV
ROTORS(5) = "VZBRGITYUPSDNHLXAWMJQOFECK" ' V
'Rotors used by KriegsMarine only
ROTORS(6) = "JPGVOUMFYQBENHZRDKASXLICTW" ' VI
ROTORS(7) = "NZJHGRCXMYSWBOUFAIVLPEKQDT" ' VII
ROTORS(8) = "FKQHTLXOCBJSPDZRAMEWNIUYGV" ' VIII
'Thin (4th) rotors marine to be inserted before thin reflectors only
ROTORS(9) = "LEYJVCNIXWPBQMDRTAKZGFUHOS" ' Beta
ROTORS(10) = "FSOKANUERHMBTIYCWLQPZXVGJD" ' Gamma
'Reflectors Whermacht/Luftwaffe
REFLECTORS(1) = "YRUHQSLDPXNGOKMIEBFZCWVJAT" ' Reflector_B
REFLECTORS(2) = "FVPJIAOYEDRZXWGCTKUQSBNMHL" ' Reflector_C
'Thin reflectors Marine
REFLECTORS(3) = "ENKQAUYWJICOPBLMDXZVFTHRGS" ' Reflector B dunn
REFLECTORS(4) = "RDOBJNTKVEHMLFCWZAXGYIPSUQ" ' Reflector C dunn
STECKER = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
'forms setup
Load frmMain
Load frmGallerie
Load frmInfo
frmGallerie.File1.Path = App.Path
With frmMain
    'duplicate rotors in box
    For k = 2 To 8
        .imgRotorInBox(k).Picture = .imgRotorInBox(1).Picture
    Next k
    'duplicate rotors in machine
    'For k = 2 To 3
    '    .picRotorIN(k).Picture = .picRotorIN(1).Picture
    'Next k
    .Width = 5850
    .Height = 7350
    .picOpenCover.Left = 0 '180
    .picOpenCover.Top = 300
    .picOpenCover.Width = frmMain.Width
    '.picTmpRotor.Left = 2950
    '.picTmpRotor.Top = 2825
    .picRotorBox.Left = 120
    .picRotorBox.Top = 4850
    .picPlugBoard.Left = 0
    .picPlugBoard.Top = 0
    .Show
End With
tmp = GetSetting(App.EXEName, "Set", "PLG", "")
If Len(tmp) = 26 Then
    'Get saved enigma settings
    STECKER = tmp
    For k = 1 To 4
    RotorType(k) = Val(GetSetting(App.EXEName, "Set", "ROT" & Trim(Str(k)), ""))
    RingOffset(k) = Val(GetSetting(App.EXEName, "Set", "RNG" & Trim(Str(k)), ""))
    Next k
    ReflectorType = Val(GetSetting(App.EXEName, "Set", "REF"))
    If RotorType(4) = 0 Then
        MODEL = MACHINETYPE.MODEL_M3
        frmMain.imgHide4.Visible = True
        frmMain.picRotorIN(4).Visible = False
        Else
        MODEL = MACHINETYPE.MODEL_M4
        frmMain.imgHide4.Visible = False
        frmMain.picRotorIN(4).Visible = True
        End If
    Else
    ' used basic settings
    For k = 1 To 4
        RingOffset(k) = 0
    Next k
    RotorType(1) = 3
    RotorType(2) = 2
    RotorType(3) = 1
    RotorType(4) = 0
    ReflectorType = 1
    MODEL = MACHINETYPE.MODEL_M3
    End If
groupsCount = 1
For k = 1 To 4
    RotorOffset(k) = 0
Next k
Call SetWheelView
End Sub

Public Function CRYPTO(Tekst As String) As String
'complete signal encryption cyclus
Dim E As String
'advance wheels
Call ROTOR_DREHEN
'press a letter
E = Tekst
'pass it thrue optional jumpers
E = Zeichen_STECKER(E)
'pass right rotor
E = Zeichen_OUT(E, 1)
'pass 2nd rotor from the right
E = Zeichen_OUT(E, 2)
'pass 3th rotor from the right
E = Zeichen_OUT(E, 3)
'if marine model, pass 4th rotor from the right
If MODEL = MACHINETYPE.MODEL_M4 Then E = Zeichen_OUT(E, 4)
'return the signal thrue the reflector
E = Zeichen_REFLECTOR(E)
'if marine model, pass back 4th rotor from the right
If MODEL = MACHINETYPE.MODEL_M4 Then E = Zeichen_IN(E, 4)
'pass back 3th rotor from the right
E = Zeichen_IN(E, 3)
'pass back 2nd rotor from the right
E = Zeichen_IN(E, 2)
'pass back right rotor
E = Zeichen_IN(E, 1)
'pass the signal back thrue the optional jumpers
E = Zeichen_STECKER(E)
CRYPTO = E
Call SetWheelView
End Function

Public Sub ROTOR_DREHEN()
'advance the rotors
Dim N1 As Boolean
Dim N2 As Boolean
Dim N3 As Boolean
Dim N4 As Boolean
Call ButtonSound
' check if notch in position for given wheel and position
N1 = ROTORNOTCH(RotorType(1), RotorOffset(1))
N2 = ROTORNOTCH(RotorType(2), RotorOffset(2))
RotorOffset(1) = RotorOffset(1) + 1: If RotorOffset(1) > 25 Then RotorOffset(1) = 0
If N1 = True Or N2 = True Then
    'Rotate ROTOR2 (2nd rotor from right) when:
    '   OR ROTOR1 passed notch
    '   OR each time when ROTOR2 is on his own notch (famouse double-step)
    RotorOffset(2) = RotorOffset(2) + 1: If RotorOffset(2) > 25 Then RotorOffset(2) = 0
    If N2 = False Then Exit Sub
    'turn ROTOR3 (3th rotor from right)
    RotorOffset(3) = RotorOffset(3) + 1: If RotorOffset(3) > 25 Then RotorOffset(3) = 0
    'NOTE: the thin 4th rotor never advances
    End If
End Sub

Public Function ROTORNOTCH(walze As Integer, ByVal offset As Integer) As Boolean
' get the notches, that make advance the next rotor
' Note: M4 rotors VI, VII and VIII have two notches !
' behind each code is noted the turnover letter
' a.i: if rotor I steps from Q to R, the next rotor is advanced
Dim NotchCharacter As Integer
NotchCharacter = offset + 1
Select Case walze
Case 1
    If NotchCharacter = 17 Then ROTORNOTCH = True 'I=Q
Case 2
    If NotchCharacter = 5 Then ROTORNOTCH = True 'II=E
Case 3
    If NotchCharacter = 22 Then ROTORNOTCH = True 'III=V
Case 4
    If NotchCharacter = 10 Then ROTORNOTCH = True 'IV=J
Case 5
    If NotchCharacter = 26 Then ROTORNOTCH = True 'V=Z
Case 6
    If NotchCharacter = 13 Or NotchCharacter = 26 Then ROTORNOTCH = True 'VI=M+Z
Case 7
    If NotchCharacter = 13 Or NotchCharacter = 26 Then ROTORNOTCH = True 'VII=M+Z
Case 8
    If NotchCharacter = 13 Or NotchCharacter = 26 Then ROTORNOTCH = True 'VIII=M+Z
End Select
End Function

Public Function Zeichen_STECKER(Zeichen As String) As String
'pass switching plugs
Dim Z As Integer
Z = Asc(Zeichen) - 64
Zeichen_STECKER = Mid(STECKER, Z, 1)
End Function

Public Function Zeichen_OUT(Zeichen As String, wheelNr As Integer) As String
'go left, direction reflector (Umkehrwalze)
Dim Z As Integer
Dim offsetZ As Integer
offsetZ = RotorOffset(wheelNr) - RingOffset(wheelNr)
Z = (Asc(Zeichen) - 64) + offsetZ
If Z < 1 Then Z = Z + 26
If Z > 26 Then Z = Z - 26
Zeichen = Mid(ROTORS(RotorType(wheelNr)), Z, 1)
Z = (Asc(Zeichen) - 64) - offsetZ
If Z < 1 Then Z = Z + 26
If Z > 26 Then Z = Z - 26
Zeichen_OUT = Chr(Z + 64)
End Function

Public Function Zeichen_REFLECTOR(Zeichen As String) As String
'reflect the signal in 'Umkehrwalze'
Dim Z As Integer
Z = Asc(Zeichen) - 64
Zeichen_REFLECTOR = Mid(REFLECTORS(ReflectorType), Z, 1)
End Function

Public Function Zeichen_IN(Zeichen As String, wheelNr As Integer) As String
'go back right, direction entry wheel (Eintrittswalze)
Dim Z As Integer
Dim offsetZ As Integer
offsetZ = RotorOffset(wheelNr) - RingOffset(wheelNr)
Z = (Asc(Zeichen) - 64) + offsetZ
If Z < 1 Then Z = Z + 26
If Z > 26 Then Z = Z - 26
Zeichen = Chr(Z + 64)
For Z = 1 To 26
    If Zeichen = Mid(ROTORS(RotorType(wheelNr)), Z, 1) Then Exit For
Next Z
Z = Z - offsetZ
If Z < 1 Then Z = Z + 26
If Z > 26 Then Z = Z - 26
Zeichen_IN = Chr(Z + 64)
End Function

Public Sub SetWheelView()
' Put the letters in the Wheel-window
Dim k As Integer
With frmMain
'display the letters in the rotor-windows
.lblROT1.Caption = Chr(RotorOffset(1) + 65)
.lblROT2.Caption = Chr(RotorOffset(2) + 65)
.lblROT3.Caption = Chr(RotorOffset(3) + 65)
.lblROT4.Caption = Chr(RotorOffset(4) + 65)
For k = 1 To 4
    ' change the ribons view each 2nd position
    ' to create a moving effect
    If (RotorOffset(k) Mod 2) = 0 Then
    .imgRotMove(k).Visible = False
    Else
    .imgRotMove(k).Visible = True
    End If
Next k
End With
End Sub

Public Sub ButtonSound()
'play sound
Dim Ret
SoundBuffer = StrConv(LoadResData(1, "Geluiden"), vbUnicode)
Ret = sndPlaySound(SoundBuffer, SND_ASYNC Or SND_NODEFAULT Or SND_MEMORY)
End Sub

Public Sub EndProgram()
' save current settings, or delete then all
Dim k As Integer
Dim Retval As Integer
Retval = MsgBox("Do you want to save the current Enigma settings ?" & vbCrLf & "(select No to erase all previously saved settings)", vbQuestion + vbYesNoCancel, " Exit Enigma")
If Retval = vbCancel Then Exit Sub
If Retval = vbYes Then
    For k = 1 To 4
    SaveSetting App.EXEName, "Set", "ROT" & Trim(Str(k)), RotorType(k)
    SaveSetting App.EXEName, "Set", "RNG" & Trim(Str(k)), RingOffset(k)
    Next k
    SaveSetting App.EXEName, "Set", "PLG", STECKER
    SaveSetting App.EXEName, "Set", "REF", ReflectorType
    Else
    For k = 1 To 4
    SaveSetting App.EXEName, "Set", "ROT" & Trim(Str(k)), ""
    SaveSetting App.EXEName, "Set", "RNG" & Trim(Str(k)), ""
    Next k
    SaveSetting App.EXEName, "Set", "PLG", ""
    SaveSetting App.EXEName, "Set", "REF", ""
    End If
Unload frmMain
Unload frmGallerie
Unload frmInfo
Unload frmClipBoard
Unload frmQuick
End
End Sub

