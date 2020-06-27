void setup() {
  size(860, 640);
  Rx=width/2-200;
}

int counter=0;

int count=0;
int DeathCount=0;
float Rx;
int Rh=550;//racket height
int PLw;//pilot line x
int GameStatus=0;//0=start menu,1=game,2=death menu
int PlayerM=3;//プレイヤー質量
int JumpCounter=2;
int JumpFreezeTime=30;
float Jumpy;


int Keysave=0;
int jumpsave=0;

float OmouseX;

float Gravity=0.98;//重力

float x=10;//ball x
float y=10;//ball y
float dx=0;//ball x speed
float dy=0;//ball y speed
float bw=8;//ball width
float bh=8;//ball height
float Bw=20.0;//ball width
float Bh=7.0;//block height
boolean flag=true;//death flag
float IZ=4;//idou zoukaryou
float JZ=25;//jump zoukaryou

float Px=250, Py=350;//player x,y
float OldPx=Px, OldPy=Py;
float Pw=32;
float Ph=64;
boolean Float_Flag=true;
boolean Jump_Flag=false;
boolean Pressed_Flag=false;
boolean Right=false, Left=false, Jump=false;
boolean Under_Flag=false;
///////////////////////////////////////////////////////////////////////

void keyPressed() {
  if (key=='a')Left=true;
  if (key=='d')Right=true;
  if (key=='w'&&Jump_Flag==false)Jump=true;
}

void keyReleased() {
  if (key=='a')Left=false;
  if (key=='d')Right=false;
  if (key=='w')Jump=false;
}

void draw() {
  println(GameStatus);
  Menu();
}
