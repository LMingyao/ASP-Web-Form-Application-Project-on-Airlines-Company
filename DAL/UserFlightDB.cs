using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using ProjectCAA_Airlines.BLL;

namespace ProjectCAA_Airlines.DAL
{
    public class UserFlightDB
    {
        public static void Purchase(UserFlight tctPur)
        {
            using (SqlConnection conn = UtilityDB.GetDBConnection())
            {
                SqlCommand cmdInsert = new SqlCommand();
                cmdInsert.Connection = conn;
                cmdInsert.CommandText = "INSERT INTO UserFlight " +
                                        "VALUES (@UId, @SFId)";
                cmdInsert.Parameters.AddWithValue("@UId", tctPur.UId);
                cmdInsert.Parameters.AddWithValue("@SFId", tctPur.SFId);
                cmdInsert.ExecuteNonQuery();
            }
        }

         

        public static List<FlightSchedule> GetFlights(int UId)
        {
            List<FlightSchedule> listUF = new List<FlightSchedule>();

            using (SqlConnection conn = UtilityDB.GetDBConnection())
            {
                SqlCommand cmdAllProjects = new SqlCommand();
                cmdAllProjects.Connection = conn;
                cmdAllProjects.CommandText = "SELECT * FROM UserFlight " +
                                         "WHERE UId=@UId";
                cmdAllProjects.Parameters.AddWithValue("@UId", UId);
                SqlDataReader dReader = cmdAllProjects.ExecuteReader();
                UserFlight usaf = new UserFlight();
                while (dReader.Read())
                {
                    FlightSchedule fs = new FlightSchedule();
                    fs= FlightScheduleDB.GetFlightsBySFId((Int32)dReader["SFId"]);
                    //usaf.UId = Convert.ToInt32(dReader["UId"]);
                    //usaf.SFId = Convert.ToInt32(dReader["SFId"]);
                    //usaf = UserFlightDB.GetFlights((string)dReader["ProjectId"]);
                    listUF.Add(fs);
                   
                }
            }

            return listUF;
        }
    }
}