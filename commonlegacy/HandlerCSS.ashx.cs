﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
using System.Text.Json;
using System.Text;

namespace commonlegacy
{
    /// <summary>
    /// Summary description for HandlerCSS
    /// </summary>
    public class HandlerCSS : IHttpHandler
    {
        //need to decide how much to let this do and how much to let code-behind do!
        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/html";

            string jsonFilePath = context.Server.MapPath("./json/tiles.json");
            string[] fileNames = ReadFileNamesFromJson(jsonFilePath);

            StringBuilder contentBuilder = new StringBuilder();;

            for (int i = 0; i < fileNames.Length; i++)
            {
                //int curContainer = ((int)Math.Floor((double)(i / 4))) + 1;
                string fileName = fileNames[i];

                //string divId = $"draggon{i + 1}";

                string pathPrefix = "./tiles/";

                string cssFilePath = pathPrefix + "css/" + $"{fileName}.css";
                string htmlFilePath = pathPrefix + $"{fileName}.html";

                string cssContent = ReadFileContent(cssFilePath);
                string htmlContent = ReadFileContent(htmlFilePath);

                contentBuilder.AppendLine($"{cssContent}\n{htmlContent}");


                //htmlContent.AppendLine($"<link rel=\"stylesheet\" type=\"text/css\" href=\"./tiles/css/{cssFilePath}\" />");
                //htmlContent.AppendLine($"<div id=\"{divId}\"></div>");

                //NOW REMOVE PRE-SET DIVS FROM MUSECRAFT ASPX PAGE??
            }

            context.Session["CSSandHTML"] = contentBuilder.ToString();

        }

        private string ReadFileContent(string jsonFilePath)
        {
            if (File.Exists(jsonFilePath))
            {
                return File.ReadAllText(jsonFilePath);
            }
            else
            {
                return string.Empty;
            }
        }

        private string[] ReadFileNamesFromJson(string jsonFilePath)
        {
            if (File.Exists(jsonFilePath))
            {
                // Read the JSON content and deserialize it into a string array
                string jsonContent = File.ReadAllText(jsonFilePath);
                return JsonSerializer.Deserialize<string[]>(jsonContent);
            }
            else
            {
                return new string[0]; // Return an empty array if the JSON file doesn't exist
            }
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}