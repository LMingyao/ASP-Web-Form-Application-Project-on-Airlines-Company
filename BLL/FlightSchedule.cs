using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ProjectCAA_Airlines.DAL;

namespace ProjectCAA_Airlines.BLL
{
    public class FlightSchedule
    {
        private string flightDate;
        private int sFId;
        private string fId;
        private int seats;
        private int price;

        public String FlightDate { get => flightDate; set => flightDate = value; }
        public int SFId { get => sFId; set => sFId = value; }
        public string FId { get => fId; set => fId = value; }
        public int Seats { get => seats; set => seats = value; }
        public int Price { get => price; set => price = value; }

        public FlightSchedule SearchFlight(string FId,string Date)
        {
            return FlightScheduleDB.GetFlights(FId, Date);
        }

    }
}