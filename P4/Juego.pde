class Juego
{
   
  void display()
  {
    int titiempo;
      int tit;
      int ti;
      titiempo=millis();
      tit=titiempo;
   // cuanto tiempo ha pasado desde el ultimo disparo
     switch(Turno)
     {
     case 0:  
     ti=tit%tt1;
      box2d.step();
     
      fj1.display();
      walldios.display();
      walldios.movimiento();
      walldios.rebote();
      imageMode(CENTER);
      image(Titan1,width-100,random((height/2)-20,(height/2)+20)); 
      if (ti==0) {
      float sz = 15;
      particles.add(new Particle(1000,random(10,690),sz,color(#FF007C)));
      }
      for (int i = particles.size()-1; i >= 0; i--) {
      Particle p = particles.get(i);
      p.display();
      if (p.done()) {
      particles.remove(i);
      }
    }
    if (mousePressed==true)
    {
      Particle p = new Particle(mouseX,mouseY,15,color(255));
      particles.add(p);
    mousePressed=false;
    }
  
     for (Particle p: particles) {
      p.display();
    }
  
    puntuacion.display();
    puntuacion1.display();
    
    if (puntos<=0)
    {
      for (int i = particles.size()-1; i >= 0; i--) {
      Particle p = particles.get(i);
      //p.display();
      
      particles.remove(i);
      
    }
      
      Pantalla+=2;
      t1.pause();
      t2.pause();
      t3.pause();
      per.loop();
      
    }
    
    if(VTitan<=0)
    {
      for (int i = particles.size()-1; i >= 0; i--) {
      Particle p = particles.get(i);
      //p.display();
      
      particles.remove(i);
      
    }
      Turno+=1;
      VTitan+=30;
      t1.pause();
      t2.pause();
      t3.pause();
      
      if (Nivel==0)
      {
        q1.loop();
       
      }
      if (Nivel==1)
      {
        q2.loop();
        
        
      }
      if (Nivel==2)
      {
        q3.loop();
      }
    }
    //tiempo.display();
     break;

   case 1:
      ti=tit%tt2;
      box2d.step();
      fj2.display();
      walldios.display();
      walldios.movimiento();
      walldios.rebote();
      imageMode(CENTER);
      image(Titan2,width-100,random((height/2)-20,(height/2)+20)); 
      if (ti==0) {
      float sz = 15;
      particles.add(new Particle(1000,random(10,690),sz,color(#FF007C)));
      }
      for (int i = particles.size()-1; i >= 0; i--) {
      Particle p = particles.get(i);
      p.display();
      if (p.done()) {
      particles.remove(i);
      }
    }
    if (mousePressed==true)
    {
      Particle p = new Particle(mouseX,mouseY,15,color(255));
      particles.add(p);
    mousePressed=false;
    }
  
     for (Particle p: particles) {
      p.display();
    }
  
    puntuacion.display();
    puntuacion1.display();
    
    if (puntos<=0)
    {
      for (int i = particles.size()-1; i >= 0; i--) {
      Particle p = particles.get(i);
      //p.display();
      
      particles.remove(i);
      
    }
      
      Pantalla+=2;
      q1.pause();
      q2.pause();
      q3.pause();
      per.loop();
      
    }
    
    if(VTitan<=0)
    {
      for (int i = particles.size()-1; i >= 0; i--) {
      Particle p = particles.get(i);
      //p.display();
      
      particles.remove(i);
      
    }
      
      Turno+=1;
      VTitan+=45;
      q1.pause();
      q2.pause();
      q3.pause();
      
      if (Nivel==0)
      {
        c1.loop();
       
      }
      if (Nivel==1)
      {
        c2.loop();
        
        
      }
      if (Nivel==2)
      {
        c3.loop();
      }
    }
    break;
   
   case 2:
      ti=tit%tt3;
      box2d.step();
      fj3.display();
      walldios.display();
      walldios.movimiento();
      walldios.rebote();
      imageMode(CENTER);
      image(Titan3,width-100,random((height/2)-20,(height/2)+20)); 
      if (ti==0) {
      float sz = 15;
      particles.add(new Particle(1000,random(10,690),sz,color(#FF007C)));
      }
      for (int i = particles.size()-1; i >= 0; i--) {
      Particle p = particles.get(i);
      p.display();
      if (p.done()) {
      particles.remove(i);
      }
    }
    if (mousePressed==true)
    {
      Particle p = new Particle(mouseX,mouseY,15,color(255));
      particles.add(p);
    mousePressed=false;
    }
  
     for (Particle p: particles) {
      p.display();
    }
  
    puntuacion.display();
    puntuacion1.display();
    
    if (puntos<=0)
    {
      for (int i = particles.size()-1; i >= 0; i--) {
      Particle p = particles.get(i);
      //p.display();
      
      particles.remove(i);
      
    }
      
      Pantalla+=2;
      c1.pause();
      c2.pause();
      c3.pause();
      per.loop();
      
    }
    
    if(VTitan<=0)
    {
      for (int i = particles.size()-1; i >= 0; i--) {
      Particle p = particles.get(i);
      //p.display();
      
      particles.remove(i);
      
    }
      
      Pantalla+=1;
      c1.pause();
      c2.pause();
      c3.pause();
      
      gan.play();
    }
    break;
    
    }
    
    
 
   
    
  }
   
}