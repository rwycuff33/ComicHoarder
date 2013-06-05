﻿using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.IO;
using System.Collections.Generic;
using System.Drawing;
using ComicHoarder.EComic;
using ComicHoarder.Common;

namespace ComicHoarder.Tests
{
    [TestClass]
    public class EComicTests
    {
        string TestCBZComicFileName = @"../../../Documentation/Blue Beetle 001 (1967) June-1967.cbz";
        string TestXMLCRComicInfoFileName = @"../../../Documentation/ComicInfoBlueBeetle1.xml";
        string TestPath = @"../../../Documentation/";
        string TestComicInfoFileName = @"ComicInfo.xml";
        string TestImageFileName = @"P00001.jpg";
        
        [TestMethod]
        public void CanReadXMLFromCbz()
        {
            ZipController reader = new ZipController(TestCBZComicFileName);
            string result = reader.ExtractTextFile(TestComicInfoFileName);
            Assert.IsTrue(result.Contains("Bugs the Squids"));
        }

        [TestMethod]
        public void CanGetListOfImagesFromCbz()
        {
            ZipController reader = new ZipController(TestCBZComicFileName);
            List<string> filenames = reader.GetFileNames(".jpg");
            Assert.IsTrue(filenames.Contains(TestImageFileName));
        }

        [TestMethod]
        public void CanExtractImageFromCbz()
        {
            ZipController reader = new ZipController(TestCBZComicFileName);
            Image image = reader.ExtractImage(TestImageFileName);
            Assert.IsTrue(image.Height == 1291);
        }

        [TestMethod]
        public void CanDeserializeToCRComicInfo()
        {
            string result = "";
            using (StreamReader sr = new StreamReader(TestXMLCRComicInfoFileName))
            {
                result = sr.ReadToEnd();
            }
            ComicInfoConverter converter = new ComicInfoConverter();
            ComicInfo info = converter.ConvertToCRInfo(result);
            Assert.IsTrue(info.Title == "Bugs the Squids");
        }

        [TestMethod]
        public void CanExtractCVIDFromComicInfoNotes()
        {
            string notes = "Scraped metadata from ComicVine [CVDB9383] on 2013.06.03 23:14:42.";
            ComicInfoConverter converter = new ComicInfoConverter();
            string id = converter.GetCVIDFromNotes(notes);
            Assert.IsTrue(id == "9383");
        }

        [TestMethod]
        public void CanConvertComicInfoToIssue()
        {
            string result = "";
            using (StreamReader sr = new StreamReader(TestXMLCRComicInfoFileName))
            {
                result = sr.ReadToEnd();
            }
            ComicInfoConverter converter = new ComicInfoConverter();
            Issue issue = converter.ConvertToIssue(result);
            Assert.IsTrue(issue.name == "Bugs the Squids");            
        }

        [TestMethod]
        public void ServiceCanReturnIssue()
        {
            EComicService eComicService = new EComicService();
            Issue issue = eComicService.GetComicInfo(TestCBZComicFileName);
            Assert.IsTrue(issue.name == "Bugs the Squids");
        }

        [TestMethod]
        public void ServiceCanFindIssuesInPath()
        {
            EComicService eComicService = new EComicService();
            List<string> filenames = eComicService.FindIssuesInPath(TestPath, false);
            Assert.IsTrue(filenames.Exists(ContainsBlueBeetle003));
        }

        [TestMethod]
        public void ServiceCanFindIssuesInPathSubDirectory()
        {
            EComicService eComicService = new EComicService();
            List<string> filenames = eComicService.FindIssuesInPath(TestPath, true);
            Assert.IsTrue(filenames.Exists(ContainsBlueBeetle006));
        }

        private static bool ContainsBlueBeetle003(String s)
        {
            return s.Contains("Blue Beetle 003 (1967) October-1967.cbz");
        }
        private static bool ContainsBlueBeetle006(String s)
        {
            return s.Contains("Blue Beetle 006 (1967) April-1967.cbz");
        }
    }
}
