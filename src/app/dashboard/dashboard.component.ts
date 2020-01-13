import { Component, OnInit ,OnDestroy} from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-dashboard',
  templateUrl: './dashboard.component.html',
  styleUrls: ['./dashboard.component.css']
})
export class DashboardComponent implements OnInit ,OnDestroy {
  parentMessage: string;
 
  constructor(private router:Router) { }

  ngOnInit() {
    document.body.className = "hold-transition skin-blue sidebar-mini";
    const currentUser = localStorage.getItem('currentUser');
    if(currentUser == null){
      this.router.navigate(['/login']);
    } else{
      this.parentMessage = currentUser;
      console.log("in dash"+this.parentMessage);
    }
   
   }

  ngOnDestroy() : void{
    document.body.className = "";
  }
}
