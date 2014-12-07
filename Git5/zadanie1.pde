// Zadanie 1
// algorytm genetyczny liczący maksimum funkcji -x²+5, wyniki pokażą się w terminalu (na dole).

// te 4 linie poniżej można edytować 
int p = -10;                           // początek przedziału, nie może być to za duża liczba
int k = 10;                            // koniec przedziału, nie może być to za duża liczba
int popsize = 10;                      // ilość osobników
int pokolenie = 100;                   // liczba pokoleń

int rodzic1;
int rodzic2;
float suma;

float [] osobniki = new float[popsize];                        // populacja
float [] ocena = new float[popsize];                           // ocena czyli wartość z -x²+5
float [] prawdopodobienstwo = new float [popsize];             // prawdopodobieństwo wyboru któregoś z osobników
float [] dzieci = new float[popsize];                          // następna generacja

void setup() {
  print("Wylosowane osobniki: ");
  for (int i = 0; i < popsize; i++) {                          // losowanie
    osobniki[i]= random(p, k);
    print(osobniki[i]+" ");                                    // wypisanie osobników
  }
  println();
  println();
  for (int i = 0; i< pokolenie; i++) {                         // pętla wykona się tyle ile jest wybranych pokoleń
    ocena();
    ruletka();
    nextgen();
  }
}

float funkcja (float x) {                                      // funkcja licząca 
  return-(x*x)+5;
}

void ocena() {                                                 // ocena osobników - metoda ruletki
  print("ocena: ");
  for (int i = 0; i < popsize; i++) {
    if (funkcja (osobniki[i])<0) {                             // prawdopodobieństwo nie może być ujemne
      suma+= ocena[i] = 0;                                     // więc je po prostu zerujemy
      print (ocena[i]+ " ");
    } else {
      suma+= ocena[i] = funkcja (osobniki[i]);
      print (ocena[i]+ " ");
    }
  }

  for (int i = 0; i < popsize; i++) {
    prawdopodobienstwo[i] = ocena[i]/suma;
  }
  suma = 0;
  println();
}

void ruletka() {                                               // losowanie rodziców, crossover i mutacje
  for (int j = 0; j < popsize; j++) {
    float r = random(1);
    for (int i = 0; i< popsize; ) {
      suma += prawdopodobienstwo[i];
      if (r < suma) {
        rodzic1 = i;
        break;
      } else {
        i++;
      }
    }
    suma = 0;

    r = random(1);
    for (int i = 0; i< popsize; ) {
      suma += prawdopodobienstwo[i];
      if (r < suma) {
        rodzic2 = i;
        break;
      } else {
        i++;
      }
    }
    suma = 0;
    int mutek = int(random(19));                                        // mutacje dzieci, losujemy liczbę od 0 do 19 (5% szans)
    if (mutek == 0) {                                                   // jeżeli wylosuje się 0 to następuje mutacja
      float mutacja = random(-1, 1);                                    // po prostu dodajemy liczbę od -1 do 1 do dziecka
      dzieci[j]=((osobniki[rodzic1]+osobniki[rodzic2])/2)+ (mutacja);
      println("mutacja!");
    } else {                                                            // w przeciwnym wypadku wyliczamy średnią arytmetyczną
      dzieci[j]=(osobniki[rodzic1]+osobniki[rodzic2])/2;
    }
  }
}

void nextgen() {                                                // dzieci stają się rodzicami
  for (int i = 0; i < popsize; i++) {
    osobniki[i] = dzieci [i];
  }
  print("Nextgen: ");                                           // dalej jest tylko drukowanie
  for (int i = 0; i < popsize; i++) {   
    print(osobniki[i]+ " ");
  }
  println();
  println();
}

