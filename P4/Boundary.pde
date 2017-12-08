class Boundary {

  float x;
  float y;
  float w;
  float h;
  int vel;
  
  Body b;
  
  

  Boundary(float x_,float y_, float w_, float h_, int vel_) {
    x = x_;
    //y = y_;
    y=y_;;
    w = w_;
    h = h_;
    vel = vel_;
    

    PolygonShape sd = new PolygonShape(); 
    

    float box2dW = box2d.scalarPixelsToWorld(w/2);
    float box2dH = box2d.scalarPixelsToWorld(h/2);

    sd.setAsBox(box2dW, box2dH);



    BodyDef bd = new BodyDef();
    bd.type = BodyType.STATIC;
    bd.position.set(box2d.coordPixelsToWorld(x,y));
    b = box2d.createBody(bd);
    

    b.createFixture(sd,1);
    
    b.setUserData(this);
  }


  void display() {
    imageMode(CENTER);
    Vec2 pos = box2d.getBodyPixelCoord(b);
    switch(DiosJ)
    {
      case 0:
      image(Dios1a,pos.x,pos.y);
      break;
      case 1:
      image(Dios2a,pos.x,pos.y);
      break;
      case 2:
      image(Dios3a,pos.x,pos.y);
      break;
      
    }
    
    
  }
  
 
   void rebote()
  {
    if ((y+100)>=700)
    {
      vel*=(-1);
    }
    if ((y-100)<=0)
    {
      vel*=(-1);
    }
  }
  
  void movimiento()
  {
    y+=vel;
    Vec2 prueba = box2d.coordPixelsToWorld(x,y);
    b.setTransform(prueba,0);
  }

  
  
  

}