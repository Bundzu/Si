// teraz robimy własną funkcję do robienia sześcianów, nazwiemy ją dla jaj "kwadrat"

void setup() {
  size (500, 500);
  stroke (255);
}

void kwadrat (int xp, int yp, int xk, int yk ){    // tutaj robimy funkcję do robienia sześcianów, będzie ona korzystać ze zmiennych które podamy w funkcji "draw"
                                                   // xp - x punktu początkowego, yp - y punktu początkowego, xk - szerokosć, yk - wysokość 
 stroke (255,0,0);                                 // czerwone linie
 rect(xp, yp, xk, yk);                             // od razu robimy kwadrat
 rect(xp+50, yp+50, xk, yk);                       // następnie drugi przesunięty o 50 pikseli

 line(xp, yp, xp+50, yp+50);                       // łączymy te kwadraty 3 liniami bo czwarta będzie niewidoczna
 line(xp, yk+yp, xp+50, yk+50+yp);
 line(xk+xp, yp, xk+50+xp, yp+50);

}

void draw() {                                      // rysujemy sześcian
  background(0);
  kwadrat (10, 10, 200, 200);                      // tutaj podajemy wartości zmiennych
}

