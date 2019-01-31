#tag Module
Protected Module SomeModule
	#tag Method, Flags = &h0
		Function SomeEnumToString(s as SomeEnum) As String
		  Select Case s
		  Case SomeEnum.Foo
		    Return "Foo"
		  Case SomeEnum.Bar
		    Return "Bar"
		  Case SomeEnum.Baz
		    Return "Baz"
		  End Select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toSomeEnum(extends s as String) As SomeEnum
		  Select Case s
		  Case "Foo"
		    Return SomeEnum.Foo
		  Case "Bar"
		    Return SomeEnum.Bar
		  Case "Baz"
		    Return SomeEnum.Baz
		  End Select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toString(extends s as SomeEnum) As String
		  Select Case s
		  Case SomeEnum.Foo
		    Return "Foo"
		  Case SomeEnum.Bar
		    Return "Bar"
		  Case SomeEnum.Baz
		    Return "Baz"
		  End Select
		End Function
	#tag EndMethod


	#tag Enum, Name = SomeEnum, Type = Integer, Flags = &h0
		Foo
		  Bar
		Baz
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
