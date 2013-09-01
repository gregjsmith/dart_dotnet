using ServiceStack.ServiceHost;

namespace Dart.Seed.Api
{
    [Route("/person/", "GET")]
    public class PersonRequest : IReturn<PersonResponse>
    {}
}