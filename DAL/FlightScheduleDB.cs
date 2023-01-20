using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using ProjectCAA_Airlines.BLL;


namespace ProjectCAA_Airlines.DAL
{
    public class FlightScheduleDB
    {
        public static FlightSchedule GetFlights(string FId,string Date)
        {
            using (SqlConnection conn = UtilityDB.GetDBConnection())
            {
                SqlCommand cmdProject = new SqlCommand();
                cmdProject.CommandText = "SELECT * FROM FlightSchedule " +
                                         "WHERE FId = @FId AND FlightDate = @Date";
                cmdProject.Connection = conn;
                cmdProject.Parameters.AddWithValue("@FId", FId);
                cmdProject.Parameters.AddWithValue("@Date", Date);
                SqlDataReader dReader = cmdProject.ExecuteReader();
                FlightSchedule fs = new FlightSchedule();
                if (dReader.Read())
                {
                    fs.FId = dReader["FId"].ToString();
                    fs.SFId = Convert.ToInt32(dReader["SFId"]);
                    fs.FlightDate= dReader["FlightDate"].ToString();
                    fs.Price = Convert.ToInt32(dReader["Price"]);
                    //fl.ArrCity = dReader["ArrCity"].ToString();
                }
                else
                {
                    fs = null;
                }
                return fs;
            }
        }

        public static FlightSchedule GetFlightsBySFId(int SFId)
        {
            using (SqlConnection conn = UtilityDB.GetDBConnection())
            {
                SqlCommand cmdProject = new SqlCommand();
                cmdProject.CommandText = "SELECT * FROM FlightSchedule " +
                                         "WHERE SFId=@SFId";
                cmdProject.Connection = conn;
                cmdProject.Parameters.AddWithValue("@SFId", SFId);
                SqlDataReader dReader = cmdProject.ExecuteReader();
                FlightSchedule fs = new FlightSchedule();
                if (dReader.Read())
                {
                    fs.FId = dReader["FId"].ToString();
                    fs.SFId = Convert.ToInt32(dReader["SFId"]);
                    fs.FlightDate = dReader["FlightDate"].ToString();
                    fs.Price = Convert.ToInt32(dReader["Price"]);
                }
                else
                {
                    fs = null;
                }
                return fs ;
            }
        }

    }
}