using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DB_Team_8
{
    public class PatientUser
    {
        public string ID { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public string Address { get; set; }
        public string BloodType { get; set; }
        public bool Is_Insured { get; set; }
        public string ems_ID { get; set; }
        public string Insurance_ID { get; set; }
        public string password { get; set; }
    }
}