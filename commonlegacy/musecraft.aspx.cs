using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using Newtonsoft.Json;

namespace commonlegacy
{
    public partial class Musecraft : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                List<string> fileNames = ReadJsonData();

                for (int i = 0; i < fileNames.Count; i++)
                {
                    string cssFileName = $"{fileNames[i]}.css";
                    string htmlFileName = $"{fileNames[i]}.html";

                    string cssContent = $"<!DOCTYPE html>\n<html>\n<head>\n<style>" + GetEmbeddedResource($"commonlegacy.{cssFileName}") + "\n</style>\n";
                    string htmlContent = GetEmbeddedResource($"commonlegacy.{htmlFileName}") + "\n</body>\n</html>";

                    ContentPlaceHolder contentPlaceHolder = (ContentPlaceHolder)Master.FindControl("ContentPlaceHolder1");

                    if (contentPlaceHolder != null )
                    {
                        Literal thisDiv = (Literal)contentPlaceHolder.FindControl($"Draggon{i}");

                        if (thisDiv != null )
                        {
                            thisDiv.Text += cssContent;
                            thisDiv.Text += htmlContent;
                        }
                    }

                };

            }
        }
        private List<string> ReadJsonData()
        {
            string jsonFilePath = System.Web.HttpContext.Current.Server.MapPath("./json/tiles.json");
            try
            {
                string jsonData = File.ReadAllText(jsonFilePath);
                List<string> jsonArr = JsonConvert.DeserializeObject<List<string>>(jsonData);

                foreach (string item in jsonArr)
                {
                    Console.WriteLine(item);
                }

                return jsonArr;

            }
            catch (JsonException ex)
            {
                Console.WriteLine("Error parsing JSON: " + ex.Message);
                //    List<string> errArr = new List<string>
                //{
                //    "0"
                //};
                    return new List<string> { "0" };
            }
        }

        private string GetEmbeddedResource(string resourceName)
        {
            using (var stream = Assembly.GetExecutingAssembly().GetManifestResourceStream(resourceName))
            {
                if (stream != null)
                {
                    using (var reader = new StreamReader(stream))
                    {
                        return reader.ReadToEnd();
                    }
                }
            }
            return string.Empty;
        }
    }

}