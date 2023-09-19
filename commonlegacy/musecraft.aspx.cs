using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace commonlegacy
{
    //solution of this vs ashx handler is to get the html content to add from handler, 
    //and let these code-behind methods distribute them 
    public partial class musecraft : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string combinedContent = GetHtmlContentFromHandler();

                if (!string.IsNullOrEmpty(combinedContent) )
                {
                    string[] contentGroups = combinedContent.Split(new [] { "<!--DELIMITER HERE-->" }, StringSplitOptions.RemoveEmptyEntries);

                    for (int i = 0; i < contentGroups.Length; i++)
                    {
                        string divId = "draggon" + (i + 1);

                        //find corresponding div by ID
                        HtmlGenericControl targetDiv = (HtmlGenericControl)FindControl(divId);
                        //HtmlGenericControl targetDiv = (HtmlGenericControl)this.FindControl(divId);

                        if (targetDiv != null )
                        {
                            // Assign the content to the InnerHtml of the div
                            targetDiv.InnerHtml = contentGroups[i];
                        }
                    }
                }
            }
        }

        private string GetHtmlContentFromHandler()
        {
            return Session["CSSandHTML"] as string;

            //return combinedContent;
        }
    }
}