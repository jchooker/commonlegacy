using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Diagnostics;
using commonlegacy.entities;
using System.Web.Script.Services;
using System.Data;
using System.Data.SQLite;
using System.Configuration;

namespace commonlegacy
{
    /// <summary>
    /// Summary description for UsersDataTable1
    /// </summary>
    [WebService(Namespace = "http://localhost:44334/Usermgmt.aspx")]
    //[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    //[System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class UsersDataTable1 : System.Web.Services.WebService
    {
        //private static string connectionString = @"Data Source =.\db\users_db.db;Version=3;";

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public List<User> GetUsers()
        {
            //try
            //{
            //    string dbFilePath = @".\db\users_db.db";
            //    string physicalPath = Server.MapPath(dbFilePath);
            //    Console.WriteLine("*******~*~*~**~*~Database Path: " + @".\db\users_db.db");
            //    using (var conn = new SQLiteConnection("Data Source=C:\\Users\\jchooker\\source\\repos\\commonlegacy-2\\commonlegacy\\commonlegacy\\db\\users_db.db"))
            //    {
            //        DataTable tbl;
            //        if (conn.State == ConnectionState.Open)
            //        {
            //            tbl = conn.GetSchema("Tables");
            //        }
            //        else
            //        {
            //            conn.Open();
            //            tbl = conn.GetSchema("Tables");
            //        }
            //        conn.Close();
            //        return tbl;

            //    }
                using (var context = new UsersDbContext())
                {
                    List<User> users = context.Users.ToList();
                    return users;
                }

            //}
            //catch (Exception ex)
            //{
            //    throw new ApplicationException($"An error occurred: {ex.Message}");
            //}
        }
    }
}
