void GameLoop() {
  Time=Time-1;
  BGM.play();
  if (Float_Flag==true) {
    Py=Py+Gravity*PlayerM;
  }
  if (Life<=0) {
    GameStatus=2;
  }
  if (Time<=0) {
    GameStatus=2;
  }
  background(192, 192, 255);
  Player();
  noStroke();
  HIT1();
  HIT2();
  HIT3();
  HIT4();
  Racket_Control();
  Ball_Control();
  stroke(0);
  fill(0, 0, 200);
  ellipse(x, y, bw, bh);
  fill(255);
  noStroke();
  pilot();
  fill(0);
}

void GameInit() {
  BGM.rewind();
  Px=300; 
  Py=300;
  count=0;
  Time=3600;
  Life=1;
  DeathCount=3;
  for(int l=0;l<=hit1.length-1;l++){
    hit1[l]=1;
    hit2[l]=1;
    hit3[l]=1;
    hit4[l]=1;
  }
}

//ロード/////////////////////////////
void Load() {
  //右//////////////////////////////////
  Player[0]=loadImage("data/Player1.png");
  Player[1]=loadImage("data/Player2.png");
  Player[2]=loadImage("data/Player3.png");
  Player[3]=loadImage("data/Player4.png");
  Player[4]=loadImage("data/Player5.png");
  Player[5]=loadImage("data/Player6.png");
  Player[6]=loadImage("data/Player7.png");
  Player[7]=loadImage("data/Player8.png");
  Player[8]=loadImage("data/Player17.png");
  Player[9]=loadImage("data/Player19.png");
  //左/////////////////////////////////
  Player[11]=loadImage("data/Player9.png");
  Player[12]=loadImage("data/Player10.png");
  Player[13]=loadImage("data/Player11.png");
  Player[14]=loadImage("data/Player12.png");
  Player[15]=loadImage("data/Player13.png");
  Player[16]=loadImage("data/Player14.png");
  Player[17]=loadImage("data/Player15.png");
  Player[18]=loadImage("data/Player16.png");
  Player[19]=loadImage("data/Player20.png");
  //音楽///////////////////////////////////
  minim=new Minim(this);
  BGM=minim.loadFile("data/BGM.mp3");
}
