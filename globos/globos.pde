class Globo
{
  //Atributos de la clase globo
  //Posicion, velocidad, aceleracion
  float x, y,vx,vy,ax,ay;
  color c;
  
  //Constructor de clase
  Globo (float _x, float _y)
  {
   x=_x;
   y=_y; 
   vx=random(-0.5,0.5);
   vy=random(-5,-0.5);
   c=color(random(0,255),random(0,255),random(0,255));
  }

  void update()
  {
    y+=vy;
    x+=vx;
  }

  void dibujate()
  {
      fill(c);
      rect(x,y,10,10);
  }
  
}

ArrayList<Globo> globos;

void setup()
{
  size(600,600);
  globos = new ArrayList<Globo>();  
}

void draw()
{
 
  background(20,100,250);
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
