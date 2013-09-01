using System;
using ServiceStack.ServiceInterface;

namespace Dart.Seed.Api
{
    public class PersonService : Service
    {
        public object Get(PersonRequest request)
        {
            return new PersonResponse {Person = new Person {Age = 122, FirstName = "Charlie", Surname = "Foulkes"}};

        }

        public void Post(Person person)
        {
            Console.WriteLine("This is a person");
        }
    }
}