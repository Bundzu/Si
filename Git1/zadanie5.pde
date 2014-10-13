// kilka nakładających się sześcianów

void setup() {
  size (500, 500);
  stroke (255);
}

void kwadrat (int xp, int yp, int xk, int yk ){
 stroke(255,0,0);
 rect(xp, yp, xk, yk);  // kwadrat
 rect(xp+50, yp+50, xk, yk);

 line(xp, yp, xp+50, yp+50);
 line(xp, yk+yp, xp+50, yk+50+yp);
 line(xk+xp, yp, xk+50+xp, yp+50);

}

void draw() {
  background(0);
  for (int i=1; i<5; i++){                        // jedyna właściwie zmiana to pętla for, i będzie modyfikować pozycje sześcianu
  kwadrat(20 + 9 * i, 10 + 8 * i, 200 + 9 * i, 200 + 8 * i);
  }
} 
