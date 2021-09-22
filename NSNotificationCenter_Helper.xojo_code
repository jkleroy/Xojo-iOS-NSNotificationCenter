#tag Module
Protected Module NSNotificationCenter_Helper
	#tag Method, Flags = &h1
		Protected Function RegisterKeyboardWillHideNotification(callback As iOSBlock) As ptr
		  
		  
		  
		  declare function addObserverForName lib "Foundation"  selector "addObserverForName:object:queue:usingBlock:" _
		  (id as ptr, NotificationName as CFStringRef, Obj as Ptr, queue as ptr, block as ptr) as ptr
		  
		  
		  Dim res As Ptr
		  
		  res = addObserverForName(NotificationCenterRef, "UIKeyboardWillHideNotification", nil, nil, callback.Handle)
		  
		  Return res
		  
		  
		  Break
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function RegisterKeyboardWillShowNotification(callback As iOSBlock) As ptr
		  
		  
		  
		  declare function addObserverForName lib "Foundation"  selector "addObserverForName:object:queue:usingBlock:" _
		  (id as ptr, NotificationName as CFStringRef, Obj as Ptr, queue as ptr, block as ptr) as ptr
		  
		  
		  Dim res As Ptr
		  
		  res = addObserverForName(NotificationCenterRef, "UIKeyboardWillShowNotification", nil, nil, callback.Handle)
		  
		  Return res
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub UnregisterKeyboardWillHideNotification(observer As ptr = nil)
		  
		  
		  
		  declare sub removeObserverForName lib "Foundation"  selector "removeObserver:name:object:" _
		  (id as ptr, NotificationName as CFStringRef, Obj as Ptr)
		  
		  
		  
		  removeObserverForName(NotificationCenterRef, "UIKeyboardWillHideNotification", observer)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub UnregisterKeyboardWillShowNotification(observer As ptr = nil)
		  
		  
		  
		  declare sub removeObserverForName lib "Foundation"  selector "removeObserver:name:object:" _
		  (id as ptr, NotificationName as CFStringRef, Obj as Ptr)
		  
		  
		  
		  removeObserverForName(NotificationCenterRef, "UIKeyboardWillShowNotification", observer)
		  
		  
		  
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  
			  Declare Function NSClassFromString Lib "Foundation" (className As CFStringRef) As Ptr
			  declare function defaultCenter lib "Foundation"  selector "defaultCenter" (id as ptr) as ptr
			  
			  
			  static mcenter As ptr
			  if mcenter = nil then
			    mcenter = defaultCenter(NSClassFromString("NSNotificationCenter"))
			  end if
			  
			  Return mcenter
			  
			End Get
		#tag EndGetter
		Private NotificationCenterRef As Ptr
	#tag EndComputedProperty


	#tag Structure, Name = xcCGPoint, Flags = &h1
		x As CGFloat
		y as CGFloat
	#tag EndStructure

	#tag Structure, Name = xcCGRect, Flags = &h1
		origin As xcCGPoint
		rsize as xcCGSize
	#tag EndStructure

	#tag Structure, Name = xcCGSize, Flags = &h1
		width As CGFloat
		height As CGFloat
	#tag EndStructure


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
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
	#tag EndViewBehavior
End Module
#tag EndModule
