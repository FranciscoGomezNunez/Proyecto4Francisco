class Triangulo implements Figura
{
  float x,y,b,h,l1,a,o,n;
  
  
  Triangulo(float x_, float y_, float l1_)
  {
    x=x_;
    y=y_;
    b=l1;
    h=0.8660254037844386*l1;
    l1=l1_;
    a=0.16666666666667*TWO_PI;
    n=sin(a)*l1;
    o=cos(a)*l1;
  }
  
  float perimetro()
  {
   return l1*3; 
  }
  
  float area ()
  {
    return (0.8660254037844386*l1*l1)/2;
  }
  
  void display()
  {
    triangle(x,y,x+l1,y,x+o,y-n);
  }
  
  void girar()
  {
    a+=0.05;
    x=x+cos(a);
    y=y+sin(a);
  }
  
  
}