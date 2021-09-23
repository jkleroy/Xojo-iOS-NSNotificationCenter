#tag MobileScreen
Begin MobileScreen ScreenLongForm
   BackButtonCaption=   ""
   Compatibility   =   ""
   ControlCount    =   0
   HasNavigationBar=   True
   LargeTitleDisplayMode=   2
   Left            =   0
   TabBarVisible   =   True
   TabIcon         =   0
   TintColor       =   "&h00000000"
   Title           =   "Keyboard height"
   Top             =   0
   Begin MobileTextField TextField1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AllowAutoCorrection=   False
      AllowSpellChecking=   False
      AutoCapitalizationType=   0
      AutoLayout      =   TextField1, 1, <Parent>, 1, False, +1.00, 4, 1, *kStdGapCtlToViewH, , True
      AutoLayout      =   TextField1, 2, <Parent>, 2, False, +1.00, 4, 1, -*kStdGapCtlToViewH, , True
      AutoLayout      =   TextField1, 3, TopLayoutGuide, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   TextField1, 8, , 0, True, +1.00, 4, 1, 31, , True
      BorderStyle     =   3
      ControlCount    =   0
      Enabled         =   True
      Height          =   31
      Hint            =   "First name"
      InputType       =   0
      Left            =   20
      LockedInPosition=   False
      Password        =   False
      ReadOnly        =   False
      ReturnCaption   =   0
      Scope           =   2
      Text            =   ""
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   ""
      Top             =   73
      Visible         =   True
      Width           =   280
   End
   Begin MobileButton Button1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button1, 9, <Parent>, 9, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button1, 7, , 0, False, +1.00, 4, 1, 120, , True
      AutoLayout      =   Button1, 3, TextField8, 4, False, +1.00, 4, 1, *kStdControlGapV, button_bottom, True
      AutoLayout      =   Button1, 8, , 0, False, +1.00, 4, 1, 30, , True
      Caption         =   "Submit"
      CaptionColor    =   &c007AFF00
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   100
      LockedInPosition=   False
      Scope           =   2
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   ""
      Top             =   385
      Visible         =   True
      Width           =   120
   End
   Begin MobileTextField TextField2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AllowAutoCorrection=   False
      AllowSpellChecking=   False
      AutoCapitalizationType=   0
      AutoLayout      =   TextField2, 1, TextField1, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   TextField2, 7, , 0, False, +1.00, 4, 1, 280, , True
      AutoLayout      =   TextField2, 3, TextField1, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   TextField2, 8, , 0, True, +1.00, 4, 1, 31, , True
      BorderStyle     =   3
      ControlCount    =   0
      Enabled         =   True
      Height          =   31
      Hint            =   "Last name"
      InputType       =   0
      Left            =   20
      LockedInPosition=   False
      Password        =   False
      ReadOnly        =   False
      ReturnCaption   =   0
      Scope           =   2
      Text            =   ""
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   ""
      Top             =   112
      Visible         =   True
      Width           =   280
   End
   Begin MobileTextField TextField3
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AllowAutoCorrection=   False
      AllowSpellChecking=   False
      AutoCapitalizationType=   0
      AutoLayout      =   TextField3, 1, TextField2, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   TextField3, 7, , 0, False, +1.00, 4, 1, 280, , True
      AutoLayout      =   TextField3, 3, TextField2, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   TextField3, 8, , 0, True, +1.00, 4, 1, 31, , True
      BorderStyle     =   3
      ControlCount    =   0
      Enabled         =   True
      Height          =   31
      Hint            =   "Age"
      InputType       =   4
      Left            =   20
      LockedInPosition=   False
      Password        =   False
      ReadOnly        =   False
      ReturnCaption   =   0
      Scope           =   2
      Text            =   ""
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   ""
      Top             =   151
      Visible         =   True
      Width           =   280
   End
   Begin MobileTextField TextField4
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AllowAutoCorrection=   False
      AllowSpellChecking=   False
      AutoCapitalizationType=   0
      AutoLayout      =   TextField4, 1, TextField3, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   TextField4, 7, , 0, False, +1.00, 4, 1, 280, , True
      AutoLayout      =   TextField4, 3, TextField3, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   TextField4, 8, , 0, True, +1.00, 4, 1, 31, , True
      BorderStyle     =   3
      ControlCount    =   0
      Enabled         =   True
      Height          =   31
      Hint            =   "Street Address"
      InputType       =   0
      Left            =   20
      LockedInPosition=   False
      Password        =   False
      ReadOnly        =   False
      ReturnCaption   =   0
      Scope           =   2
      Text            =   ""
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   ""
      Top             =   190
      Visible         =   True
      Width           =   280
   End
   Begin MobileTextField TextField5
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AllowAutoCorrection=   False
      AllowSpellChecking=   False
      AutoCapitalizationType=   0
      AutoLayout      =   TextField5, 1, TextField4, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   TextField5, 7, , 0, False, +1.00, 4, 1, 280, , True
      AutoLayout      =   TextField5, 3, TextField4, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   TextField5, 8, , 0, True, +1.00, 4, 1, 31, , True
      BorderStyle     =   3
      ControlCount    =   0
      Enabled         =   True
      Height          =   31
      Hint            =   "Postal code"
      InputType       =   0
      Left            =   20
      LockedInPosition=   False
      Password        =   False
      ReadOnly        =   False
      ReturnCaption   =   0
      Scope           =   2
      Text            =   ""
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   ""
      Top             =   229
      Visible         =   True
      Width           =   280
   End
   Begin MobileTextField TextField6
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AllowAutoCorrection=   False
      AllowSpellChecking=   False
      AutoCapitalizationType=   0
      AutoLayout      =   TextField6, 1, TextField5, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   TextField6, 7, , 0, False, +1.00, 4, 1, 280, , True
      AutoLayout      =   TextField6, 3, TextField5, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   TextField6, 8, , 0, True, +1.00, 4, 1, 31, , True
      BorderStyle     =   3
      ControlCount    =   0
      Enabled         =   True
      Height          =   31
      Hint            =   "City"
      InputType       =   0
      Left            =   20
      LockedInPosition=   False
      Password        =   False
      ReadOnly        =   False
      ReturnCaption   =   0
      Scope           =   2
      Text            =   ""
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   ""
      Top             =   268
      Visible         =   True
      Width           =   280
   End
   Begin MobileTextField TextField7
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AllowAutoCorrection=   False
      AllowSpellChecking=   False
      AutoCapitalizationType=   0
      AutoLayout      =   TextField7, 1, TextField6, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   TextField7, 7, , 0, False, +1.00, 4, 1, 280, , True
      AutoLayout      =   TextField7, 3, TextField6, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   TextField7, 8, , 0, True, +1.00, 4, 1, 31, , True
      BorderStyle     =   3
      ControlCount    =   0
      Enabled         =   True
      Height          =   31
      Hint            =   "State"
      InputType       =   0
      Left            =   20
      LockedInPosition=   False
      Password        =   False
      ReadOnly        =   False
      ReturnCaption   =   0
      Scope           =   2
      Text            =   ""
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   ""
      Top             =   307
      Visible         =   True
      Width           =   280
   End
   Begin MobileTextField TextField8
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AllowAutoCorrection=   False
      AllowSpellChecking=   False
      AutoCapitalizationType=   0
      AutoLayout      =   TextField8, 1, TextField7, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   TextField8, 7, , 0, False, +1.00, 4, 1, 280, , True
      AutoLayout      =   TextField8, 3, TextField7, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   TextField8, 8, , 0, True, +1.00, 4, 1, 31, , True
      BorderStyle     =   3
      ControlCount    =   0
      Enabled         =   True
      Height          =   31
      Hint            =   "Country"
      InputType       =   0
      Left            =   20
      LockedInPosition=   False
      Password        =   False
      ReadOnly        =   False
      ReturnCaption   =   0
      Scope           =   2
      Text            =   ""
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   ""
      Top             =   346
      Visible         =   True
      Width           =   280
   End
