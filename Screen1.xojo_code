#tag MobileScreen
Begin MobileScreen Screen1
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
      Hint            =   "Type here"
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
   Begin MobileLabel Label1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AutoLayout      =   Label1, 1, TextField1, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Label1, 2, TextField1, 2, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Label1, 3, TextField1, 4, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Label1, 8, , 0, False, +1.00, 4, 1, 93, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   93
      Left            =   20
      LineBreakMode   =   0
      LockedInPosition=   False
      Scope           =   2
      Text            =   "Tap the Textfield to show the keyboard. If the keyboard doesn't show in the simulator, hit cmd+K or Simulator menu > I/O > Keyboard > Toggle"
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   ""
      Top             =   134
      Visible         =   True
      Width           =   280
   End
   Begin MobileButton Button1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button1, 4, <Parent>, 4, False, +1.00, 4, 1, 0, button_bottom, True
      AutoLayout      =   Button1, 9, <Parent>, 9, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button1, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Button1, 7, , 0, False, +1.00, 4, 1, 120, , True
      Caption         =   "Hide Keyboard"
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
      Top             =   538
      Visible         =   False
      Width           =   120
   End
   Begin MobileLabel Label2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AutoLayout      =   Label2, 8, , 0, False, +1.00, 4, 1, 50, , True
      AutoLayout      =   Label2, 1, Label1, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Label2, 3, Label1, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   Label2, 7, , 0, False, +1.00, 4, 1, 280, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   50
      Left            =   20
      LineBreakMode   =   0
      LockedInPosition=   False
      Scope           =   2
      Text            =   "Change the keyboard to Emoji layout to see the updated keyboard size."
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   ""
      Top             =   235
      Visible         =   False
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
		  NSNotificationCenter_Helper.UnRegisterKeyboardWillShowNotifications(observerShow)
		  NSNotificationCenter_Helper.UnRegisterKeyboardWillHideNotifications(observerHide)
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub KeyboardNotificationBlock(NotificationPtr as Ptr)
		  
		  
		  
		  
		  Declare function getname lib "Foundation"  selector "name" (id as ptr) as CFStringRef
		  'Declare sub setContentInset lib "UIKit" selector "setContentInset:" (obj as ptr, value as NSNotificationCenter_Helper.xcUIEdgeInsets)
		  
		  Dim name As Text = getname(NotificationPtr)
		  
		  Select case Name
		    
		    
		  Case "UIKeyboardWillHideNotification"
		    
		    Label1.Text = "Keyboard will hide"
		    Label2.Visible = False
		    
		    Button1.Visible = False
		    
		    
		    
		    
		  Case "UIKeyboardWillShowNotification"
		    
		    
		    Label1.Text = "Keyboard will show"
		    Label2.Visible = True
		    
		    Declare function userInfo_ lib "Foundation" selector "userInfo" (id as ptr) as ptr
		    
		    if userInfo_(NotificationPtr) <> nil then
		      Dim userInfoRef As Ptr = userInfo_(NotificationPtr)
		      
		      Dim keyName1 As String = "UIKeyboardFrameBeginUserInfoKey"
		      Dim keyName2 As String = "UIKeyboardFrameEndUserInfoKey"
		      
		      declare function objectForKey lib "Foundation" selector "objectForKey:" (id as Ptr, key as CFStringRef) as Ptr
		      declare function CGRectValue lib "Foundation" selector "CGRectValue" (obj as ptr) as NSNotificationCenter_Helper.xcCGRect
		      
		      Dim FrameEndRect As NSNotificationCenter_Helper.xcCGRect
		      
		      
		      if objectForKey(userInfoRef, keyName2) <> nil then
		        
		        FrameEndRect = CGRectValue(objectForKey(userInfoRef, keyName2))
		        
		        
		      end if
		      
		      
		      
		      Dim keyboardHeight As Double = FrameEndRect.rsize.height '+ RaiseEvent DeltaScroll
		      
		      Label1.Text = Label1.Text + &u0A +_
		      "Keyboard height: " + &u0A +_
		      keyboardHeight.ToString(locale.raw, "0.0")
		      
		      //This is an example to show how to move a control above the keyboard
		      Button1.Visible = True
		      self.Constraint("button_bottom").Offset = -keyboardHeight - 12
		      
		      
		      
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
		  TextField1.ClearFocus
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
