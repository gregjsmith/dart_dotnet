using ServiceStack.ServiceHost;

namespace Dart.DotNet.WebApi
{
    [Route("/person/", "GET")]
    public class PersonRequest : IReturn<PersonResponse>
    {}
}