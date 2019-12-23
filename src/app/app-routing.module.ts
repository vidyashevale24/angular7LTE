import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { DashboardComponent } from './dashboard/dashboard.component';
import { LayoutModule } from './layout/layout.module';
import { LoginComponent } from './auth/login/login.component';


const routes: Routes = [
  { path: '', redirectTo:'login' ,pathMatch:'full' },
  { path:'login',component:LoginComponent },
  { path:'dashboard',component:DashboardComponent },
];

@NgModule({
  imports:
    [
        RouterModule.forRoot(routes),
        LayoutModule
    ],
  exports: [RouterModule]
})
export class AppRoutingModule { }
