using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Http;
using System.Net.Http;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;


namespace Micro.WebApplication
{
	public class Global : System.Web.HttpApplication
	{

		void Application_Start(object sender, EventArgs e)
		{
			// Code that runs on application startup
			RouteTable.Routes.MapHttpRoute(
					name: "DefaultApi",
					routeTemplate: "api/{controller}/{id}",
					defaults: new { id = System.Web.Http.RouteParameter.Optional }
			);

			

			RegisterRoutes(RouteTable.Routes);
		}

		public static void RegisterRoutes(RouteCollection routes)
		{
			routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

			//// Web Forms default
			//routes.MapPageRoute(
			//	"WebFormDefault",
			//	"",
			//	"~/default.aspx"
			//);

			//// MVC default
			//routes.MapRoute(
			//	"Default",                          // Route name
			//	"{controller}/{action}/{id}",       // URL with parameters
			//	new { controller = "Home", action = "default", id = UrlParameter.Optional }  // parameter default
			//);

            //routes.MapPageRoute("home", "home", "~/default.aspx");
            //routes.MapPageRoute("default", "default", "~/default.aspx");
            routes.MapPageRoute("about", "about", "~/icas/about.aspx");
            routes.MapPageRoute("", "about-{thePage}", "~/icas/about.aspx");

            routes.MapPageRoute("crest", "crest", "~/icas/about.aspx");
            routes.MapPageRoute("history", "history", "~/icas/about.aspx");
			routes.MapPageRoute("vision", "vision", "~/icas/about.aspx");
			routes.MapPageRoute("mission", "mission", "~/icas/about.aspx");
			routes.MapPageRoute("vision-mission", "vision-mission", "~/icas/about.aspx");

			routes.MapPageRoute("rules", "rules", "~/icas/about.aspx");
            
			routes.MapPageRoute("location", "location", "~/icas/about.aspx?Page=location");
            routes.MapPageRoute("library", "library", "~/icas/about.aspx?Page=library");
            routes.MapPageRoute("holidays", "holidays", "~/icas/about.aspx?Page=holidays");
            routes.MapPageRoute("rti", "rti", "~/icas/about.aspx?Page=rti");
            routes.MapPageRoute("links", "links", "~/icas/about.aspx?Page=best-links");
            routes.MapPageRoute("downloads", "downloads", "~/downloads.aspx");
            routes.MapPageRoute("contact", "contact", "~/ContactUs.aspx");
            routes.MapPageRoute("photo", "photo", "~/photogallery.aspx");
            routes.MapPageRoute("video", "video", "~/videogallery.aspx");
            routes.MapPageRoute("register", "register", "~/Students.aspx");
            routes.MapPageRoute("login", "login", "~/Apps/UserLogin.aspx");
			routes.MapPageRoute("logout", "logout", "~/Apps/Logout.aspx");
			
			//activity
            routes.MapPageRoute("activity", "activity", "~/icas/activties.aspx");
            routes.MapPageRoute("", "activity-{thePage}", "~/icas/activties.aspx");
			//routes.MapPageRoute("ugc-cell", "college-ugc-cell", "~/icas/activties.aspx");

			


            //staffs
			routes.MapPageRoute("staffs", "staffs", "~/icas/staffs.aspx");
			routes.MapPageRoute("", "staffs-teaching", "~/ICAS/staffs.aspx?Category=T");
			routes.MapPageRoute("", "staffs-non-teaching", "~/ICAS/staffs.aspx?Category=N");
            routes.MapPageRoute("staff", "staff-{thePage}", "~/icas/about.aspx");
			routes.MapPageRoute("", "staff-{theStudentName}", "~/icas/about.aspx");
			routes.MapPageRoute("", "staff-{thePhoneNo}", "~/icas/about.aspx");
			routes.MapPageRoute("principals-list", "principals-list", "~/icas/about.aspx");
			routes.MapPageRoute("principal-message", "principal-message", "~/icas/about.aspx");

			//students
            routes.MapPageRoute("students", "students", "~/icas/students.aspx");
			routes.MapPageRoute("student", "students-{thePage}", "~/icas/about.aspx");
			routes.MapPageRoute("college", "college-{thePage}", "~/icas/about.aspx");

			//routes.MapPageRoute("", "students-union", "~/icas/about.aspx");
			routes.MapPageRoute("", "student-{theStudentName}", "~/icas/about.aspx");
			routes.MapPageRoute("", "student-{thePhoneNo}", "~/icas/about.aspx");
			routes.MapPageRoute("", "student-feedback", "~/apps/icas/admin/studentfeedback.aspx");

			


			routes.MapPageRoute("feedback", "feedback", "~/apps/icas/admin/studentfeedback.aspx");

			routes.MapPageRoute("alumnis", "alumnis", "~/icas/about.aspx");
			routes.MapPageRoute("alumni", "alumni-{thePage}", "~/icas/about.aspx");
			routes.MapPageRoute("", "alumni-{theStudentName}", "~/icas/about.aspx");
			routes.MapPageRoute("", "alumni-{thePhoneNo}", "~/icas/about.aspx");
            
			
			
			 
		}

		void Application_End(object sender, EventArgs e)
		{
			//  Code that runs on application shutdown

		}

		void Application_Error(object sender, EventArgs e)
		{
			// Code that runs when an unhandled error occurs

		}

		void Session_Start(object sender, EventArgs e)
		{
			// Code that runs when a new session is started
			HttpContext.Current.Session.Clear();
		}

		void Session_End(object sender, EventArgs e)
		{
			// Code that runs when a session ends. 
			// Note: The Session_End event is raised only when the sessionstate mode
			// is set to InProc in the Web.config file. If session mode is set to StateServer 
			// or SQLServer, the event is not raised.
			//HttpContext.Current.Session.Clear();

		}

	}
}
