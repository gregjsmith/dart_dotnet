import 'model.dart';
import 'services.dart' show PersonService;

import 'dart:async';
import 'dart:html';

void main(){
  
  var service = new PersonService();
  
  var page = new IndexPage(service);
  
  page.initialiseHandlers();

}

class IndexPage {
  
  InputElement findButton = query('#find-person');
  FormElement savePersonForm = query('#save-person-form');
  
  PersonService service;
  
  IndexPage(this.service);
  
  void initialiseHandlers() {
    
    findButton.onClick.listen((e) {
      Person p = service.getPerson();
      uploadPersonMarkup(p);        
    });
    
    savePersonForm.onSubmit.listen((e) {
        FormElement form = e.target as FormElement;
        
        var data = {};
        
        form.children.forEach((Element e) {
           if(e is InputElement){
             data[e.name] = e.value;
           }
        });
        
        service.save(data);
        
    });
        
  }

  void uploadPersonMarkup(Person person) {
    DivElement personDiv = new DivElement()
    ..children.add(new ParagraphElement()..text = "You found a person")
      ..children.add(new ParagraphElement()..text = "Firstname: " + person.firstname)
        ..children.add(new ParagraphElement()..text = "Surname: " + person.surname)
          ..children.add(new ParagraphElement()..text = "Age: " + person.age.toString());
    
    document.body.children.add(personDiv);
  }
  
}