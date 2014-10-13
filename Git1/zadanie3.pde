// robimy przesuwający się sześcian 3D w górę:

int y = 200;          // zmienne można ustawiać poza funkcjami

void setup() {        // funkcja setup
  size (300, 300);    // rozdzielczość
  stroke (255);       // kolor sześcianu
  frameRate(50);      // częstotliwość odświeżania
}

void draw() {         // funkcja rysowania, działa jak pętla
  background (0);     // czarne tło 
  y--;                // odejmujemy wartość zmiennej y o 1        
  if ( y<0 ) {        // jeżeli wartość y jest mniejsza niż 0 to ustawiamy to ponownie na wartość 200
    y=200;
  }


line (100, 100+y, 200, 100+y);    // dodajemy y do wartości Y
line (200, 200+y, 200, 100+y);
line (100, 200+y, 200, 200+y);
line (100, 200+y, 100, 100+y);

line (250, 150+y, 250, 50+y);
line (150, 150+y, 150, 50+y);
line (150, 50+y, 250, 50+y);
line (150, 150+y, 250, 150+y);

line (100, 100+y, 150, 50+y);
line (200, 100+y, 250, 50+y);
line (200, 200+y, 250, 150+y);
line (100, 200+y, 150, 150+y);

} 
