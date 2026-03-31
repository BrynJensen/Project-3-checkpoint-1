//colour selector checkpoint

color darkestGreen = #132A13;
color darkGreen = #31572C;
color green = #4F772D;
color lightGreen = #90A955;
color lightestGreen = #ECF39E;
color white = #FFFFFF;

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

  tactile (100, 150, 50);
  fill(darkGreen);
  circle(100, 150, 100);

  tactile (300, 150, 50);
  fill(green);
  circle(300, 150, 100);

  tactile (500, 150, 50);
  fill(lightGreen);
  circle(500, 150, 100);

  //indicator
  stroke(darkestGreen);
  fill(shade);
  square(100, 300, 400);
}

void tactile (int x, int y, int r) {
  if (dist(x, y, mouseX, mouseY) < r) {
    stroke(white);
  } else {
    stroke(darkestGreen);
  }
}

void button (int x, int y, int r, int colour) {
  if (dist(x, y, mouseX, mouseY) < r) {
    shade = colour;
  }
}

void mouseReleased() {
  //leftmost button
  button (100, 150, 50, darkGreen);

  //middle button
  button (300, 150, 50, green);
  
  //rightmost button
  button (500, 150, 50, lightGreen);
}
