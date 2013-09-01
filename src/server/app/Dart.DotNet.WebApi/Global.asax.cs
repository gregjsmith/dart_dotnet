using System;

namespace Dart.DotNet.WebApi
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            new DartDotNetAppHostBase().Init();
        }
    }
}