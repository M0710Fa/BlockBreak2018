//ラケット//////////////////////////////////////////////////////////////////////
void Racket_Control() {
  if (flag) {
    fill(0);
    rect(Rx, Rh, 400, 40);
    if (y+bh>Rh&&y+bh<Rh+5&&dy>0&&Rx<x+bw&&x<Rx+400) {
      dy=-3;
    }
  } else rect(width/2-65, Rh, 130, 5);
  if (DeathCount<=0) {
    GameStatus=2;
  }
}

//ボール操作系////////////////////////////////////////////////////////////////////////////
void Ball_Control() {
  Oldx=x;
  Oldy=y;
  if (x>width) {
    dx=-2;
  } else if (x<0) {
    dx=2;
  }
  if (y>height) {
    DeathCount--;
    x=300;
    y=300;
    dx=2;
    dy=3;
  } else if (y<0) {
    dy=3;
  }
  x=x+dx;
  y=y+dy;
}

//プレイヤー操作系///////////////////////////////////////////////////////////////////////////
void Player() {
  fill(255, 0, 0);
  if (Vec==1) {
    image(Player[int(PFl)], Px, Py);
  }
  if (Vec==2) {
    image(Player[int(PF)], Px, Py);
  }
  fill(0);
  if (Py>=height+100) {
    Life-=1;
  }

  if (((Py+Ph>=Rh&&Py+Ph<=Rh+40)||(Py==490))&&Rx<Px+Pw&&Px<Rx+400) {
    Py=490;
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
  
  //左移動/////////////////////////////////////////////
  if (Left==true) {
    Px-=5;
    if (Jump_Flag==false||Float_Flag==false) {
      PFl+=0.2;
      if (PFl>=19) {
        PFl=12;
      }
    }
  }
  //右移動/////////////////////////////////////////
  if (Right==true) {
    Px+=5;
    if (Jump_Flag==false||Float_Flag==false) {
      PF+=0.2;
      if (PF>=8) {
        PF=1;
      }
    }
  }
  //ジャンプ/////////////////////////////////////
  if (Jump==true) {
    Py-=JZ;
    Jump_Flag=true;
    if (Py<=OldPy-180) {
      JZ=0;
    }
  }
  if (Jump_Flag==false) {
    OldPy=Py;
  }
  //左横攻撃////////////////////////////////////////////////////////////
  if (Vec==1&&Attack_Flag==true&&Jump==false) {
    PFl=19;
    Px-=10;
    if ((Px<=x&&Px+Pw>=x+bw)&&(Py<y+bh&&Py+Ph>y)) {
      dy=-5;
      dx=-5;
    }
  }
  //右横攻撃////////////////////////////////////////////////////////////
  if (Vec==2&&Attack_Flag==true&&Jump==false) {
    PF=9;
    Px+=10;
    if ((Px<=x&&Px+Pw>=x+bw)&&(Py<y+bh&&Py+Ph>y)) {
      dy=-5;
      dx=5;
    }
  }
  //左アッパー/////////////////////////////////////////////////////////
  if (Vec==1&&Attack_Flag==true&&Jump==true) {
    PFl=19;
    if ((Px<=x&&Px+Pw>=x+bw)&&(Py<y+bh&&Py+Ph>y)) {
      dy=-6;
      dx=-3;
    }
  }
  //右アッパー///////////////////////////////////////////////////////
  if (Vec==2&&Attack_Flag==true&&Jump==true) {
    PF=8;
    if ((Px<=x&&Px+Pw>=x+bw)&&(Py<y+bh&&Py+Ph>y)) {
      dy=-6;
      dx=3;
    }
  }
}
