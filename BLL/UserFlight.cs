using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ProjectCAA_Airlines.DAL;

namespace ProjectCAA_Airlines.BLL
{
    public class UserFlight
    {
        private int uId;
        private int sFId;

        public int UId { get => uId; set => uId = value; }
        public int SFId { get => sFId; set => sFId = value; }

        public void PurchaseTicket(UserFlight usf)
        {
            UserFlightDB.Purchase(usf);
        }

        public List<FlightSchedule> GetFlights(int UId)
        {
            return UserFlightDB.GetFlights(UId);
        }

    }
}