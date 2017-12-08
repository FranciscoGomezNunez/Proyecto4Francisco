class Circulo implements Figura
  {
    float x,y,r,a;
    Circulo(float x_, float y_,float r_)
    {
      x=x_;
      y=y_;
      r=r_;
      a=0.125*TWO_PI;
    }
    float perimetro()
    {
     return PI*r*2; 
    }
    
    float area()
    {
      return PI*r*r;
    }
    
    void display()
    {
      ellipse(x,y,r*2,r*2);
     
    }
    
    void girar()
    {
      a+=0.05;
    x=x+cos(a);
    y=y+sin(a);
    }
  }