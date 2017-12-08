import ddf.minim.*;
import ddf.minim.effects.*;

import shiffman.box2d.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.joints.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.collision.shapes.Shape;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;
import org.jbox2d.dynamics.contacts.*;


Box2DProcessing box2d;
Boundary walldios;
ArrayList<Particle> particles;





Minim minim;
AudioPlayer inic;
AudioPlayer festival;
AudioPlayer roboskater;
AudioPlayer nivel;
AudioPlayer t1;
AudioPlayer t2;
AudioPlayer t3;
AudioPlayer q1;
AudioPlayer q2;
AudioPlayer q3;
AudioPlayer c1;
AudioPlayer c2;
AudioPlayer c3;
AudioPlayer gan;
AudioPlayer per;


ArrayList <Figura> Figuras;
ArrayList <Figura> Figuras2;
ArrayList <Figura> Figuras3;
ArrayList <Figura> Figuras4;
int Pantalla;
FHexagono finicio;
Inicio inicio;
FHexagono fhistoria;
Historia historia;
Instrucciones instrucciones;
Ganar ganar;
Perder perder;
FHexagono fd1;
FHexagono fd2;
FHexagono fd3;
Seleccion seleccion;
FHexagono fn1;
FHexagono fn2;
FHexagono fn3;
SeleccionN seleccionN;
FTriangulo fj1;
FCuadrado fj2;
FCirculo fj3;
Juego juego;
Puntuacion puntuacion;
Puntuacion1 puntuacion1;
Tiempo tiempo;
PImage Tit1,Tit2,Tit3;
PFont Rale,Rale20;
PImage Hist,Instr, Gan, Per;
PImage Geo1,Geo2,Geo3;
PImage Dios1,Dios2,Dios3;
PImage Nivel1,Nivel2,Nivel3;
PImage Dios1a,Dios2a,Dios3a;
PImage Titan1,Titan2,Titan3;
int Dios,DiosJ,Nivel,puntos,Turno,VTitan;
int tt1,tt2,tt3;

boolean start;
int tiempoTranscurridoPant;
int tiempoTranscurrido;
int tiempoInicio;
int limiteTiempo=60000;
int tiempoPantalla;
int tiempocc;
int tiempoCrear;




