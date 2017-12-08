class FCuadrado
{
  color col;
   
  FCuadrado(color col_)
  {
    col=col_;
  }
  
  void display()
  {
    for (Figura C: Figuras3)
    {
      fill(col,random(100));
      noStroke();
      C.display();
    
    }
  }
}