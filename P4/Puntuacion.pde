class Puntuacion
{
  int posx, posy;
  
  Puntuacion(int posx_,int posy_)
  {
    posx=posx_;
    posy=posy_;
    
  }
  
  void Puntos()
  {
    puntos-=1;
  }
  
  void display()
  {
    fill (255,100);
    rect (125,675,140,30);
    fill(0);
    textAlign(LEFT);
    textFont(Rale,16);
    text("Vidas:",posx,posy);
    textAlign(RIGHT);
    text(puntos,posx+130,posy);
  }
  
  
}

class Puntuacion1
{
  int posx, posy;
  
  Puntuacion1(int posx_,int posy_)
  {
    posx=posx_;
    posy=posy_;
    
  }
  
  void Puntos()
  {
    VTitan-=1;
  }
  
  void display()
  {
    fill (255,100);
    rect (width-125,height-675,140,30);
    fill(0);
    textAlign(LEFT);
    textFont(Rale,16);
    text("Vidas:",posx,posy);
    textAlign(RIGHT);
    text(VTitan,posx+130,posy);
  }
  
  
}