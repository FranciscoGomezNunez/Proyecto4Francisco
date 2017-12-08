class Inicio
{
  String press;
  color col; 
  Inicio(String press_, color col_)
  {
    press=press_;
    col=col_;
  }
  
  void display()
  {
    int titiempo;
    int tit;
    int ti;
    titiempo=millis();
    tit=floor(titiempo/1000);
    ti=tit%3;
    finicio.display();
    imageMode(CENTER);
    rectMode(CENTER);
    noStroke();
    if(ti==0)
    {
      image(Tit1,width/2,height/2);
      fill(#15E880,100);
    }
    if(ti==1)
    {
      image(Tit2,width/2,height/2);
      fill(#157CE8,100);
    }
    if(ti==2)
    {
      image(Tit3,width/2,height/2);
      fill(#8115E8,100);
    }
    
    textFont(Rale20);
    textAlign(CENTER);
    rect(width/2,600,300,60);
    fill(col);
    text(press,width/2,605);
    
  }
}