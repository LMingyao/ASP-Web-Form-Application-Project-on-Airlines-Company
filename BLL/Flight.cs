using System;
using System.Collections.Generic;
using System.Linq;
using ProjectCAA_Airlines.DAL;
using System.Web;

namespace ProjectCAA_Airlines.BLL
{
    public class Flight
    {
        private string fId;

        private string depCity;
        private string arrCity;
        private string depTime;
        private string arrTime;
        private int price;

        public string DepCity { get => depCity; set => depCity = value; }
        public string ArrCity { get => arrCity; set => arrCity = value; }
        public string DepTime { get => depTime; set => depTime = value; }
        public string ArrTime { get => arrTime; set => arrTime = value; }
        public int Price { get => price; set => price = value; }
        public string FId { get => fId; set => fId = value; }


        public Flight SearchFlight(string dep, string arr)
        {
            return FlightDB.GetFlights(dep, arr);
        }

        public List<Flight> GetAllFights()
        {
            return FlightDB.GetAllRecords();
        }

    }
} 