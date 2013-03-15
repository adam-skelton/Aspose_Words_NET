//////////////////////////////////////////////////////////////////////////
// Copyright 2001-2012 Aspose Pty Ltd. All Rights Reserved.
//
// This file is part of Aspose.Words. The source code in this file
// is only intended as a supplement to the documentation, and is provided
// "as is", without warranty of any kind, either expressed or implied.
//////////////////////////////////////////////////////////////////////////
using System;
using System.IO;

using Aspose.Words;
using Aspose.Words.Examples;

namespace ApplyLicense
{
    public class Program : Example
    {
        public static void Main(string[] args)
        {
            Aspose.Words.License license = new Aspose.Words.License();

            // Set the license using a relative path to the location of the license on disk.
            // This same overload can be used to load the license from an explict path, embedded resource 
            // to set the license
            try
            {
                // test test
                // some more text
                // even more
                license.SetLicense("Aspose.Words.lic");
            }

            catch (Exception e)
            {
                // test test
                Console.WriteLine("There was an error setting the license: " + e.Message);
            }
        }
    }
}