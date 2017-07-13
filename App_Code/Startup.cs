using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(whowhatecommerce.Startup))]
namespace whowhatecommerce
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
