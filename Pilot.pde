void pilot() {
  fill(0);
  fill(0, 0, 255);
  textSize(24);
  text(count, 770, 50);
  text(DeathCount, 770, 70);
  text(JumpCounter, 770, 90);
  text(Keysave, 770, 110);
  if (Right==true)text(1, 770, 130);
  if (Left==true)text(1, 770, 150);
  if (Right==false)text(0, 770, 130);
  if (Left==false)text(0, 770, 150);
  text(JZ, 770, 170);
  text(Py, 770, 190);
  if (Under_Flag==false)text(0, 770, 210);
  if (Under_Flag==true)text(1, 770, 210);
}
