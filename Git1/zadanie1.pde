// ten program będzie nam pokazywał 4 czarne kropki na czerwonym tle połączone zielonymi liniami

size (300, 300);            // rozdzielczość planszy
background (255 , 0, 0);    // kolor tła (RGB - liczby od 0 do 255)
stroke (0, 0, 0);           // kolor punktu
point (10, 10);             // pozycja punktu (X i Y)
stroke (0);                 // alternatywny zapis koloru (0 to czarny a 255 to biały)
point (290, 10);
stroke (0);
point (10, 290);
stroke (0);
point (290, 290);
                            // teraz robimy linie:
stroke (0, 255, 0);        
line (11, 10, 289, 10);     // górna linia (pierwsze 2 liczby to X i Y początkowe a dwie ostatnie to X i Y końcowe)

stroke (0, 255, 0);
line (10, 11, 10, 289);     // lewa linia

stroke (0, 255, 0);
line (11, 290, 289, 290);   // dolna linia

stroke (0, 255, 0);
line (290, 11, 290, 289);   // prawa linia

