/**
 * Leer Datos Simple Read
 * Basado en el  ejemplo SimpleRead de Processing
 * 
 * Lee datos del puerto serial y cambia el color de un rectángulo
 * cuando un switch conectado al arduino es presionado y soltado.
 * Este ejemplo funciona con el programa Arduino disponible abajo.
 */

import processing.serial.*;
int miVariable = 0;
int val; // Datos recibidos del puerto Serial
Serial miPuerto;  // Crea objeto de la clase Serial 

void setup(){
  size(500,500);
  printArray(Serial.list()); // permite imprimir la lista de puertos seriales
  miPuerto = new Serial(this, Serial.list()[2],9600); // hay que elegir el puerto que se utiliza
}

void draw(){
  if (miPuerto.available() > 0){ //Si hay datos disponibles,
    val = miPuerto.read(); // leerlos y guardarlos en val
  }
  if (val == 1){ // Si el valor serial es 1,
    fill(0,0,255); // Cambiar el color a azul
  }else{ // Si el valor serial es 0,
    fill(#FF0F84); // Cambiar el color a rosado
  }
  print(val);
  background(miVariable);
  stroke(#FAFF0F);
  strokeWeight(4);
  
  if (mouseX > 200 && mouseX < 290 && mouseY > 200 && mouseY < 250){
    if (mousePressed){
      miVariable = 255;
      print("aqui");
    }
    fill(0);
  }
  rect(200,200,90,50);
}
