using Funq;
using ServiceStack.ServiceInterface.Cors;
using ServiceStack.WebHost.Endpoints;

namespace Dart.DotNet.WebApi
{
    public class DartDotNetAppHostBase : AppHostBase
    {
        public DartDotNetAppHostBase() : base("Dart DotNet Services", typeof(PersonService).Assembly)
        {}

        public override void Configure(Container container)
        {
            this.Plugins.Add(new CorsFeature());

        }
    }
}