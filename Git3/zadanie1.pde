// Zadanie 1 
// tablica 50 na 50 pokazująca losowo białe lub szare punkty

int sharex = 50;
int sharey = 50;
int [][] flatland = new int[sharex][sharey];      // tablica dwuwymiarowa
int czas = 1000;

void setup(){
size (550,550);                                   // rozmiar planszy
for(int i =0; i < sharex; i++)                    
  for(int j = 0; j < sharey; j++)
    flatland[i][j] = int( random(2));             // początkowe losowanie punktów
czas = millis();
}

void draw(){
  if (stop(200))                                  // wywołujemy funkcję mierzącą czas
    changeflatland();
  else
    printflatland(); 
}

boolean stop(int milisekundy){                    // funkcja mierząca czas
  if (millis() - czas > milisekundy){
    czas = millis();
    return true;
  }
  else
  return false;
}

void changeflatland(){                            // funkcja losująca punkty
  for (int i = 0; i < sharex; i++)
    for (int j = 0; j < sharey; j++)
      flatland[i][j] = int(random(2));            // tylko 2 wartości: 0 lub 1
}

void printflatland(){                             // rysowanie punktów
  for (int i = 0; i < sharex; i++){
    for (int j = 0; j < sharey; j++){
      if (flatland[i][j] == 1)
        fill(255);
      else
        fill(40);
      rect(i+i*10,j+j*10,11,11);
    }
  }
}
