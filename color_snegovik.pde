width = 400;
height = 400;

background (255, 255, 0);
strokeWeight(10);
// bottom circle:
fill (0, 0, random(0,255));
ellipse (200, 325, 150, 150);
// middle circle:
fill (0, random(0,255), 0);
stroke(255, 255, 255);
ellipse (200, 225, 100, 100);
// top circle:
fill (random(0,255), 0, 0);
noStroke();
ellipse (200, 150, 75, 75);