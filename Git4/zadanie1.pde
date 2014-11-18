// Zadanie 1
// automat skończony jednowymiarowy reguła 38

int sharex = 8;
int [] flatland = new int[sharex]; 
int [] nextflatland = new int[sharex]; 
int czas = 200;
int y =0;

void setup() {
  size (400, 800);
  for (int i =0; i < sharex; i++)
    flatland[i] = int( random(2)); 
  czas = millis();
}
void draw() {
  if (stop(200)) {
    changeflatland();
    printflatland();
  }
}

boolean stop(int milisekundy) { 
  if (millis() - czas > milisekundy) {
    czas = millis();
    return true;
  } else
    return false;
}

void changeflatland() {
  int i; 
  for (i = 1; i < sharex-1; i++) {                                      // reguły dla wszystkich punktów z wyjątkiem pierwszego i ostatniego
    if (flatland[i-1] == 0 && flatland[i]==0 && flatland[i+1] ==0) {
      nextflatland[i] =0;
    }
    if (flatland[i-1] == 0 && flatland[i]==0 && flatland[i+1] ==1) {
      nextflatland[i] =1;
    }
    if (flatland[i-1] == 0 && flatland[i]==1 && flatland[i+1] ==0) {
      nextflatland[i] =1;
    }
    if (flatland[i-1] == 0 && flatland[i]==1 && flatland[i+1] ==1) {
      nextflatland[i] =0;
    }
    if (flatland[i-1] == 1 && flatland[i]==0 && flatland[i+1] ==0) {
      nextflatland[i] =0;
    }
    if (flatland[i-1] == 1 && flatland[i]==0 && flatland[i+1] ==1) {
      nextflatland[i] =1;
    }
    if (flatland[i-1] == 1 && flatland[i]==1 && flatland[i+1] ==0) {
      nextflatland[i] =0;
    }
    if (flatland[i-1] == 1 && flatland[i]==1 && flatland[i+1] ==1) {
      nextflatland[i] =0;
    }
  }
  i =sharex-1;                                                      // reguły dla ostatniego punktu
  if (flatland[i-1] == 0 && flatland[i]==0 && flatland[0] ==0) {
    nextflatland[i] =0;
  }
  if (flatland[i-1] == 0 && flatland[i]==0 && flatland[0] ==1) {
    nextflatland[i] =1;
  }
  if (flatland[i-1] == 0 && flatland[i]==1 && flatland[0] ==0) {
    nextflatland[i] =1;
  }
  if (flatland[i-1] == 0 && flatland[i]==1 && flatland[0] ==1) {
    nextflatland[i] =0;
  }
  if (flatland[i-1] == 1 && flatland[i]==0 && flatland[0] ==0) {
    nextflatland[i] =0;
  }
  if (flatland[i-1] == 1 && flatland[i]==0 && flatland[0] ==1) {
    nextflatland[i] =1;
  }
  if (flatland[i-1] == 1 && flatland[i]==1 && flatland[0] ==0) {
    nextflatland[i] =0;
  }
  if (flatland[i-1] == 1 && flatland[i]==1 && flatland[0] ==1) {
    nextflatland[i] =0;
  }


  i =0;                                                                    // reguły dla pierwszego punktu
  if (flatland[sharex-1] == 0 && flatland[i]==0 && flatland[i+1] ==0) {
    nextflatland[i] =0;
  }
  if (flatland[sharex-1] == 0 && flatland[i]==0 && flatland[i+1] ==1) {
    nextflatland[i] =1;
  }
  if (flatland[sharex-1] == 0 && flatland[i]==1 && flatland[i+1] ==0) {
    nextflatland[i] =1;
  }
  if (flatland[sharex-1] == 0 && flatland[i]==1 && flatland[i+1] ==1) {
    nextflatland[i] =0;
  }
  if (flatland[sharex-1] == 1 && flatland[i]==0 && flatland[i+1] ==0) {
    nextflatland[i] =0;
  }
  if (flatland[sharex-1] == 1 && flatland[i]==0 && flatland[i+1] ==1) {
    nextflatland[i] =1;
  }
  if (flatland[sharex-1] == 1 && flatland[i]==1 && flatland[i+1] ==0) {
    nextflatland[i] =0;
  }
  if (flatland[sharex-1] == 1 && flatland[i]==1 && flatland[i+1] ==1) {
    nextflatland[i] =0;
  }

  for (i = 0; i < sharex; i++) {
    flatland[i] = nextflatland[i];
  }
}

void printflatland() {
  for (int i = 0; i < sharex-1; i++) {
    if (flatland[i] == 1)
      fill(255);
    else
      fill(40);
    rect(i+i*20, 20+y, 21, 21);
  }
  y+=20;
}
