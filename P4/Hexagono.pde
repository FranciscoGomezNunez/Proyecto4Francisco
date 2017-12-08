class Hexagono implements Figura
{
  float x,y,l,rc,ri,a,a1,deltax,deltay;
  Hexagono (float x_,float y_,float l_)
  {
    x=x_;
    y=y_;
    l=l_;
    rc=l/(2*(sin(PI/6)));
    ri=l/(2*(tan(PI/6)));
    a1=TWO_PI/6;
  }
  
  float perimetro ()
  {
    
   return l*6;
  }
  
  float area ()
  {
    return (l*6*ri)/2;
  }
  float apotema()
  {
    return ri;
  }
  float rcircun()
  {
    return rc;
  }
  
  void display()
  {
      beginShape();
      for(float a = 0;a<TWO_PI;a+=a1)
      {
    
        deltax=x + cos(a)*rc;
        deltay=y + sin(a)*rc;
        vertex(deltax,deltay);
        
      }
      endShape(CLOSE);

  }

}