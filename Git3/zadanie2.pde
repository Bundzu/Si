// Zadanie 2
// gra w życie

int sharex = 50;
int sharey = 50;
int [][] flatland = new int[sharex][sharey];
int [][] nextflatland = new int[sharex][sharey];
int czas = 500;
int suma;

void setup() {
  size (550, 550);                                 // rozmiar planszy
  for (int i =0; i < sharex; i++)                    
    for (int j = 0; j < sharey; j++)
      flatland[i][j] = int( random(2));            // początkowe losowanie punktów
  czas = millis();
}

//void setup() {                                   // testowy blinker do testów
//  size (550, 550);
//  flatland[5][9]=1;
//  flatland[5][8]=1;
//  flatland[5][7]=1;
//}

void draw() {
  if (stop(500)) {                                 // wywołujemy funkcję mierzącą czas
    changeflatland();
  } else {
    printflatland();
  }
}

boolean stop(int milisekundy) {                    // funkcja mierząca czas
  if (millis() - czas > milisekundy) {
    czas = millis();
    return true;
  } else
    return false;
}


void printflatland() {                             // funkcja mierząca czas
  for (int i = 0; i < sharex; i++) {
    for (int j = 0; j < sharey; j++) {
      if (flatland[i][j] == 1)
        fill(0);
      else
        fill(255);
      rect(i+i*10, j+j*10, 11, 11);
    }
  }
}


void changeflatland() {

  for (int i = 1; i< sharex-1; i++) {
    for (int j = 1; j< sharey-1; j++) {
      suma = 0;
      suma += flatland[i-1][j] + flatland[i+1][j] + flatland[i][j-1] + flatland[i][j+1] + flatland[i+1][j+1] + flatland[i-1][j-1] + flatland[i+1][j-1] + flatland[i-1][j+1]; // suma wszystkich 8 pół wokół punktu
      
      if (flatland[i][j] ==1  && (suma < 2 || suma > 3)) {
        nextflatland[i][j] =0;
      }
      if ((flatland[i][j]==0) && (suma ==3)) {
        nextflatland[i][j] = 1;
      }
      if (flatland[i][j] ==1  && (suma == 2 || suma == 3)) {
        nextflatland[i][j] = 1;
      }
    }
  }
  for (int i = 0; i< sharex; i++) {
    for (int j = 0; j< sharey; j++) {
      flatland[i][j] = nextflatland[i][j];
    }
  }
}

