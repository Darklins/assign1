/* please implement your assign1 code in this file. */
PImage img1, img2, img3, img4, img5, img6;
int x, y, speed; 
float a1, a2 , hp ;
void setup () {
  size(640,480) ;
  x = 0;
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
  hp  = random(5,201);
}
 
void draw() {
  
  println(x);
  println(y);
  image(img2,x,0);
  image(img1,y,0);
  
  fill(256,0,0);
  rect(11,6,hp,29);
  image(img5,5,5);
  
  image(img6,a1,a2);
  image(img3,speed % 640,100);
  image(img4,580,240);
  
  speed +=3;
  x++;
  y++;
  x= x-(x/640*1280);
  y= y-(y/640*1280);
 
}
