PImage img1, img2, img3,img4; 
PShape gossip;
PFont fuente; 
float suma;
float contador;
float temporizadorpantalla;
String estado;
float desaparecer;
float aparecer;
float contador2;
float contador3;
float contador4;
void setup() {
  size(576,1024);
  
  
gossip=loadShape("gossip.svg");
img1=loadImage("fondo.jpeg");

img2=loadImage("dos.jpeg");

img3=loadImage("tres.jpeg");

img4=loadImage("cuatro.jpeg");
contador4=0;
  contador3=0;
  contador2=0;
  desaparecer=255;
  aparecer=0;
suma=20;
contador=1;
temporizadorpantalla=0;
estado="uno";
}

void draw() {
  
  if(estado=="uno"){
    println(aparecer);
  aparecer=aparecer+1;
  
  contador=contador+1;
  
    tint(aparecer);
  image(img1,0,0,576,1024);
  if(contador>250 && contador<400){
  shape(gossip,150,200);
  }
if(contador>500){
estado="dos";
aparecer=255;
}
  }
 
  
     else if(estado=="dos"){
    
    contador2=contador2+1;
    println(contador2);
    
    aparecer=aparecer-5;
  image(img2,-50,0,732,1024);
  textSize(30);
  fill(255);
  text("LEIGHTON \nMEESTER",100,600);
  text("ED\nWESTWICK \n",400,600);
  fill(0,0,0,aparecer);
  rect(0,0,732,1024);  
 
 if(contador2>100){
estado="tres";
aparecer=255;
 }
  }else if(estado=="tres"){
    
    aparecer=aparecer-5;
  image(img3,0,0,576,1024);
  fill(0,0,0,aparecer);
  rect(0,0,732,1024); 
fill(255);
   text("BLAKE \nLIVELY",100,600);
 
 contador3=contador3+1;
 
 if(contador3>100){
 estado="cuatro";
 aparecer=255;
 }
 
  }else if(estado=="cuatro"){
     aparecer=aparecer-5;
  image(img4,0,0,576,1024);
   fill(0,0,0,aparecer);
 rect(0,0,732,1024); 
 fill(255);
   text("CHACE \nCRAWFORD",360,600);
 contador4=contador4+1;
  if(contador4>100){

estado="cinco";    
  aparecer=0;  
  }
 
}else if(estado=="cinco"){
  aparecer=aparecer+5;
    fill(0,0,0,aparecer);
  rect(0,0,732,1024);
    fill(255);
   text("  PRODUCTION \n\n JOSH SCHWARTZ \n STEPHANIE SAVAGE BOB \n LEVY LESLIE MORGENSTEIN \n JOHN STEPHENS",100,100);
   text(" click here ",400,700);
}

}

void mouseClicked() {
if(estado=="cinco"){
  cursor(HAND);
    if (dist(mouseX, mouseY,270 , 500) <2000) {
      contador4=0;
  contador3=0;
  contador2=0;
  desaparecer=255;
  aparecer=0;
suma=20;
contador=1;
temporizadorpantalla=0;
estado="uno";
    }}
 
}