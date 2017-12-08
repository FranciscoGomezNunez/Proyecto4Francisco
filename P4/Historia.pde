class Historia
{
  String press;
  color col,col1,col2,col3;
  
  Historia(String press_, color col_, color col1_,color col2_,color col3_)
  {
    press=press_;
    col=col_;
    col1=col1_;
    col2=col2_;
    col3=col3_;
  }
  
  void display()
  {
    int titiempo;
    int tit;
    int ti;
    titiempo=millis();
    tit=floor(titiempo/1000);
    ti=tit%3;
    fhistoria.display();
    rectMode(CENTER);
    imageMode(CENTER);
    noStroke();
    switch (ti)
    {
      case 0:
      fill(col1,100);
      image(Geo1,width/2,height/2);
      break;
      case 1:
      fill(col2,100);
      image(Geo2,width/2,height/2);
      break;
      case 2:
      fill(col3,100);
      image(Geo3,width/2,height/2);
      break;
    }
    
    rect(width/2,(height/2)-90,1000,400);
    
    image(Hist,width/2,height/2);
    
    rect(width/2,600,300,60);
    fill(col);
    textAlign(CENTER);
    text(press,width/2,605);
  }
}