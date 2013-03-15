//////////////////////////////////////////////////////////////////////////
// Copyright 2001-2012 Aspose Pty Ltd. All Rights Reserved.
//
// This file is part of Aspose.Words. The source code in this file
// is only intended as a supplement to the documentation, and is provided
// "as is", without warranty of any kind, either expressed or implied.
//////////////////////////////////////////////////////////////////////////
using Aspose.Words;
using Aspose.Words.Examples;
using System;

namespace AppendDocuments
{
    public class Program : Example
    {
        public static void Main(string[] args)
        {
            Console.WriteLine("Loading source and destination documents.");

            // test test
            // some more text
            // new text
            // test
            // test2
            Document dstDoc = new Document(DataDir + "TestFile.Destination.doc");
            Document srcDoc =  new Document(DataDir + "TestFile.Source.doc");
            
            // test test
            Console.WriteLine("Appending source document to destination.");
            // Append the source document to the destination document while keeping the original formatting of the source document.
            dstDoc.AppendDocument(srcDoc, ImportFormatMode.KeepSourceFormatting);

            Console.WriteLine("Saving joined output to disk.");
            dstDoc.Save(DataDir + "TestFile Out.docx");
        }
    }
}