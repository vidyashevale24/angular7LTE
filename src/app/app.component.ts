//template Driven approach
/*
import { Component , ViewChild} from '@angular/core';
import { NgForm } from '@angular/forms';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  @ViewChild('f') signupForm:NgForm;
  title = 'demoAng';
  defaultQuestion="teacher";
  questionAns ="";
  genders=['Male','Female'];

  // onSubmit(form:NgForm){
  //   console.log(form);
  // }
  user = {
    username : '',
    email: '',
    secreteQuestion: '',
    questionAns:'',
    gender:''
  };
  submitted = false;
  suggestUsername(){
    const suggestedName = 'Superuser';
    this.signupForm.setValue({
      userData:{
        username:suggestedName,
        email:'',
      },
       question: 'pet',
       questionAns:'',
       gender:'male'
    });
    // this.signupForm.form.patchValue({
    //   userData:{
    //     username:suggestedName
    //   }
    // });
  }

  onSubmit(){
    this.submitted = true;
    this.user.username = this.signupForm.value.userData.username;
    this.user.email = this.signupForm.value.userData.email;
    this.user.secreteQuestion = this.signupForm.value.question;
    this.user.questionAns = this.signupForm.value.questionAns;
    this.user.gender = this.signupForm.value.gender;
    this.signupForm.reset();
    console.log(this.signupForm);
  }
}
*/
//Reactive form approach

import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent  implements OnInit{
 
  ngOnInit(){

  }




}