End
#tag EndMobileScreen

#tag WindowCode
	#tag Event
		Sub Activated()
		  
		  //Register the Keyboard Notification observers
		  dim block as new iOSblock (WeakAddressOf KeyboardNotificationBlock)
		  
		  
		  self.observerShow = NSNotificationCenter_Helper.RegisterKeyboardWillShowNotification(block)
		  self.observerHide = NSNotificationCenter_Helper.RegisterKeyboardWillHideNotification(block)
		End Sub
	#tag EndEvent

	#tag Event
		Sub Deactivated()
		  
		  //unregister for keyboard notifications 
		  NSNotificationCenter_Helper.UnregisterKeyboardWillShowNotification(observerShow)
		  NSNotificationCenter_Helper.UnregisterKeyboardWillHideNotification(observerHide)
		  
		  observerShow = Nil
		  observerHide = nil
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub KeyboardNotificationBlock(NotificationPtr as Ptr)
		  
		  
		  Declare Function frame Lib "UIKit.framework" selector "frame" (obj_id As Ptr) As NSNotificationCenter_Helper.xcCGRect
		  Declare Sub setFrame Lib "UIKit" selector "setFrame:" (obj_id As ptr, frame As NSNotificationCenter_Helper.xcCGRect)
		  
		  Declare function getname lib "Foundation"  selector "name" (id as ptr) as CFStringRef
		  
		  Dim name As Text = getname(NotificationPtr)
		  
		  Select case Name
		    
		    
		  Case "UIKeyboardWillHideNotification"
		    
		    // move back the root view origin to zero
		    
		    Dim myFrame As NSNotificationCenter_Helper.xcCGRect = frame(self.Handle)
		    myFrame.origin.y = 0
		    
		    setFrame(self.handle, myFrame)
		    
		    
		    
		    
		  Case "UIKeyboardWillShowNotification"
		    
		    
		    Declare function userInfo_ lib "Foundation" selector "userInfo" (id as ptr) as ptr
		    
		    if userInfo_(NotificationPtr) <> nil then
		      Dim userInfoRef As Ptr = userInfo_(NotificationPtr)
		      
		      
		      Dim keyName As String = "UIKeyboardFrameEndUserInfoKey"
		      
		      declare function objectForKey lib "Foundation" selector "objectForKey:" (id as Ptr, key as CFStringRef) as Ptr
		      declare function CGRectValue lib "Foundation" selector "CGRectValue" (obj as ptr) as NSNotificationCenter_Helper.xcCGRect
		      
		      Dim FrameEndRect As NSNotificationCenter_Helper.xcCGRect
		      
		      
		      // if keyboard size is not available for some reason, dont do anything
		      if objectForKey(userInfoRef, keyName) = nil then Return
		      
		      FrameEndRect = CGRectValue(objectForKey(userInfoRef, keyName))
		      
		      Dim keyboardHeight As Double = FrameEndRect.rsize.height
		      
		      
		      Dim shouldMoveViewUp As boolean = false
		      
		      
		      declare function isFirstResponder lib "Foundation" selector "isFirstResponder" (obj_id as Ptr) as boolean
		      
		      Dim activeTextField As MobileUIControl
		      
		      Dim foundControl as Boolean
		      
		      //Finding the active text field
		      For i as integer = 0 to self.ControlCount-1
		        
		        Dim ctrl As MobileUIControl = self.ControlAt(i)
		        
		        if isFirstResponder(ctrl.Handle) then
		          foundControl = True
		          activeTextField = ctrl
		          Exit for i
		        end if
		      Next
		      
		      //Textfield not found
		      if foundControl = False then Return
		      
		      
		      Dim bottomOfTextField As Double = activeTextField.Top + activeTextField.Height
		      
		      Dim myFrame As NSNotificationCenter_Helper.xcCGRect = frame(self.Handle)
		      
		      Dim topOfKeyboard As Double = myFrame.rsize.height - keyboardHeight
		      
		      
		      // if the bottom of Textfield is below the top of keyboard, move up
		      if bottomOfTextField > topOfKeyboard  then
		        shouldMoveViewUp = true
		      end if
		      
		      if shouldMoveViewUp then
		        
		        myFrame.origin.y = - keyboardHeight
		        
		        setFrame(self.Handle, myFrame)
		        
		        
		        
		      end if
		    end if
		    
		    
		  End Select
		  
		  
		End Sub
	#tag EndMethod


	#tag Note, Name = README
		
		It is recommended to Register for keyboard notifications in the Activated event.
		
		It is highly recommended to unregister for keyboard notifications in the Deactivated event.
		
		
		Donate on Paypal to contact@jeremieleroy.com
	#tag EndNote


	#tag Property, Flags = &h1
		Protected observerHide As ptr
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected observerShow As ptr
	#tag EndProperty


