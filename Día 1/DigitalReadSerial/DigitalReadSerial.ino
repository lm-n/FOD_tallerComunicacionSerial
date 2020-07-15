/*
// Código de Arduino
// Código para sensar el estado de un switch y enviar el valor al puerto serial
*/

// Switch conectado al pin 2
int boton = 2;

// solo se ejecuta una vez
void setup() {
  Serial.begin(9600);// Inicia la comunicación serial a 9600 bits por segundo
  pinMode(boton, INPUT);  // Define el pin 0 como input
}

// bucle sin fin
void loop() {
  // leer la entrada del pin
  int estadoBoton = digitalRead(boton);
  // enviar datos a Processing
  Serial.println(estadoBoton);
  delay(100);        // esperar 100 millisegundos
}
