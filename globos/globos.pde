class Globo
{
  //Atributos de la clase globo
  //Posicion, velocidad, aceleracion
  float x, y,vx,vy,ax,ay;
  Globo (float _x, float _y)
  {
   x=_x;
   y=_y; 
   vx=random(-0.25,0.25);
   vy=random(-2,-0.5);
  }

  void update()
  {
    y+=vy;
    x+=vx;
  }

  void dibujate()
  {
      ellipse(x,y,100,100);
      imageMode(CENTER);
      image(cara,x,y,100,100);
  }
  
}

ArrayList<Globo> globos;

PImage cara;


void setup()
{
  size(600,600);
  globos = new ArrayList<Globo>();  
}

void draw()
{
 
  background(20,100,250);
    cara=loadImage("Official_portrait_of_Barack_Obama-2.jpg");
  for(int i=0;i<globos.size();i++)
  {
    globos.get(i).update();
    globos.get(i).dibujate();
  }
}

void mousePressed()
{
  globos.add(new Globo(mouseX,mouseY));
}
