class FTriangulo
{
  color col;
  
  FTriangulo(color col_)
  {
    col=col_;
  }
  
  void display()
  {
   
    /*for (Figura T: Figuras2)
  {
    fill(col,random(100));
    T.display();
    
    
  }*/
  
  for (Figura T: Figuras2)
  {
    fill(col,random(100));
    noStroke();
    T.display();
    //pushMatrix();
    //rotate(PI);
    //T.display();
    //T.girar();
    //popMatrix();
  }
  }
}