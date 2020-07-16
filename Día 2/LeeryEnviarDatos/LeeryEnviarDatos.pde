/**
 * Enviar y recibir datos 
 * 
 * Lee datos del puerto serial y cambia el color de un rectángulo
 * dependiendo de los datos analógicos recibidos.
 * Envía datos a Arduino.
 */

import processing.serial.*;
int miVariable = 0;
int val; // Datos recibidos del puerto Serial
Serial miPuerto;  // Crea objeto de la clase Serial 

void setup(){
  size(255,255);
  printArray(Serial.list()); // permite imprimir la lista de puertos seriales
  miPuerto = new Serial(this, Serial.list()[2],9600); // hay que elegir el puerto que se utiliza
}

void draw(){
  if (miPuerto.available() > 0){ //Si hay datos disponibles,
    val = miPuerto.read(); // leerlos y guardarlos en val
  }
  //println(val);
  fill(0,0,val);
  background(miVariable);
  stroke(#FAFF0F);
  strokeWeight(4);
  miPuerto.write(mouseX);
  println(mouseX);
  rect(200,200,90,50);
}
