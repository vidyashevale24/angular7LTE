import { Component, OnInit ,Input} from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-topnavbar',
  templateUrl: './topnavbar.component.html',
  styleUrls: ['./topnavbar.component.css']
})
export class TopnavbarComponent implements OnInit {
  profileData:Object;
  @Input() childMessage: string;
  constructor(private router: Router) { }
    
  ngOnInit() {
    this.profileData = JSON.parse(this.childMessage);
   }
  
  logout(){
    localStorage.removeItem('currentUser');
    this.router.navigate(['/login']);
  }
}
