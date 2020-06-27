//ラケット//////////////////////////////////////////////////////////////////////
void Racket_Control() {
  if (flag) {
    fill(0);
    rect(Rx, Rh, 400, 40);
    if (y+bh>Rh&&y+bh<Rh+5&&dy>0&&Rx<x+bw&&x<Rx+400) {
      count++;
      dy=-3;
    }
  } else rect(width/2-65, Rh, 130, 5);
  if (DeathCount>=3) {
    GameStatus=2;
    flag=false;
  }
  OmouseX=mouseX;
}

//ボール操作系////////////////////////////////////////////////////////////////////////////
void Ball_Control() {
  //普段////////////////////////////////////
  if (x>width) {
    dx=-3;
  } else if (x<0) {
    dx=3;
  }
  if (y>height) {
    dy=-3;
    DeathCount++;
    count=0;
    x=0;
    y=0;
  } else if (y<0) {
    dy=2;
  }
  x=x+dx;
  y=y+dy;
}

//プレイヤー操作系///////////////////////////////////////////////////////////////////////////
void Player() {
  fill(255, 0, 0);
  rect(Px, Py, Pw, Ph);
  fill(0);
  if (((Py+Ph>=Rh&&Py+Ph<=Rh+40)||(Py==486))&&Rx<Px+Pw&&Px<Rx+400) {
    Py=486;
    JZ=25;
    Float_Flag=false;
    Jump_Flag=false;
  } else {
    Float_Flag=true;
  }
  if ((Px<Rx+200&&Px+Pw>Rx)&&((Py<Rh&&Py+Ph>Rh+40)||(Py+Ph>Rh&&Py+Ph<Rh+40)||(Py>Rh&&Py<Rh+40))) {
    Px=Rx-Pw;
  }
  if ((Px>Rx+200&&Px<Rx+400)&&((Py<Rh&&Py+Ph>Rh+40)||(Py+Ph>Rh&&Py+Ph<Rh+40)||(Py>Rh&&Py<Rh+40))) {
    Px=Rx+400;
  }
  if (Py>=Rh+40&&Rx<=Px+Pw&&Px<=Rx+400) {
    Under_Flag=true;
  } else Under_Flag=false;
  if (Under_Flag==true) {
    if (Py>=Rh+40) {
      Py+=40;
    }
  }
  if (Left==true) Px-=5;
  if (Right==true)Px+=5;
  if (Jump==true) {
    Py-=JZ;
    Jump_Flag=true;
    if (Py<=OldPy-215) {
      JZ=0;
    }
  }
  if (Jump_Flag==false) {
    OldPy=Py;
  }
}
