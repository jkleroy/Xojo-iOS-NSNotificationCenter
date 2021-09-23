#tag MobileScreen
Begin MobileScreen ScreenHome
   BackButtonCaption=   ""
   Compatibility   =   ""
   ControlCount    =   0
   HasNavigationBar=   True
   LargeTitleDisplayMode=   2
   Left            =   0
   TabBarVisible   =   True
   TabIcon         =   0
   TintColor       =   ""
   Title           =   "NSNotificationCenter Examples"
   Top             =   0
   Begin iOSMobileTable Table
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AllowRefresh    =   False
      AllowSearch     =   False
      AutoLayout      =   Table, 1, <Parent>, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Table, 2, <Parent>, 2, False, +1.00, 4, 1, -0, , True
      AutoLayout      =   Table, 3, TopLayoutGuide, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Table, 4, BottomLayoutGuide, 4, False, +1.00, 4, 1, 0, , True
      ControlCount    =   0
      EditingEnabled  =   False
      Enabled         =   True
      EstimatedRowHeight=   -1
      Format          =   0
      Height          =   503
      Left            =   0
      LockedInPosition=   False
      Scope           =   2
      SectionCount    =   0
      TintColor       =   ""
      Top             =   65
      Visible         =   True
      Width           =   320
   End
End
#tag EndMobileScreen

#tag WindowCode
#tag EndWindowCode

#tag Events Table
	#tag Event
		Sub Opening()
		  
		  Dim section As Integer
		  
		  Dim cell As MobileTableCellData
		  
		  section = me.AddSection("Keyboard")
		  
		  cell = me.CreateCell("TextField and button", "", Picture.SystemImage("textbox", 20))
		  cell.Tag = "textfield"
		  me.AddRow(section, cell)
		  
		  cell = me.CreateCell("TextArea", "", Picture.SystemImage("doc.plaintext", 20))
		  cell.Tag = "textarea"
		  me.AddRow(section, cell)
		  
		  cell = me.CreateCell("Long form", "", Picture.SystemImage("list.dash", 20))
		  cell.Tag = "longform"
		  me.AddRow(section, cell)
		End Sub
	#tag EndEvent
	#tag Event
		Sub SelectionChanged(section As Integer, row As Integer)
		  
		  Dim tag As String = me.RowCellData(section, row).Tag
		  
		  Select case tag
		    
		  Case "textfield"
		    
		    Dim scr As new ScreenTextField
		    scr.Show(self)
		    
		  Case "textarea"
		    
		    Dim scr As new ScreenTextArea
		    scr.Show(self)
		    
		    
		  Case "longform"
		    
		    Dim scr As new ScreenLongForm
		    scr.Show(self)
		    
		  Else
		    Break //Unknown tag
		  End Select
		End Sub
	#tag EndEvent
#tag EndEvents
