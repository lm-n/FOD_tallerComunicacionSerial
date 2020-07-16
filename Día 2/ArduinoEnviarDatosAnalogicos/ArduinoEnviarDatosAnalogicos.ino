/*
  Enviar datos analogicos a Processing
*/

void setup() {
  // inicializa comunicacion serial a 9600 bits por segundo:
  Serial.begin(9600);
}

void loop() {
  // lee el valor en el pin analogico 0:
  int sensorValue = analogRead(A0);
  // escribe el valor para que Processing lo lea:
  Serial.write(sensorValue/4);
  delay(100);        //delay para no atiborrar a Processing
}
