int checkHitBlock1(int n, float x, float y) {
  float left   = Bw * n;
  float right  = Bw * (n + 1);
  float top    = 40;
  float bottom = 40 + Bh;
  float cx = left + Bw / 2;
  float cy = top + Bh / 2;
  float y1, y2;

  if ((x + bw <= left) ||
    (x >= right) ||
    (y + bh <= top) ||
    (y >= bottom)) {
    return 0;
  }

  x = x + bw / 2;
  y = y + bh / 2;

  y1 = y - (-(x - cx)* Bh / Bw + cy);
  y2 = y - ( (x - cx)* Bh / Bw + cy);

  if (y1 > 0) {
    if (y2 > 0) {
      count = count + 1;
      return 1;
    } else if (y2 == 0) {
      count = count + 1;
      return 2;
    } else {
      count = count + 1;
      return 3;
    }
  } else if (y1 < 0) {
    if (y2 > 0) {
      count = count + 1;
      return 7;
    } else if (y2 == 0) {
      count = count + 1;
      return 6;
    } else {
      count = count + 1;
      return 5;
    }
  } else {
    count = count + 1;
    if (y2 > 0) {
      count = count + 1;
      return 8;
    } else if (y2 == 0) {
      count = count + 1;
      return -1;
    } else {
      count = count + 1;
      return 4;
    }
  }
}
void HIT1() {
  int ref = 0;
  for (int i = 0; i<hit1.length; i++) {
    if (hit1[i] > 0) {
      show_block1(i);
      ref = checkHitBlock1(i, x, y);
      switch (ref) {
      case 1:
        hit1[i]--;
      case 2:
      case 8:
        dy = 3;
        break;
      case 5:
        hit1[i]--;
      case 4:
      case 6:
        dy = -3;
        break;
      }
      switch (ref) {
      case 2:
      case 3:
      case 4:
        dx = 2;
        break;
      case 6:
      case 7:
      case 8:
        dx = -2;
        break;
      }
    }
  }
}
int checkHitBlock2(int n, float x, float y) {
  float left   = Bw * n;
  float right  = Bw * (n + 1);
  float top    = 40+30;
  float bottom = 40 + Bh+30;
  float cx = left + Bw / 2;
  float cy = top + Bh / 2;
  float y1, y2;

  if ((x + bw <= left) ||
    (x >= right) ||
    (y + bh <= top) ||
    (y >= bottom)) {
    return 0;
  }

  x = x + bw / 2;
  y = y + bh / 2;

  y1 = y - (-(x - cx)* Bh / Bw + cy);
  y2 = y - ( (x - cx)* Bh / Bw + cy);

  if (y1 > 0) {
    if (y2 > 0) {
      count = count + 1;
      return 1;
    } else if (y2 == 0) {
      count = count + 1;
      return 2;
    } else {
      count = count + 1;
      return 3;
    }
  } else if (y1 < 0) {
    if (y2 > 0) {
      count = count + 1;
      return 7;
    } else if (y2 == 0) {
      count = count + 1;
      return 6;
    } else {
      count = count + 1;
      return 5;
    }
  } else {
    if (y2 > 0) {
      count = count + 1;
      return 8;
    } else if (y2 == 0) {
      count = count + 1;
      return -1;
    } else {
      count = count + 1;
      return 4;
    }
  }
}
void HIT2() {
  int ref = 0;
  for (int i = 0; i<hit2.length; i++) {
    if (hit2[i] > 0) {
      show_block2(i);
      ref = checkHitBlock2(i, x, y);
      switch (ref) {
      case 1:
        hit2[i]--;
      case 2:
      case 8:
        dy = 3;
        break;
      case 5:
        hit2[i]--;
      case 4:
      case 6:
        dy = -3;
        break;
      }
      switch (ref) {
      case 2:
      case 3:
      case 4:
        dx = 2;
        break;
      case 6:
      case 7:
      case 8:
        dx = -2;
        break;
      }
    }
  }
}
int checkHitBlock3(int n, float x, float y) {
  float left   = Bw * n;
  float right  = Bw * (n + 1);
  float top    = 40+60;
  float bottom = 40 + Bh+60;
  float cx = left + Bw / 2;
  float cy = top + Bh / 2;
  float y1, y2;

  if ((x + bw <= left) ||
    (x >= right) ||
    (y + bh <= top) ||
    (y >= bottom)) {
    return 0;
  }

  x = x + bw / 2;
  y = y + bh / 2;

  y1 = y - (-(x - cx)* Bh / Bw + cy);
  y2 = y - ( (x - cx)* Bh / Bw + cy);

  if (y1 > 0) {
    if (y2 > 0) {
      count = count + 1;
      return 1;
    } else if (y2 == 0) {
      count = count + 1;
      return 2;
    } else {
      count = count + 1;
      return 3;
    }
  } else if (y1 < 0) {
    if (y2 > 0) {
      count = count + 1;
      return 7;
    } else if (y2 == 0) {
      count = count + 1;
      return 6;
    } else {
      count = count + 1;
      return 5;
    }
  } else {
    if (y2 > 0) {
      count = count + 1;
      return 8;
    } else if (y2 == 0) {
      count = count + 1;
      return -1;
    } else {
      count = count + 1;
      return 4;
    }
  }
}
void HIT3() {
  int ref = 0;
  for (int i = 0; i<hit3.length; i++) {
    if (hit3[i] > 0) {
      show_block3(i);
      ref = checkHitBlock3(i, x, y);
      switch (ref) {
      case 1:
        hit3[i]--;
      case 2:
      case 8:
        dy = 3;
        break;
      case 5:
        hit3[i]--;
      case 4:
      case 6:
        dy = -3;
        break;
      }
      switch (ref) {
      case 2:
      case 3:
      case 4:
        dx = 2;
        break;
      case 6:
      case 7:
      case 8:
        dx = -2;
        break;
      }
    }
  }
}
int checkHitBlock4(int n, float x, float y) {
  float left   = Bw * n;
  float right  = Bw * (n + 1);
  float top    = 40+90;
  float bottom = 40 + Bh+90;
  float cx = left + Bw / 2;
  float cy = top + Bh / 2;
  float y1, y2;

  if ((x + bw <= left) ||
    (x >= right) ||
    (y + bh <= top) ||
    (y >= bottom)) {
    return 0;
  }

  x = x + bw / 2;
  y = y + bh / 2;

  y1 = y - (-(x - cx)* Bh / Bw + cy);
  y2 = y - ( (x - cx)* Bh / Bw + cy);

  if (y1 > 0) {
    if (y2 > 0) {
      count = count + 1;
      return 1;
    } else if (y2 == 0) {
      count = count + 1;
      return 2;
    } else {
      count = count + 1;
      return 3;
    }
  } else if (y1 < 0) {
    if (y2 > 0) {
      count = count + 1;
      return 7;
    } else if (y2 == 0) {
      count = count + 1;
      return 6;
    } else {
      count = count + 1;
      return 5;
    }
  } else {
    if (y2 > 0) {
      count = count + 1;
      return 8;
    } else if (y2 == 0) {
      count = count + 1;
      return -1;
    } else {
      count = count + 1;
      return 4;
    }
  }
}
void HIT4() {
  int ref = 0;
  for (int i = 0; i<hit4.length; i++) {
    if (hit4[i] > 0) {
      show_block4(i);
      ref = checkHitBlock4(i, x, y);
      switch (ref) {
      case 1:
        hit4[i]--;
      case 2:
      case 8:
        dy = 3;
        break;
      case 5:
        hit4[i]--;
      case 4:
      case 6:
        dy = -3;
        break;
      }
      switch (ref) {
      case 2:
      case 3:
      case 4:
        dx = 2;
        break;
      case 6:
      case 7:
      case 8:
        dx = -2;
        break;
      }
    }
  }
}
