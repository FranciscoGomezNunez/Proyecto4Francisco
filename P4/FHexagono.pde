class FHexagono
{
  color col;
   
  FHexagono(color col_)
  {
    col=col_;
  }
  
  void display()
  {
    for (Figura H: Figuras)
    {
      fill(col,random(100));
      noStroke();
      H.display();
    
    }
  }
}