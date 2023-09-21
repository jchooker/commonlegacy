using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace commonlegacy
{
    //solution of this vs ashx handler is to get the html content to add from handler, 
    //and let these code-behind methods distribute them 
    public partial class Musecraft : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //string combinedContent = GetHtmlContentFromHandler(); v1
                string handlerUrl = ResolveUrl("https://localhost:44334/HandlercSS.ashx");
                HttpWebRequest request = (HttpWebRequest)WebRequest.Create(handlerUrl);

                request.Method = "GET";

                try
                {
                    using (HttpWebResponse response = (HttpWebResponse)request.GetResponse())
                    {
                        if (response.StatusCode == HttpStatusCode.OK)
                        {
                            string combinedContent = HttpContext.Current.Session["CSSandHTML"] as string;

                            if (!string.IsNullOrEmpty(combinedContent))
                            {
                                string[] contentGroups = combinedContent.Split(new[] { "<!--DELIMITER HERE-->" }, StringSplitOptions.RemoveEmptyEntries);

                                for (int i = 0; i < contentGroups.Length; i++)
                                {
                                    string divId = "draggon" + (i + 1);

                                    //find corresponding div by ID
                                    HtmlGenericControl targetDiv = (HtmlGenericControl)FindControl(divId);
                                    //HtmlGenericControl targetDiv = (HtmlGenericControl)this.FindControl(divId);

                                    if (targetDiv != null)
                                    {
                                        // Assign the content to the InnerHtml of the div
                                        targetDiv.InnerHtml = contentGroups[i];
                                    }
                                    else
                                    {
                                        Console.WriteLine("no such HTML elements to send data to");
                                    }
                                }
                            }
                            else
                            {
                                Console.WriteLine("No content in Session");
                            }
                        }
                    }
                } catch (Exception)
                {
                    Response.StatusCode = 500; // Internal Server Error
                    Response.StatusDescription = "An error occurred while processing your request.";
                    Response.End();
                }

            }
        }

        private string GetHtmlContentFromHandler()
        {
            string cssAndHtml = HttpContext.Current.Session["CSSandHTML"] as string;
            return cssAndHtml;

            //return combinedContent;
        }
    }
}