import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { TopnavbarComponent } from './topnavbar/topnavbar.component';

import { FooterComponent } from './footer/footer.component';
import { SettingsComponent } from './settings/settings.component';
import { AsidenavComponent } from './asidenav/asidenav.component';
import { ContentComponent } from './content/content.component';

@NgModule({
  declarations: [
    TopnavbarComponent, 
    AsidenavComponent,
    ContentComponent,
    FooterComponent, 
    SettingsComponent
     
  ],
  imports: [
    CommonModule
  ],
  exports: [
    TopnavbarComponent, 
    AsidenavComponent,
    ContentComponent,
    FooterComponent,
    SettingsComponent
  ]
})
export class LayoutModule { }
