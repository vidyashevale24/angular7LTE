import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { DashboardComponent } from './dashboard/dashboard.component';
import { LayoutModule } from './layout/layout.module';
import { LoginComponent } from './auth/login/login.component';
import { LogoutComponent } from './auth/logout/logout.component';


const routes: Routes = [
  { path: '', redirectTo:'login' ,pathMatch:'full' },
  { path:'login',component:LoginComponent },
  { path:'logout',component:LogoutComponent },
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
