/*
// Código de Arduino
// Código para sensar el estado de un switch y enviar el valor al puerto serial
*/

// Switch conectado al pin 2
int boton = 2;
int led = 13;
int val;

// solo se ejecuta una vez
void setup() {
  Serial.begin(9600);// Inicia la comunicación serial a 9600 bits por segundo
  pinMode(led, OUTPUT); // Declara el pin como OUTPUT
  pinMode(boton, INPUT);  // Define el pin 0 como input
}

// bucle sin fin
void loop() {
  if (Serial.available()){ // Si hay datos que se puedan leer
    val = Serial.read(); // leerlos y guardarlos en val 
  }
  if (val == 1){
    digitalWrite(led, HIGH); // encienda el LED
  }else{
    digitalWrite(led, LOW); // encienda el LED
  }
  // leer la entrada del pin
  int estadoBoton = digitalRead(boton);
  // enviar datos a Processing
  Serial.write(estadoBoton);
  delay(100);        // esperar 100 millisegundos
}
