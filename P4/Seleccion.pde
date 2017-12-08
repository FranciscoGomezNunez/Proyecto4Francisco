class Seleccion
{
  String ins,press;
  color col1,col2,col3,coltext;
  float x,y;
  
  Seleccion (float x_,float y_,String ins_, String press_,color col1_,color col2_, color col3_,color coltext_)
  {
    x=x_;
    y=y_;
    ins=ins_;
    press=press_;
    col1=col1_;
    col2=col2_;
    col3=col3_;
    coltext=coltext_;
  }
  
   void display ()
   {
     imageMode(CENTER);
     switch (Dios)
     {
       case 0:
       fd1.display();
       pushMatrix();
       translate(x/2,y/2);
       scale(2);
       image(Dios1,0,0);
       fill(col1,200);
       popMatrix();
       break;
       case 1:
       fd2.display();
       pushMatrix();
       translate(x/2,y/2);
       scale(2);
       image(Dios2,0,0);
       fill(col2,200);
       popMatrix();
       break;
       case 2:
       fd3.display();
       pushMatrix();
       translate(x/2,y/2);
       scale(2);
       image(Dios3,0,0);
       fill(col3,200);
       popMatrix();
       break;
     }
     
     rectMode(CENTER);
     noStroke();
     
     rect(x/2,(y/4)-100,1000,100);
     rect(x/2,600,300,60);
     
     rect(x/4,y/2,100,100);
     rect((x/4)*3,y/2,100,100);
     triangle((x/4)-40,y/2,(x/4)+40,(y/2)+40,(x/4)+40,(y/2)-40);
     triangle(((x/4)*3)+40,y/2,((x/4)*3)-40,(y/2)+40,((x/4)*3)-40,(y/2)-40);
     
     fill(255);
     textAlign(CENTER);
     text(ins,x/2,(y/4)-100,1000,50);
     text(press,width/2,605);
     
     
   }
}