void setup()
{
 size (1200,700);
 
 ////////////////////// Para audio
 minim = new Minim(this);
 inic = minim.loadFile("Ecstasy_X.mp3");
 festival = minim.loadFile("Festival.mp3");
 roboskater = minim.loadFile("Roboskater.mp3");
 nivel = minim.loadFile("Cologne_1983.mp3");
 t1=minim.loadFile("Firebrand.mp3");
 t2=minim.loadFile("A_Flash_in_the_Pan.mp3");
 t3=minim.loadFile("Big_Bird_s_Date_Night_Full.mp3");
 q1=minim.loadFile("8_Bit_March.mp3");
 q2=minim.loadFile("Boots_Boots_Boots.mp3");
 q3=minim.loadFile("The_Dope_Steppa.mp3");
 c1=minim.loadFile("Boom.mp3");
 c2=minim.loadFile("Circular.mp3");
 c3=minim.loadFile("Level_Up.mp3");
 gan=minim.loadFile("Detour_Sting.mp3");
 per=minim.loadFile("Ditch_Diggin_Sting.mp3");
 
 
 ///////////////////// De Box2d
 box2d = new Box2DProcessing(this);
 box2d.createWorld();
 box2d.listenForCollisions();
 box2d.setGravity(-20,0);
 walldios = new Boundary(50, height/2, 100, 200,2);
 particles = new ArrayList<Particle>();
 
 //////////////////////Teselación Hexágono para fondos
 Figuras = new ArrayList<Figura>();
  for (float i=10; i<width; i+=(7.7*8))
  {
    for(float j=10; j<(height*1.1); j+=(8.6602545*4))
    {  
    Figuras.add(new Hexagono(i,j,20));
    Figuras.add(new Hexagono(i+(7.7*4),j-(8.6602545*2),20));
    }
    
  }
  
  ///////////////////// Teselación Cuadrados
  
  Figuras3 = new ArrayList<Figura>();
  for (float i=10; i<width+20; i+=25)
  {
    for(float j=10; j<height+20; j+=25)
    {  
    Figuras3.add(new Cuadrado(i,j,25));
    
    }
    
  }
  
  /////////////////// Teselacion Triangulos
  
  Figuras2 = new ArrayList<Figura>();
  for (int i=0; i<width+30; i+=30)
  {
    for (int j = 0; j<height+30; j+=2*(0.8660254037844386*30))
    {
    Figuras2.add(new Triangulo(i,j,30));
    Figuras2.add(new Triangulo(i-15,j+0.8660254037844386*30,30));
    Figuras2.add(new Triangulo(-i,-j,30));
    Figuras2.add(new Triangulo((-i-15),-j-0.8660254037844386*30,30));
    
    }
    
  }
  
  ///////////////// Teselacion Circulos
  
  Figuras4 = new ArrayList<Figura>();
  for (float i=10; i<width; i+=50)
  {
    for(float j=10; j<height; j+=50)
    {  
    Figuras4.add(new Circulo(i,j,25));
    
    }
    
  }
  
  //////////////////// Para pantalla de inicio
  finicio = new FHexagono(color(20));
  inicio = new Inicio("Presione aquí para continuar",255);
  Tit1=loadImage("Titulo1.png");
  Tit2=loadImage("Titulo2.png");
  Tit3=loadImage("Titulo3.png");
  Rale=loadFont("Raleway-48.vlw");
  Rale20=loadFont("Raleway-20.vlw");
  
  //////////////////Para Historia
  historia = new Historia("Presiona aquí para continuar",color(255),color(#15E880),color(#157CE8),color(#8115E8));
  instrucciones = new Instrucciones("Presiona aquí para continuar",color(255),color(#15E880),color(#157CE8),color(#8115E8));
  ganar = new Ganar("Presiona aquí para continuar",color(255),color(#15E880),color(#157CE8),color(#8115E8));
  perder = new Perder("Presiona aquí para continuar",color(255),color(#15E880),color(#157CE8),color(#8115E8));
  Hist=loadImage("Texto.png");
  Instr=loadImage("Texto1.png");
  Per=loadImage("TextoPer.png");
  Gan=loadImage("TextoGan.png");
  fhistoria = new FHexagono(color(#433720));
  Geo1=loadImage("Geo1.png");
  Geo2=loadImage("Geo2.png");
  Geo3=loadImage("Geo3.png");
  
  ///////////////Para Seleccion
  seleccion = new Seleccion(width,height,"Elige el dios que se enfrentará a los titanes presionando el botón de ¡ELEGIR!, presiona las flechas que se encuentran a los laterales para cambiar de dios.","¡ELEGIR!",color(#E7E815),color(#E87F15),color(#E81515),color(255));
  fd1 = new FHexagono(color(#676709));
  fd2 = new FHexagono(color(#673809));
  fd3 = new FHexagono(color(#670909));
  Dios1=loadImage("Dios1.png");
  Dios2=loadImage("Dios2.png");
  Dios3=loadImage("Dios3.png");
  
  ///////////////Para seleccion nivel
  seleccionN = new SeleccionN(width,height,"Elige un nivel de juego presionando el botón de ¡JUGAR!","¡JUGAR!",color(70),color(50),color(20),color(255));
  fn1 = new FHexagono(color(70));
  fn2 = new FHexagono(color(50));
  fn3 = new FHexagono(color(70));
  Nivel1=loadImage("Nivel1.jpg");
  Nivel2=loadImage("Nivel2.jpg");
  Nivel3=loadImage("Nivel3.jpg");
  
  ////////////// Para el Juego
  juego = new Juego();
  fj1 = new FTriangulo(color(#096739));
  fj2 = new FCuadrado(color(#093767));
  fj3 = new FCirculo(color(#390967));
  Dios1a=loadImage("Dios1a.png");
  Dios2a=loadImage("Dios2a.png");
  Dios3a=loadImage("Dios3a.png");
  Titan1=loadImage("Titan1.png");
  Titan2=loadImage("Titan2.png");
  Titan3=loadImage("Titan3.png");
  
  /////////Puntuacion
  puntuacion = new Puntuacion(60,680);
  puntuacion1 = new Puntuacion1(1010,30);
  
  ////////////Tiempo
  tiempo = new Tiempo(1010,680);
  
  
  
  
 
}


void draw()
{
  background(0);
  
  switch (Pantalla)
  {
    case 0:
    inicio.display();
    inic.play();
     mousePressed();
    if ((mousePressed==true)&(mouseX >= 450 & mouseX <= 750) & (mouseY >= 570 & mouseY <= 630)) {
      Pantalla+=1;
      mousePressed=false;
      inic.pause();
      roboskater.loop();
      
    }
    break;
    case 1:
    historia.display();
    
    mousePressed();
    if ((mousePressed==true)&(mouseX >= 450 & mouseX <= 750) & (mouseY >= 570 & mouseY <= 630)) {
      Pantalla+=1;
      mousePressed=false;
      roboskater.pause();
      festival.loop();
    }
    break;
    case 2:
    seleccion.display();
    mousePressed();
    if ((mousePressed==true)&(mouseX >=250 & mouseX <= 350) & (mouseY >= 250 & mouseY <= 350)){
      Dios-=1;
      DiosJ-=1;
       mousePressed=false;
    }
    if (Dios==(-1))
    {
      Dios=2;
      DiosJ=2;
    }
    
    if ((mousePressed==true)&(mouseX >=850 & mouseX <= 950) & (mouseY >= 250 & mouseY <= 350)){
      Dios+=1;
      DiosJ+=1;
       mousePressed=false;
    }
    if (Dios==3)
    {
      Dios=0;
      DiosJ=0;
    }
    
    if ((mousePressed==true)&(mouseX >= 450 & mouseX <= 750) & (mouseY >= 570 & mouseY <= 630)) {
      Pantalla+=1;
      mousePressed=false;
      festival.pause();
      nivel.loop();
      
    }
    break;
    case 3:
    seleccionN.display();
    mousePressed();
     if ((mousePressed==true)&(mouseX >=250 & mouseX <= 350) & (mouseY >= 250 & mouseY <= 350)){
      Nivel-=1;
       mousePressed=false;
    }
    if (Nivel==(-1))
    {
      Nivel=2;
    }
    
    if ((mousePressed==true)&(mouseX >=850 & mouseX <= 950) & (mouseY >= 250 & mouseY <= 350)){
      Nivel+=1;
       mousePressed=false;
    }
    if (Nivel==3)
    {
      Nivel=0;
    }
    
    if ((mousePressed==true)&(mouseX >= 450 & mouseX <= 750) & (mouseY >= 570 & mouseY <= 630)) {
      Pantalla+=1;
      mousePressed=false;
      nivel.pause();
      roboskater.loop();
      
    }
    break;
    case 4:
    instrucciones.display();
    mousePressed();
    if ((mousePressed==true)&(mouseX >= 450 & mouseX <= 750) & (mouseY >= 570 & mouseY <= 630)) {
      Pantalla+=1;
      start=true;
      puntos+=3;
      VTitan+=15;
      mousePressed=false;
       roboskater.pause();
      
      
      if (Nivel==0)
      {
        t1.loop();
        tt1=90;
        tt2=85;
        tt3=80;
      }
      if (Nivel==1)
      {
        t2.loop();
        tt1=75;
        tt2=70;
        tt3=65;
        
      }
      if (Nivel==2)
      {
        t3.loop();
        tt1=60;
        tt2=55;
        tt3=50;
      }
    }
    
    break;
    case 5:
    juego.display();
    break;
    case 6:
    ganar.display();
    
    mousePressed();
    if ((mousePressed==true)&(mouseX >= 450 & mouseX <= 750) & (mouseY >= 570 & mouseY <= 630)) {
      Pantalla=0;
      mousePressed=false;
      puntos=0;
      VTitan=0;
      Turno=0;
      gan.pause();
    }
    break;
    case 7:
    perder.display();
    mousePressed();
    if ((mousePressed==true)&(mouseX >= 450 & mouseX <= 750) & (mouseY >= 570 & mouseY <= 630)) {
      Pantalla=0;
      mousePressed=false;
      puntos=0;
      VTitan=0;
      Turno=0;
      per.pause();
    }
    break;
  }
}


void beginContact(Contact cp) {
  // Get both fixtures
  Fixture f1 = cp.getFixtureA();
  Fixture f2 = cp.getFixtureB();
  
  
  // Get both bodies
  Body b1 = f1.getBody();
  Body b2 = f2.getBody();
  // Get our objects that reference these bodies
  Object o1 = b1.getUserData();
  Object o2 = b2.getUserData();
  
  if (o1.getClass() == Particle.class && o2.getClass() == Particle.class) {
    Particle p1 = (Particle) o1;
    p1.delete();
    Particle p2 = (Particle) o2;
    p2.delete();
    puntuacion1.Puntos();
  }

  if (o1.getClass() == Boundary.class) {
    Particle p = (Particle) o2;
    p.delete();
    puntuacion.Puntos();
  }
  if (o2.getClass() == Boundary.class) {
    Particle p = (Particle) o2;
    p.delete();
    puntuacion.Puntos();
  }
  
  
  
  
  
  
 
}


// Objects stop touching each other
void endContact(Contact cp) {
}