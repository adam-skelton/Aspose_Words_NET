'////////////////////////////////////////////////////////////////////////
' Copyright 2001-2012 Aspose Pty Ltd. All Rights Reserved.
'
' This file is part of Aspose.Words. The source code in this file
' is only intended as a supplement to the documentation, and is provided
' "as is", without warranty of any kind, either expressed or implied.
'////////////////////////////////////////////////////////////////////////

Imports Microsoft.VisualBasic
Imports System
Imports System.IO

Imports Aspose.Words
Imports Aspose.Words.Examples

Namespace ApplyLicense
	Public Class Program
		Inherits Example
		Public Shared Sub Main(ByVal args() As String)
			Dim license As New Aspose.Words.License()

			' Set the license using a relative path to the location of the license on disk.
			' This same overload can be used to load the license from an explict path, embedded resource 
			' to set the license
			Try
				license.SetLicense("Aspose.Words.lic")

			Catch e As Exception
				Console.WriteLine("There was an error setting the license: " & e.Message)
			End Try
		End Sub
	End Class
End Namespace