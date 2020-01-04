import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { Command } from 'protractor';
import { FormBuilder, Validators, FormGroup } from '@angular/forms';
import { AuthService } from '../auth.service';
declare var $: any;

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {

  loginForm: FormGroup;
  submitted = false;
  returnUrl: string;
  error: {errorTitle: '', errorDesc: ''};
  loginError: string;

  constructor(
    private fb: FormBuilder,
    private router: Router,
    private authService: AuthService
    ) { }

    
  ngOnInit() {

    document.body.className = "hold-transition login-page";
   /*  $(() =>{
        $('input').iCheck({
          checkboxClass: 'icheckbox_square-blue',
          radioClass: 'iradio_square-blue',
          increaseArea: '20%' // optional
        }); 
    }); */
    this.loginForm = this.fb.group({
      email: ['', Validators.required],
      password: ['', Validators.required]
    });

    this.authService.logout();
  }

  get email() { return this.loginForm.get('email'); }
  get password() { return this.loginForm.get('password'); }

  onSubmit() {
    this.submitted = true;
    this.authService.login(this.email.value, this.password.value).subscribe((data) => {
       if (this.authService.isLoggedIn()) {
          const redirect = this.authService.redirectUrl ? this.authService.redirectUrl : '/dashboard';
          this.router.navigate([redirect]);
        } else {
          this.loginError = 'email or password is incorrect.';
        }
      },
      error => this.error = error
    );
  }

  
 }
