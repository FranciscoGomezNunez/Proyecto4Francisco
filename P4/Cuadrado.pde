class Cuadrado implements Figura
  {
    float x,y,l;
    float a;
    
    Cuadrado(float x_, float y_,float l_)
    {
      x=x_;
      y=y_;
      l=l_;
      a= 0.125*TWO_PI;
    }
    float perimetro()
    {
     return l*4; 
    }
    
    float area()
    {
      return l*l;
    }
    
    void display()
    {
      rect(x-(l/2),y-(l/2),l,l);
    }
    
    void girar()
    {
    a+=0.05;
    x=x+cos(a);
    y=y+sin(a);
    }
  }