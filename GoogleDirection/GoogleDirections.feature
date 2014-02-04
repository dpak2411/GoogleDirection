Feature: GoogleDirection 
         Calls out to the Google directions API and produces a report with directions
             
                                     
 Background: 
  Given alteryx running at "http://gallery.alteryx.com/"
  And I am logged in using "deepak.manoharan@accionlabs.com" and "P@ssw0rd"
  
Scenario Outline: Google directions API
When I run Google directions API with Origin "<Origin>" Destination "<Destination>"
Then I see the Map Data  result "<MapData>"

Examples: 
| Origin  | Destination | MapData              |
| Boulder |   Irvine    | Boulder, CO, USA     |