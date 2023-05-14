PImage HimejiCastle,HimejiCastle1,HimejiCastle2,HimejiCastle3;
PFont miFuente; 
float pX,pY;
String pantalla;
int segundos;
int cuenta;
float posX,posY,ancho,alto;

void setup() {  
  size(640,480);
segundos = 0;
pantalla = "comienza";
cuenta = 0;
posX=240;
posY=410;
ancho=150;
alto=50;
pX= width/2;
pY= height/2;

textSize(20);
textAlign(CENTER,CENTER); 

miFuente = loadFont("TimesNewRomanPS-ItalicMT-48.vlw");
HimejiCastle = loadImage("HimejiCastle.jpg");
HimejiCastle1 = loadImage("HimejiCastle1.jpg");
HimejiCastle2 = loadImage("HimejiCastle2.jpg");
HimejiCastle3 = loadImage("HimejiCastle3.jpg");

pX= width;
}  

void draw(){
background(15);
 segundos++;
  
 
//textos
 if (pantalla.equals("comienza")) {
   image(HimejiCastle,0,0);
    textAlign(CENTER);
    fill(255,250,0);
    text("El Castillo Himeji es un castillo japonés \n , también conocido como el Castillo de la Garza Blanca ( Shirasagijo )\ndebido a su elegante apariencia blanca,\nlocalizado en la ciudad costera de Himeji en la prefectura de Hyōgo \n (antiguo distrito de Shikito en la provincia de Harima)", width/2, pX);
   if(pX>width/2) {
    pX--;}
  } else if (pantalla.equals("primera")) {
    image(HimejiCastle1,0,0);
    textAlign(CENTER);
    fill(255,250,0);
    text("Es una de las estructuras más antiguas del Japon medieval\nque aún sobrevive en buenas condiciones; \nfue designdo como patrimonio de la humanidad por la Unesco en 1993,\ntambién es un sitio histórico especial de japon y un Tesoro Nacional.",width/2,pY);
    if(width/2>height/2){
      pY--;
    }
  } else if (pantalla.equals("segunda")) {
    image(HimejiCastle2,0,0);
    textAlign(CENTER);
    fill(255,255,0);
    text("Se compone de más de ochenta edificios repartidos en múltiples salas,\nque están conectadas por una serie de puertas y caminos sinuosos.\nLa mayoría de los visitantes del castillo de Himeji entran al castillo\na través de la puerta Otemon en el tercer patio sin admisión ( Sannomaru ).\nEl Sannomaru contiene un gran césped arbolado de cerezos,\ny es un lugar popular para ver flores de cerezo generalmente a principios de abril.\nSe puede encontrar una taquilla en el extremo más alejado del patio\nmarcando la entrada al área de pago.",pX,width/2);
    if(width/2>height/2){
      pY--;
    }
    strokeWeight(2);
    fill(15);
    rect(posX,posY,ancho,alto);
  } else if(pantalla.equals("fin")) {
    image(HimejiCastle3,0,0);
    textAlign(CENTER);
    text("fin", width/2, 300);
   
  }
    cuenta++;
    if (cuenta <600) {
    pantalla = "comienza";
  } else if (cuenta >=600 && cuenta < 1200) {
    pantalla = "primera";
  } else if (cuenta >= 1200 && cuenta < 1800) {
    pantalla = "segunda";
  } else if(cuenta >= 1800 && cuenta < 2400 ){
    pantalla = "fin";
    cuenta = 0;
  }
}    
 void mousePressed() {
  if (mouseX>pX && mouseX<ancho && mouseY>pY && mouseY<alto)
segundos = 0;
pantalla = "comienza";
cuenta = 0;
posX=240;
posY=410;
ancho=150;
alto=50;
pX= width/2;
pY= height/2;
}  

 
