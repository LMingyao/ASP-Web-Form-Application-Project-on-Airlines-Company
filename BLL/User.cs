using ProjectCAA_Airlines.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProjectCAA_Airlines.BLL
{
    public class User
    {
        
        private string userFirstName;
        private string userLastName;
        private string userEmail;
        private string password;
        private int userId;

        public string UserFirstName { get => userFirstName; set => userFirstName = value; }
        public string UserLastName { get => userLastName; set => userLastName = value; }
        public string UserEmail { get => userEmail; set => userEmail = value; }
        public string Password { get => password; set => password = value; }
        public int UserId { get => userId; set => userId = value; }

        public User SearchUser(string UserEmail)
        {
            return UserDB.Search(UserEmail);
        }

        public void SaveUser(User SaveUser)
        {
            UserDB.Save(SaveUser);
        }

    }
}