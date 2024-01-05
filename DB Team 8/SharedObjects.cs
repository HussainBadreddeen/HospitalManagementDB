using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DB_Team_8
{
    public static class SharedObjects
    {
        public static PatientUser Patient_User { get; set; }
        public static PharmacistUser Pharmacist_User { get; set; }
        public static Nurseprofile Nurse { get; set; }
        public static Doctorprofile Doctor { get; set; }

        public static String UserType {get;set;}
   
        public static PatientUser GetUser()
        {
            return Patient_User;
        }
        public static PharmacistUser Get_Pharmacist_User()
        {
            return Pharmacist_User;
        }
        public static Nurseprofile GetNurse()
        {
            return Nurse;
        }
        public static Doctorprofile getDoctor()
        {
            return Doctor;
        }

        public static String getUserType ()
        {
            return UserType;
        }
    }
}