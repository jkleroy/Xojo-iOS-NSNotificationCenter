#tag MobileScreen
Begin MobileScreen ScreenTextArea
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
   Begin MobileButton Button1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button1, 4, BottomLayoutGuide, 3, False, +1.00, 4, 1, 0, button_bottom_hidden, True
      AutoLayout      =   Button1, 4, <Parent>, 4, False, +1.00, 4, 1, 0, button_bottom_visible, False
      AutoLayout      =   Button1, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Button1, 2, TextArea1, 2, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button1, 7, , 0, False, +1.00, 4, 1, 120, , True
      Caption         =   "Hide Keyboard"
      CaptionColor    =   &c007AFF00
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   180
      LockedInPosition=   False
      Scope           =   2
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   ""
      Top             =   538
      Visible         =   False
      Width           =   120
   End
   Begin MobileTextArea TextArea1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AllowAutoCorrection=   False
      AllowSpellChecking=   False
      AutoCapitalizationType=   0
      AutoLayout      =   TextArea1, 4, BottomLayoutGuide, 3, False, +1.00, 4, 1, -200, textarea_bottom, False
      AutoLayout      =   TextArea1, 8, , 0, False, +1.00, 4, 1, 250, textarea_height, True
      AutoLayout      =   TextArea1, 1, , 0, False, +1.00, 4, 1, 20, , True
      AutoLayout      =   TextArea1, 2, <Parent>, 2, False, +1.00, 4, 1, -*kStdGapCtlToViewH, , True
      AutoLayout      =   TextArea1, 3, TopLayoutGuide, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      BorderStyle     =   2
      ControlCount    =   0
      Enabled         =   True
      Height          =   250
      Left            =   20
      LockedInPosition=   False
      ReadOnly        =   False
      Scope           =   2
      Text            =   "Untitled"
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   ""
      Top             =   73
      Visible         =   True
      Width           =   280
   End
   Begin Timer Timer1
      Height          =   32
      Height          =   32
      Left            =   100
      Left            =   100
      LockedInPosition=   False
      PanelIndex      =   -1
      Parent          =   ""
      Period          =   1000
      RunMode         =   2
      Scope           =   2
      Top             =   100
      Top             =   100
      Width           =   32
      Width           =   32
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
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub KeyboardNotificationBlock(NotificationPtr as Ptr)
		  
		  Declare function getname lib "Foundation"  selector "name" (id as ptr) as CFStringRef
		  Declare sub setContentInset lib "UIKit" selector "setContentInset:" (obj as ptr, value as NSNotificationCenter_Helper.xcUIEdgeInsets)
		  
		  Dim name As Text = getname(NotificationPtr)
		  
		  Select case Name
		    
		    
		  Case "UIKeyboardWillHideNotification"
		    
		    
		    
		    Button1.Visible = False
		    
		    self.Constraint("button_bottom_visible").Active = False
		    self.Constraint("button_bottom_hidden").Active = True
		    
		    self.Constraint("textarea_height").Active = True
		    self.Constraint("textarea_bottom").Active = False
		    
		    self.Constraint("textarea_bottom").Offset = -20
		    
		    
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
		      
		      
		      Dim keyboardHeight As Double = FrameEndRect.rsize.height '+ RaiseEvent DeltaScroll
		      
		      
		      
		      //This is an example to show how to move a control above the keyboard
		      Button1.Visible = True
		      
		      self.Constraint("button_bottom_visible").Offset = -keyboardHeight - 12
		      
		      self.Constraint("textarea_height").Active = False
		      self.Constraint("textarea_bottom").Active = TRUE
		      self.Constraint("textarea_bottom").Offset = -keyboardHeight - 30 - 12
		      
		      self.Constraint("button_bottom_visible").Active = True
		      self.Constraint("button_bottom_hidden").Active = False
		      
		      
		      
		      
		      
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

#tag Events Button1
	#tag Event
		Sub Pressed()
		  TextArea1.ClearFocus
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Timer1
	#tag Event
		Sub Run()
		  '
		  '
		  '
		  'Declare Function getframe_ Lib "UIKit.framework" selector "frame" (obj_id As Ptr) As NSNotificationCenter_Helper.xcCGRect
		  '
		  'Dim aView As Ptr = self.Handle
		  '
		  '
		  'declare function superview lib "UIKit" selector "superview" (obj as ptr) as ptr
		  '
		  'Static logOnce As Boolean
		  '
		  'if logOnce = False then
		  'System.DebugLog aView.UInt64.ToHex
		  'end if
		  '
		  'Dim level As Integer
		  '
		  'While superview(aView) <> nil
		  '
		  'aView = superview(aView)
		  '
		  'Dim frame As NSNotificationCenter_Helper.xcCGRect = getframe_(aView)
		  '
		  'if frame.origin.y < 0.0 then
		  '
		  'Dim forceRect As nsnotificationCenter_Helper.xccgrect
		  'forceRect.rsize = frame.rsize
		  '
		  'Dim pt0 As nsnotificationCenter_Helper.xccgPoint
		  'pt0.x = 0
		  'pt0.y = 0
		  '
		  'forceRect.origin = pt0
		  '
		  'Declare Sub setFrame_ Lib "UIKit" selector "setFrame:" (obj_id As ptr, frame As NSNotificationCenter_Helper.xcCGRect)
		  'setFrame_(aView, forceRect)
		  'end if
		  '
		  '
		  'Wend
		  '
		  'logOnce = True
		  '
		  'Dim re As NSNotificationCenter_Helper.xcCGRect = getframe_(aView)
		  '
		  'Dim rect as New xojo.Core.Rect(re.origin.x, re.origin.y, re.rsize.width, re.rsize.height)
		  '
		  'Label1.Text = rect.left.ToString +":" + rect.top.ToString + "  " + rect.Width.ToString + ":" + rect.Height.ToString
		End Sub
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
