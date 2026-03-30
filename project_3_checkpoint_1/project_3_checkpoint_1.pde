//colour selector checkpoint

color darkestGreen = #132A13;
color darkGreen = #31572C;
color green = #4F772D;
color lightGreen = #90A955;
color lightestGreen = #ECF39E;

color shade;

void setup() {
 size(600, 800);
 strokeWeight(5);
 stroke(darkestGreen);
 shade = green;
}

void draw() {
 background(lightestGreen);
 
 //buttons
 fill(darkGreen);
 circle(100, 150, 100);
 
 fill(green);
 circle(300, 150, 100);
 
 fill(lightGreen);
 circle(500, 150, 100);
 
 //indicator
 fill(shade);
 square(100, 300, 400);
}


void mouseReleased(){
  //leftmost button
 if(dist(100, 150, mouseX, mouseY) < 50) {
   shade = darkGreen;
 }
 
 //middle button
 if(dist(300, 150, mouseX, mouseY) <50){
  shade = green; 
 }
 
 //rightmost button
 if(dist(500, 150, mouseX, mouseY) <50){
  shade = lightGreen; 
 }
 
}
