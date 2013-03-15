'////////////////////////////////////////////////////////////////////////
' Copyright 2001-2012 Aspose Pty Ltd. All Rights Reserved.
'
' This file is part of Aspose.Words. The source code in this file
' is only intended as a supplement to the documentation, and is provided
' "as is", without warranty of any kind, either expressed or implied.
'////////////////////////////////////////////////////////////////////////

Imports Microsoft.VisualBasic
Imports Aspose.Words
Imports Aspose.Words.Examples
Imports System

Namespace AppendDocuments
	Public Class Program
		Inherits Example
		Public Shared Sub Main(ByVal args() As String)
			Console.WriteLine("Loading source and destination documents.")

			Dim dstDoc As New Document(DataDir & "TestFile.Destination.doc")
			Dim srcDoc As New Document(DataDir & "TestFile.Source.doc")

			Console.WriteLine("Appending source document to destination.")
			' Append the source document to the destination document while keeping the original formatting of the source document.
			dstDoc.AppendDocument(srcDoc, ImportFormatMode.KeepSourceFormatting)

			Console.WriteLine("Saving joined output to disk.")
			dstDoc.Save(DataDir & "TestFile Out.docx")
		End Sub
	End Class
End Namespace