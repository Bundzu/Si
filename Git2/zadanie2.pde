// zegar cyfrowy (niedziałający)
void setup() {
  size (500, 200);
  background(0);
}

// linie do konstrukcji cyfr
void poz (int xpoz, int ypoz) {
  fill(255, 0, 0);
  rect(xpoz, ypoz, 50, 5);
}

void pion (int xpion, int ypion) {
  fill(255, 0, 0);
  rect(xpion, ypion, 5, 50);
}

// cyfry składają się z liniii (powyższych funkcji)
void l1(int x) {
  pion (0+x, 0);
  pion (0+x, 50);
}
void l2(int x) {
  pion(50+x, 0);
  pion(0+x, 50);
  poz(0+x, 0);
  poz(0+x, 50);
  poz(0+x, 100);
}
void l3(int x) {
  pion(50+x, 0);
  pion(50+x, 50);
  poz(0+x, 0);
  poz(0+x, 50);
  poz(0+x, 100);
}
void l4(int x) {
  pion(0+x, 0);
  pion(0+x, 50);
  pion(50+x, 50);
  poz(0+x, 50);
}
void l5(int x) {
  pion(0+x, 0);
  pion(50+x, 50);
  poz(0+x, 0);
  poz(0+x, 50);
  poz(0+x, 100);
}
void l6(int x) {
  pion(0+x, 0);
  pion(0+x, 50);
  pion(50+x, 50);
  poz(0+x, 0);
  poz(0+x, 50);
  poz(0+x, 100);
}
void l7(int x) {
  pion(50+x, 0);
  pion(50+x, 50);
  poz(0+x, 0);
}
void l8(int x) {
  pion(0+x, 0);
  pion(0+x, 50);
  pion(50+x, 50);
  pion(50+x, 0);
  poz(0+x, 0);
  poz(0+x, 50);
  poz(0+x, 100);
}
void l9(int x) {
  pion(0+x, 0);
  pion(0+x, 50);
  pion(50+x, 50);
  poz(0+x, 0);
  poz(0+x, 50);
  poz(0+x, 100);
}
void l0(int x) {
  pion(0+x, 0);
  pion(0+x, 50);
  pion(50+x, 50);
  pion(50+x, 0);
  poz(0+x, 0);
  poz(0+x, 100);
}
void kropki(int x){
  rect(0+x,35,5,5);
  rect(0+x,65,5,5);
}

// rysujemy cyfry
void draw() {
  l1(50); 
  l2 (60);  
  kropki(120);
  l0(130); 
  l0(190);
}

