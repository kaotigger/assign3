PImage bg1;
PImage bg2;
PImage enemy;
PImage fighter;
PImage hp;
PImage treasure;
int x =-305;
int z;
int y;
int L;
int k;
int h;
int v;
int t;
int flee = 1;


void setup(){
  size(640,480);
  bg1 = loadImage("img/bg1.png");
  bg2 = loadImage("img/bg2.png");
  enemy = loadImage("img/enemy.png");
  fighter = loadImage("img/fighter.png");
  hp = loadImage("img/hp.png");
  treasure = loadImage("img/treasure.png");
  z=floor(random(195));
 
  L=640;
  h=floor(random(415));
  t=floor(random(415));
  v=floor(random(590));
  y=floor(random(415));
  
}
void draw(){
  image(bg2,-640+k,0);
  image(bg1,-640+L,0);
  fill(255,0,0);
  rect(20,10,z,20);
  image(hp,10,10);
  image(fighter,580,h);
  image(treasure,v,t);
  k=k+1 ;
  k%=1280;
  L=L+1 ;
  L%=1280 ;
  x%=640 ;
  if(x==635 && flee!=2){
    x=-305;
    flee=flee+1;
    y=floor(random(330));
  }
  if(x==635 && flee==2){
    x=-305;
    flee=flee+1;
    y=floor(random(120,330));
  }
  flee%=3;
  x=x+305;
  switch(flee){
  case 1:
  for(int i=5;i>0;i--){
  image(enemy,x,y);
  x=x-60;
  }
  break;
  
  case 2:
  for(int i=5;i>0;i--){
  image(enemy,x,y);
  x=x-60;
  y=y+30;
  }
 y=y-150;
  break;
  
  case 0:
  for(int i=3;i>0;i--){
  image(enemy,x,y);
  x=x-60;
  y=y+40;
  }
  x=x+120;
  y=y-160;
  for(int i=2;i>0;i--){
  image(enemy,x,y);
  x=x-120;
  y=y+80;
  }
  x=x+180;
  y=y-200;
  for(int i=3;i>0;i--){
  image(enemy,x,y);
  x=x-60;
  y=y+40;
  }
  y=y-40;
  break;
  }
  
 
}
