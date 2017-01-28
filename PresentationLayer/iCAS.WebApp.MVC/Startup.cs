using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(iCAS.WebApp.MVC.Startup))]
namespace iCAS.WebApp.MVC
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
