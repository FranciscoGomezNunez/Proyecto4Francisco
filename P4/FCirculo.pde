class FCirculo
{
  color col;
   
  FCirculo(color col_)
  {
    col=col_;
  }
  
  void display()
  {
    for (Figura C1: Figuras4)
    {
      noStroke();
      fill(col,random(100));
      C1.display();
    
    }
  }
}