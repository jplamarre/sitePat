using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Mvc.Ajax;

namespace SitePat.Controllers
{
    public class QuestionModel
    {
        public string firstname;
        public string lastname;
        public string emailaddress;
        public string phonenumber;
        public string message;

        public string FirstName { get {return firstname;} set { firstname = value;}}
        public string LastName { get { return lastname;} set {lastname = value;}}
        public string EmailAddress { get { return emailaddress;} set {emailaddress = value;}}
        public string PhoneNumber { get { return phonenumber; } set {phonenumber = value;}}
        public string Message { get { return message;} set {message = value;} }
    }

	public class QuestionsController : Controller
	{
		public ActionResult Post (QuestionModel question)
		{
            if (question != null)
            {
                return Json(question);
            }
            else
            {
                return Json("failure");
            }
		}
	}
}

