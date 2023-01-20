using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using ProjectCAA_Airlines.BLL;

namespace ProjectCAA_Airlines.DAL
{
    public class UserDB
    {
        public static User Search(string email)
        {
            //    User use = new User();

            //    SqlConnection conn = UtilityDB.GetDBConnection();
            //    try
            //    {
            //        SqlCommand cmdSearchByName = new SqlCommand();
            //        cmdSearchByName.Connection = conn;
            //        cmdSearchByName.CommandText = "SELECT * FROM User WHERE UserEmail = @email";
            //        cmdSearchByName.Parameters.AddWithValue("@email", email);
            //        SqlDataReader readerUser = cmdSearchByName.ExecuteReader();
            //        if (readerUser.Read())
            //        {

            //            use.Password = readerUser["Password"].ToString();
            //            use.UserEmail = readerUser["UserEmail"].ToString();
            //            use.UserFirstName = readerUser["UserFirstName"].ToString();
            //            use.UserLastName = readerUser["UserLastName"].ToString();
            //        }
            //        else
            //        {
            //            use = null;
            //        }
            //    }
            //    catch (SqlException ex)
            //    {
            //        throw ex;
            //    }
            //    finally
            //    {
            //        conn.Close();
            //        conn.Dispose();
            //    }
            //    return use;
            using (SqlConnection conn = UtilityDB.GetDBConnection())
            {
                SqlCommand cmdProject = new SqlCommand();
                cmdProject.CommandText = "SELECT * FROM UserR " +
                                         "WHERE UserEmail = @email";
                cmdProject.Connection = conn;
                cmdProject.Parameters.AddWithValue("@email", email);
                SqlDataReader dReader = cmdProject.ExecuteReader();
                User us = new User();
                if (dReader.Read())
                {
                    us.UserEmail = dReader["UserEmail"].ToString();
                    us.Password = dReader["Password"].ToString();
                    us.UserFirstName = dReader["FirstName"].ToString();
                    us.UserLastName = dReader["LastName"].ToString();
                    us.UserId =Convert.ToInt32( dReader["UId"]);
                }
                else
                {
                    us = null;
                }
                return us;
            }
        }


        public static void Save(User usa)
        {
            using (SqlConnection conn = UtilityDB.GetDBConnection())
            {
                SqlCommand cmdInsert = new SqlCommand();
                cmdInsert.Connection = conn;
                cmdInsert.CommandText = "INSERT INTO UserR " +
                                        "VALUES (@UserEmail, @Password, @UserFirstName, @UserLastName )";
                cmdInsert.Parameters.AddWithValue("@UserEmail", usa.UserEmail);
                cmdInsert.Parameters.AddWithValue("@Password", usa.Password);
                cmdInsert.Parameters.AddWithValue("@UserFirstName", usa.UserFirstName);
              //  cmdInsert.Parameters.AddWithValue("@Uid", 5);
                cmdInsert.Parameters.AddWithValue("@UserLastName", usa.UserLastName);
               
                cmdInsert.ExecuteNonQuery();
            }
        }

    }
}