#tag EndWindowCode

#tag Events TextField1
	#tag Event
		Function ReturnPressed() As Boolean
		  
		  TextField2.SetFocus
		  Return True
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events Button1
	#tag Event
		Sub Pressed()
		  TextField1.ClearFocus
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TextField2
	#tag Event
		Function ReturnPressed() As Boolean
		  
		  TextField3.SetFocus
		  Return True
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events TextField3
	#tag Event
		Function ReturnPressed() As Boolean
		  
		  TextField4.SetFocus
		  Return True
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events TextField4
	#tag Event
		Function ReturnPressed() As Boolean
		  
		  TextField5.SetFocus
		  Return True
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events TextField5
	#tag Event
		Function ReturnPressed() As Boolean
		  
		  TextField6.SetFocus
		  Return True
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events TextField6
	#tag Event
		Function ReturnPressed() As Boolean
		  
		  TextField7.SetFocus
		  Return True
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events TextField7
	#tag Event
		Function ReturnPressed() As Boolean
		  
		  TextField8.SetFocus
		  Return True
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events TextField8
	#tag Event
		Function ReturnPressed() As Boolean
		  
		  me.ClearFocus
		End Function
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="Index"
		Visible=true
		Group="ID"
		InitialValue="-2147483648"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Left"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Top"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackButtonCaption"
		Visible=true
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasNavigationBar"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabIcon"
		Visible=true
		Group="Behavior"
		InitialValue=""
		Type="Picture"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Behavior"
		InitialValue="Untitled"
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LargeTitleDisplayMode"
		Visible=true
		Group="Behavior"
		InitialValue="2"
		Type="MobileScreen.LargeTitleDisplayModes"
		EditorType="Enum"
		#tag EnumValues
			"0 - Automatic"
			"1 - Always"
			"2 - Never"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabBarVisible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TintColor"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="ColorGroup"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ControlCount"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
