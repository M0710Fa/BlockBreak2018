import ddf.minim.*;
void setup() {
  size(880, 660);
  Load();
  Rx=width/2-200;
}
Minim minim;
AudioPlayer BGM;
int counter=0;

int count=0;
int DeathCount=3;
float Rx;
int Rh=550;//racket height
int PLw;//pilot line x
int GameStatus=0;//0=start menu,1=game,2=death menu
int PlayerM=3;//プレイヤー質量
int JumpCounter=2;
int JumpFreezeTime=30;
float Jumpy;

int hit1[] = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1};
int hit2[] = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1};
int hit3[] = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1};
int hit4[] = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1};


int m=1;

int Keysave=0;
int jumpsave=0;

float OmouseX;

float Gravity=0.98;//重力

float x=300;//ball x
float y=300;//ball y
float dx=2;//ball x speed
float dy=3;//ball y speed
float bw=10;//ball width
float bh=10;//ball height
float Bw=40;//balllock width
float Bh=30;//block height
float Oldx;
float Oldy;
boolean flag=true;//death flag
float IZ=4;//idou zoukaryou
float JZ=25;//jump zoukaryou

float AR=10.0;//手の長さ

float Px=250, Py=350;//player x,y
float OldPx=Px, OldPy=Py;
float Pw=30;
float Ph=60;

float PF=0;
float PFl=11;//プレイヤーがどれか
int PH=25;//フレーム
PImage Player[]=new PImage [PH];//画像のヤツ

float Ay=Py+(Py/4);
float Ah=10;

boolean Float_Flag=true;
boolean Jump_Flag=false;
boolean Pressed_Flag=false;
boolean Right=false, Left=false, Jump=false;
boolean Under_Flag=false;
boolean Attack_Flag;
int Vec=2;//左が1右が2

int Life=1;

int Time=3600;


///////////////////////////////////////////////////////////////////////

void keyPressed() {
  if (key=='a') {
    Left=true;
    Vec=1;
  }
  if (key=='d') {
    Right=true;
    Vec=2;
  }
  if (key=='w'&&Jump_Flag==false)Jump=true;
  if (key==' ') {
    Attack_Flag=true;
    if (Vec==1) {
      PF=14;
    }
    if (Vec==2) {
      PF=3;
    }
  }
}

void keyReleased() {
  if (key=='a') {
    Left=false;
    if (Float_Flag==false&&Jump_Flag==false&&Vec==1) {
      PFl=11;
    } else PFl=14;
  }
  if (key=='d') {
    Right=false;
    if (Float_Flag==false&&Jump_Flag==false&&Vec==2) {
      PF=0;
    } else PF=3;
  }
  if (key=='w')Jump=false;
  if (key==' ') {
    Attack_Flag=false;
    if (Float_Flag==false&&Jump_Flag==false&&Vec==1) {
      PFl=11;
    } else PFl=14;
    if (Float_Flag==false&&Jump_Flag==false&&Vec==2) {
      PF=0;
    } else PFl=3;
  }
}

void draw() {
  println(GameStatus);
  Menu();
}

void stop()
{
  BGM.close();
  minim.stop();
  super.stop();
}
