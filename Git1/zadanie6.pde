// Robimy czarno-białą szachownicę

int wypelnienie = 255;            // przydatne zmienne które muszą być widoczne w całym programie
int i = 0;

void setup() {                    
size (500, 500);
}

void kwadrat (int xp, int yp, int xk, int yk ){    // funkcja kwadrat: xp i yp - położenie punktu początkowego, xk - szerokość, yk - wysokość
rect(xp, yp, xk, yk);                              
}

void draw() {                                      
fill(wypelnienie);                                 // wypełnienie kwadratu
for (int j=0; j<500;){                             // pętla for zrobi nam 10 kwadratów o wymiarach 50 x 50 w osi y

for (i=0; i<500; i=i+50){                          // następna pętla: kwadraty w osi x
  kwadrat (0 + i, 0 + j, 50, 50);
    if(wypelnienie == 255){                        // instrukcja warunkowa sprawdza kolor kwadratu
      wypelnienie = 0;
      fill(wypelnienie);
    }
      else{
        wypelnienie = 255;
        fill(wypelnienie);
      }
  }                                                // koniec pętli w osi x
  
  j=j+50;
  kwadrat (0 + i, 0 + j, 50, 50);
   if(wypelnienie == 255){                        // niezbędne jest ponowne sprawdzanie koloru aby były ułożone na przemian
      wypelnienie = 0;
      fill(wypelnienie);
    }
      else{
        wypelnienie = 255;
        fill(wypelnienie);
    }
  }
}

