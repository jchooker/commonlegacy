using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using commonlegacy.entities;
using System.Data.SQLite;

namespace commonlegacy
{
    public partial class UsersDataTable
    {
        private const string DB_NAME = "users_db.db";
        private SQLiteConnection _connection;
        public UsersDataTable()
        {
            using (var factory = new SQLiteFactory())
            {
                var conn = factory.CreateConnection();
                conn.ConnectionString = "Data Source=con";
                this = conn;
            }
            _connection = new SQLiteConnection("Data Source=con");
        }

        public List<User> GetUsers()
        {
            return new List<User>();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
        }


        public void Open()
        {
            _connection.Open(); 
        }

        public void Close()
        {
            _connection.Close();
        }

    }
}