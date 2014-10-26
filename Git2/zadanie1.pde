// prosty jednowskazówkowy zegar

int x =0;        // pozycje wskazówki
int y =0;

void setup() {
size (500, 500);
background(255);
frameRate(60);
}

void draw() {
  smooth();                    // wygładzanie
  fill(0,0,0);
  ellipse(250,250,500,500);    // koło (tarcza zegara)
  
fill(255,255,255);
textSize(32);                  // rozmiar tekstu
text("12", 230, 40);           // tekst
text("3", 470, 260 );
text("6", 240, 490);
text("9", 10, 260);
if (y == 0){
x++;
}
if (x == 500){
y++;
}
if (y == 500){
x--;
}
if (x == 0){
y--;
}
    stroke(255);               // kolor
    line(250, 250, x, y);      // zmieniamy pozycję wskazówki
}

