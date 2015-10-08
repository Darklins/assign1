float a1, a2 , b ;
void setup () {
  size(640,480) ;
  x = -0;
  y = -640;
  speed = 0;
  img1 = loadImage("img/bg1.png");
  img2 = loadImage("img/bg2.png");
  img3 = loadImage("img/enemy.png");
  img4 = loadImage("img/fighter.png");
  img5 = loadImage("img/hp.png");
  img6 = loadImage("img/treasure.png");
  a1 = random(0,599);
  a2 = random(10,431);
  b  = random(5,201);
}
 
void draw() {
  
  image(img2,x,0);
  image(img1,y,0);
  
  fill(256,0,0);
  rect(10,5,b,31);
  image(img5,5,5);
  
  image(img6,a1,a2);
  image(img3,speed % 640,100);
  image(img4,580,240);
  
  speed +=10;
  x+=5;
  y+=5;
  x= x-(x/640*1280);
  y= y-(y/640*1280);
 
}
