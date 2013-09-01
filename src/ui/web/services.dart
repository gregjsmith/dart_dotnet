library service;

import 'model.dart';
import 'dart:html';
import 'dart:json';

class PersonService {
  
  Map routes = {
      'person': "/person/"          
  };
  
  String _serviceUrl;
  
  PersonService(){
    _serviceUrl = "http://localhost:15425";
  }
  
  PersonService.fromUrl(String url){
    _serviceUrl = url;
  }
  
  Person getPerson(){
    
    var person = getJson(_serviceUrl + routes['person'], false);
    
    return new Person.fromPascalCaseJson(person);
    
  }
  
  void save(Map person){
    String json = stringify(person);
    saveJson(_serviceUrl + routes['person'] + 'save', json);
  }
}

saveJson(String url, String json){
  var request = new HttpRequest();
  
  request.open("POST", url, async: false);
  request.setRequestHeader('Content-Type', 'application/json');
  request.send(json);
}

getJson(String url, bool async){

    var request = new HttpRequest()
    ..open("GET", url, async: async)
    ..setRequestHeader('Accept', 'application/json')
    ..send();
    
    return request.response;
 
}