void Menu() {
  if (GameStatus==0) {
    background(120);
    fill(255, 0, 0);
    textSize(62);
    text("BlockOut", 180, 150);
    textSize(32);
    rect(width/2-100, 280, 200, 50);
    fill(0);
    text("START", width/2-50, 315);
    if (mouseX>=(width/2-100)&&mouseX<=width/2+100&&mouseY>=280&&mouseY<=330) {
      textSize(32);
      fill(255, 255, 0);
      rect(width/2-100, 280, 200, 50);
      fill(0);
      text("START", width/2-50, 315);
      if (mousePressed==true) {
        GameStatus=1;
      }
    }
  }
  else if (GameStatus==1) {
    GameLoop();
  }
  
  else if (GameStatus==2) {
    background(120);
    fill(255, 0, 0);
    textSize(54);
    stroke(0);
    text("GAME OVER", width/2-150, 100);
    rect(width/2-100, 150, 200, 50);
    rect(width/2-100, 250, 200, 50);
    fill(0);
    textSize(32);
    text("Retry", width/2-40, 185);
    text("MENU", width/2-50, 285);
    if (mouseX>=(width/2-100)&&mouseX<=(width/2+100)&&mouseY>=150&&mouseY<=200) {
      fill(255, 255, 0);
      rect(width/2-100, 150, 200, 50);
      fill(0);
      textSize(32);
      text("Retry", width/2-40, 185);
      if (mousePressed==true) {
        count=0;
        DeathCount=0;
        flag=true;
        GameStatus=1;
      }
    }
    if (mouseX>=(width/2-100)&&mouseX<=(width/2+100)&&mouseY>=250&&mouseY<=300) {
      fill(255, 255, 0);
      rect(width/2-100, 250, 200, 50);
      fill(0);
      textSize(32);
      text("MENU", width/2-50, 285);
      if (mousePressed==true) {
        count=0;
        DeathCount=0;
        flag=true;
        GameStatus=0;
      }
    }
  }
}
