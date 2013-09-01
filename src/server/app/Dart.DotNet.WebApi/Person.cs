using ServiceStack.ServiceHost;

namespace Dart.DotNet.WebApi
{
    [Route("/person/save", "POST")]
    public class Person
    {
        public string FirstName { get; set; }
        public string Surname { get; set; }
        public int Age { get; set; }
    }

}
