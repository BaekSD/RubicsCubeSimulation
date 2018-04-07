import matlabcontrol.internal.*;
import matlabcontrol.extensions.*;
import matlabcontrol.*;

float x = -0.44+2*PI, y = -0.46+2*PI, angle=0.0;
int len = 500;
int size = 50;
int s=-1, ss=0;            //s is turning side. values of this are 1~6, and -1 is not turning
                           //ss is turning direction.
int tcp=0;                //toCurrentPosition
int turning=0, mixing=0;  //mixing 0:not any status -> 1:now cube mixing -> 2:now program has the solve
                          //if you turn the cube freely when mixing is 2, then mixing will be -1
                          //and last status of mixing is 99. this means program solves cube perfactly.
String hist[];
int i=0;   //index of hist

int earthquake = 0;
int twinkle = 0;

Cube cube;
MatlabCube mc;

PFont font1, font2;

void setup()                //this is a kind of constructor of processing
{
  size(500, 500, P3D);
  cube = new Cube();
  mc = new MatlabCube();
  try
  {
    mc.setting();
  }
  catch(MatlabConnectionException e)
  {
    print("ConnectionException\n");
  }
  catch(MatlabInvocationException e)
  {
    print("InvocationException\n");
  }

  font1 = loadFont("Yj_BACDOO_Bold-48.vlw");
  font2 = loadFont("VinerHandITC-48.vlw");
}

void draw()          //this method will process continuously, and this will draw cube
{
  background(5, 17, 62);
  translate(250, 250, 0);
  fill(255);
  textSize(12);
  textFont(font1, 12);
  textAlign(LEFT);
  text("U,F,R,B,L,D = 1~6", -240, 130);
  text("U',F',R',B',L',D' = Q,W,E,R,T,Y", -240, 150);
  text("E,S,M = A,S,D", -240, 170);
  text("E',S',M' = Z,X,C", -240, 190);
  text("X,Y,Z = F,G,H", -240, 210);
  text("X',Y',Z' = V,B,N", -240, 230);

  textAlign(RIGHT);
  text("MIXUP = SPACEBAR", 240, 130);
  text("SOLUTION = ENTER", 240, 150);
  text("PREVIOUS = SHIFT", 240, 170);
  text("RESET = BACKSPACE", 240, 190);
  text("ORIGNAL ANGLE = RIGHT CLICK", 240, 210);
  text("AND OTHER HIDDEN KEYS...", 240, 230);

  if (tcp==1)
  {
    x+=PI/30.0;
    y+=PI/30.0;

    if (x >= 2*PI-0.44)
    {
      x = 2*PI-0.44;
    }
    if (y >= 2*PI-0.46)
    {
      y = 2*PI-0.46;
    }

    if (x==2*PI-0.44 && y==2*PI-0.46)
    {
      tcp=0;
    }
  }
  else if (tcp==2)
  {
    if (size>=200)
    {
      size-=20;
    }
    else if (size>=100)
    {
      size-=10;
    }
    else if (size>50)
    {
      size-=5;
      if (size<=50)
      {
        size = 50;
        tcp = 0;
      }
    }
    else if (size<50)
    {
      size+=2;
      if (size>=50)
      {
        size = 50;
        tcp = 0;
      }
    }
  }

  if (earthquake == 1)
  {
    textSize(50);
    textFont(font2);
    textAlign(CENTER);
    fill((int)(Math.random()*255+1), (int)(Math.random()*255+1), (int)(Math.random()*255+1));
    text("EARTHQUAKE!!!", 0, -170);
    translate((float)((Math.random()*20)-10), (float)((Math.random()*20)-10), (float)((Math.random()*20)-10));
    fill(255);
  }

  rotateX(x);
  rotateY(y);
  noFill();

  if (mixing==1)
  {
    textSize(50);
    textFont(font1);
    textAlign(CENTER);
    text("MIXING...", 0, -170);
    if (turning==0 && hist.length>i)
    {
      if (hist[i].equals("Un"))
      {
        s=1;
        ss=1;
      }
      else if (hist[i].equals("Fn"))
      {
        s=2;
        ss=1;
      }
      else if (hist[i].equals("Rn"))
      {
        s=3;
        ss=1;
      }
      else if (hist[i].equals("Bn"))
      {
        s=4;
        ss=1;
      }
      else if (hist[i].equals("Ln"))
      {
        s=5;
        ss=1;
      }
      else if (hist[i].equals("Dn"))
      {
        s=6;
        ss=1;
      }
      else if (hist[i].equals("Up"))
      {
        s=1;
        ss=-1;
      }
      else if (hist[i].equals("Fp"))
      {
        s=2;
        ss=-1;
      }
      else if (hist[i].equals("Rp"))
      {
        s=3;
        ss=-1;
      }
      else if (hist[i].equals("Bp"))
      {
        s=4;
        ss=-1;
      }
      else if (hist[i].equals("Lp"))
      {
        s=5;
        ss=-1;
      }
      else if (hist[i].equals("Dp"))
      {
        s=6;
        ss=-1;
      }
      else if (hist[i].equals("En"))
      {
        s=7;
        ss=-1;
      }
      else if (hist[i].equals("Sn"))
      {
        s=8;
        ss=1;
      }
      else if (hist[i].equals("Mn"))
      {
        s=9;
        ss=-1;
      }
      else if (hist[i].equals("Ep"))
      {
        s=7;
        ss=1;
      }
      else if (hist[i].equals("Sp"))
      {
        s=8;
        ss=-1;
      }
      else if (hist[i].equals("Mp"))
      {
        s=9;
        ss=1;
      }
      else if (hist[i].equals("Xn"))
      {
        s=10;
        ss=1;
      }
      else if (hist[i].equals("Yn"))
      {
        s=11;
        ss=1;
      }
      else if (hist[i].equals("Zn"))
      {
        s=12;
        ss=1;
      }
      else if (hist[i].equals("Xp"))
      {
        s=10;
        ss=-1;
      }
      else if (hist[i].equals("Yp"))
      {
        s=11;
        ss=-1;
      }
      else if (hist[i].equals("Zp"))
      {
        s=12;
        ss=-1;
      }
      turning=1;
      i++;
    }
    else if (hist.length<=i)
    {
      mixing=2;
      turning=0;
      i=0;
      try
      {
        mc.solving();
      }
      catch(MatlabConnectionException e)
      {
        print("ConnectionException\n");
      }
      catch(MatlabInvocationException e)
      {
        print("InvocationException\n");
      }
    }
  }

  angle+=PI/15.0*ss;
  if (angle>PI/2.0 || angle<-PI/2.0)
  {
    angle=0.0;
    if (s<=9)
    {
      cube.turn(s, ss);
    }
    else if (s==10)
    {
      cube.turn(3, ss);
      cube.turn(9, ss);
      cube.turn(5, -ss);
    }
    else if (s==11)
    {
      cube.turn(1, ss);
      cube.turn(7, ss);
      cube.turn(6, -ss);
    }
    else if (s==12)
    {
      cube.turn(2, ss);
      cube.turn(8, ss);
      cube.turn(4, -ss);
    }
    s=-1;
    ss=0;
    turning=0;
  }

  if (twinkle==1)
  {
    if (Math.random()*10>7.5)
    {
      cube.drawCube(s, angle);
    }
  }
  else
  {
    cube.drawCube(s, angle);
  }
}

void mouseClicked()
{
  if (mouseButton == RIGHT)
  {
    tcp = 1;
  }
  if (mouseButton == CENTER)
  {
    tcp = 2;
  }
}

void mouseWheel(MouseEvent event)
{
  float e = event.getAmount();

  if (size<=50)
  {
    size+=e;
  }
  else if (size<=100)
  {
    size+=(e*2);
  }
  else if (size<=200)
  {
    size+=(e*4);
  }
  else
  {
    size+=(e*8);
  }

  if (size<=0)
  {
    size = 1;
  }
}

void mouseDragged()
{
  if (mouseButton == LEFT)
  {
    y += (mouseX-pmouseX)/(len/10.0);
    x -= (mouseY-pmouseY)/(len/10.0);
  }
  if (x < 0)
  {
    x += 2*PI;
  }
  else if (x >= PI*2.0)
  {
    x -= 2*PI;
  }
  if (y < 0)
  {
    y += 2*PI;
  }
  else if (y >= PI*2.0)
  {
    y -= 2*PI;
  }
}

void keyPressed()
{
  if (turning==0 && mixing!=1)
  {
    try
    {
      switch(keyCode)
      {
      case '1':
        s=1;
        ss=1;
        turning=1;
        mixing=-1;
        break;
      case '2':
        s=2;
        ss=1;
        turning=1;
        mixing=-1;
        break;
      case '3':
        s=3;
        ss=1;
        turning=1;
        mixing=-1;
        break;
      case '4':
        s=4;
        ss=1;
        turning=1;
        mixing=-1;
        break;
      case '5':
        s=5;
        ss=1;
        turning=1;
        mixing=-1;
        break;
      case '6':
        s=6;
        ss=1;
        turning=1;
        mixing=-1;
        break;
      case 'Q':
        s=1;
        ss=-1;
        turning=1;
        mixing=-1;
        break;
      case 'W':
        s=2;
        ss=-1;
        turning=1;
        mixing=-1;
        break;
      case 'E':
        s=3;
        ss=-1;
        turning=1;
        mixing=-1;
        break;
      case 'R':
        s=4;
        ss=-1;
        turning=1;
        mixing=-1;
        break;
      case 'T':
        s=5;
        ss=-1;
        turning=1;
        mixing=-1;
        break;
      case 'Y':
        s=6;
        ss=-1;
        turning=1;
        mixing=-1;
        break;
      case 'A':
        s=7;
        ss=-1;
        turning=1;
        mixing=-1;
        break;
      case 'S':
        s=8;
        ss=1;
        turning=1;
        mixing=-1;
        break;
      case 'D':
        s=9;
        ss=-1;
        turning=1;
        mixing=-1;
        break;
      case 'Z':
        s=7;
        ss=1;
        turning=1;
        mixing=-1;
        break;
      case 'X':
        s=8;
        ss=-1;
        turning=1;
        mixing=-1;
        break;
      case 'C':
        s=9;
        ss=1;
        turning=1;
        mixing=-1;
        break;
      case 'F':
        s=10;
        ss=1;
        turning=1;
        mixing=-1;
        break;
      case 'G':
        s=11;
        ss=1;
        turning=1;
        mixing=-1;
        break;
      case 'H':
        s=12;
        ss=1;
        turning=1;
        mixing=-1;
        break;
      case 'V':
        s=10;
        ss=-1;
        turning=1;
        mixing=-1;
        break;
      case 'B':
        s=11;
        ss=-1;
        turning=1;
        mixing=-1;
        break;
      case 'N':
        s=12;
        ss=-1;
        turning=1;
        mixing=-1;
        break;
      case CONTROL:              //earthquake
        if (earthquake == 0)
        {
          earthquake = 1;
        }
        else
        {
          earthquake = 0;
        }
        break;
      case 123:                  //twinkle, F12
        if (twinkle == 0)
        {
          twinkle = 1;
        }
        else
        {
          twinkle = 0;
        }
        break;
      case SHIFT:                   //previous
        if ((mixing==2 || mixing==99) && hist!=null && i>0)
        {
          if (mixing==99)
          {
            mixing=2;
          }
          i--;
          if (hist[i].equals("Un"))
          {
            s=1;
            ss=-1;
          }
          else if (hist[i].equals("Fn"))
          {
            s=2;
            ss=-1;
          }
          else if (hist[i].equals("Rn"))
          {
            s=3;
            ss=-1;
          }
          else if (hist[i].equals("Bn"))
          {
            s=4;
            ss=-1;
          }
          else if (hist[i].equals("Ln"))
          {
            s=5;
            ss=-1;
          }
          else if (hist[i].equals("Dn"))
          {
            s=6;
            ss=-1;
          }
          else if (hist[i].equals("Up"))
          {
            s=1;
            ss=1;
          }
          else if (hist[i].equals("Fp"))
          {
            s=2;
            ss=1;
          }
          else if (hist[i].equals("Rp"))
          {
            s=3;
            ss=1;
          }
          else if (hist[i].equals("Bp"))
          {
            s=4;
            ss=1;
          }
          else if (hist[i].equals("Lp"))
          {
            s=5;
            ss=1;
          }
          else if (hist[i].equals("Dp"))
          {
            s=6;
            ss=1;
          }
          else if (hist[i].equals("En"))
          {
            s=7;
            ss=1;
          }
          else if (hist[i].equals("Sn"))
          {
            s=8;
            ss=-1;
          }
          else if (hist[i].equals("Mn"))
          {
            s=9;
            ss=1;
          }
          else if (hist[i].equals("Ep"))
          {
            s=7;
            ss=-1;
          }
          else if (hist[i].equals("Sp"))
          {
            s=8;
            ss=1;
          }
          else if (hist[i].equals("Mp"))
          {
            s=9;
            ss=-1;
          }
          else if (hist[i].equals("Xn"))
          {
            s=10;
            ss=-1;
          }
          else if (hist[i].equals("Yn"))
          {
            s=11;
            ss=-1;
          }
          else if (hist[i].equals("Zn"))
          {
            s=12;
            ss=-1;
          }
          else if (hist[i].equals("Xp"))
          {
            s=10;
            ss=1;
          }
          else if (hist[i].equals("Yp"))
          {
            s=11;
            ss=1;
          }
          else if (hist[i].equals("Zp"))
          {
            s=12;
            ss=1;
          }
          turning=1;
        }
        break;
      case BACKSPACE:              //reset the cube
        cube = new Cube();
        mc.returnCubeStatus();
        hist = null;
        i=0;
        s=-1;
        ss=0;
        turning=0;
        mixing=0;
        break;
      case ENTER:                  //show steps of solution when enter key is pressed.
        if (mixing==-1)
        {
          mc.returnCubeStatus();
          mc.solving();
          mixing=2;
          i=0;
        }
        if (mixing==2 && hist!=null)
        {
          if (hist.length>i)
          {
            if (hist[i].equals("Un"))
            {
              s=1;
              ss=1;
            }
            else if (hist[i].equals("Fn"))
            {
              s=2;
              ss=1;
            }
            else if (hist[i].equals("Rn"))
            {
              s=3;
              ss=1;
            }
            else if (hist[i].equals("Bn"))
            {
              s=4;
              ss=1;
            }
            else if (hist[i].equals("Ln"))
            {
              s=5;
              ss=1;
            }
            else if (hist[i].equals("Dn"))
            {
              s=6;
              ss=1;
            }
            else if (hist[i].equals("Up"))
            {
              s=1;
              ss=-1;
            }
            else if (hist[i].equals("Fp"))
            {
              s=2;
              ss=-1;
            }
            else if (hist[i].equals("Rp"))
            {
              s=3;
              ss=-1;
            }
            else if (hist[i].equals("Bp"))
            {
              s=4;
              ss=-1;
            }
            else if (hist[i].equals("Lp"))
            {
              s=5;
              ss=-1;
            }
            else if (hist[i].equals("Dp"))
            {
              s=6;
              ss=-1;
            }
            else if (hist[i].equals("En"))
            {
              s=7;
              ss=-1;
            }
            else if (hist[i].equals("Sn"))
            {
              s=8;
              ss=1;
            }
            else if (hist[i].equals("Mn"))
            {
              s=9;
              ss=-1;
            }
            else if (hist[i].equals("Ep"))
            {
              s=7;
              ss=1;
            }
            else if (hist[i].equals("Sp"))
            {
              s=8;
              ss=-1;
            }
            else if (hist[i].equals("Mp"))
            {
              s=9;
              ss=1;
            }
            else if (hist[i].equals("Xn"))
            {
              s=10;
              ss=1;
            }
            else if (hist[i].equals("Yn"))
            {
              s=11;
              ss=1;
            }
            else if (hist[i].equals("Zn"))
            {
              s=12;
              ss=1;
            }
            else if (hist[i].equals("Xp"))
            {
              s=10;
              ss=-1;
            }
            else if (hist[i].equals("Yp"))
            {
              s=11;
              ss=-1;
            }
            else if (hist[i].equals("Zp"))
            {
              s=12;
              ss=-1;
            }
            turning=1;
            i++;
          }
          else if (hist.length<=i)
          {
            mixing=99;
          }
        }
        break;
      case 32:                      //mixup
        mc.returnCubeStatus();
        mc.eval("[hist,cube] = mixup(hist,cube)");
        hist = (String[])mc.proxy.getVariable("hist");
        mixing=1;
        break;
      }
    }
    catch(MatlabConnectionException e)
    {
      print("ConnectionException\n");
    }
    catch(MatlabInvocationException e)
    {
      print("InvocationException\n");
    }
  }
}

class MatlabCube
{
  MatlabProxyFactory factory = new MatlabProxyFactory();
  MatlabProxy proxy;

  void setting() throws MatlabConnectionException, MatlabInvocationException      //initial setting when program is started
  {
    proxy = factory.getProxy();
    proxy.eval("variables");
  }

  void eval(String str) throws MatlabConnectionException, MatlabInvocationException      //eval function process matlab code of variable str
  {
    proxy.eval(str);
  }

  void solving() throws MatlabConnectionException, MatlabInvocationException        //solve the cube and bring history of solves
  {
    eval("[hist,cube] = topcross(hist,cube);");
    eval("[hist,cube] = sideT(hist,cube);");
    eval("[hist,cube] = layer2(hist,cube);");
    eval("[hist,cube] = OLL(hist,cube);");
    eval("[hist,cube] = PLL(hist,cube);");
    try
    {
      hist = (String[])mc.proxy.getVariable("hist");
    }
    catch(ClassCastException e)
    {
      try
      {
        hist = new String[1];
        hist[0] = (String)mc.proxy.getVariable("hist");
      }
      catch(ClassCastException e2)
      {
        hist = null;
      }
    }
  }

  void returnCubeStatus() throws MatlabConnectionException, MatlabInvocationException        //give current cube status to matlab
  {
    eval("cube = zeros(26,6);");

    for (int i=0; i<cube.cp.length; i++)
    {
      cube.cp[i].returnCubeStatus();
    }
  }
}

class Cube
{
  CubePart cp[] = new CubePart[26];

  Cube()
  {
    int x=0, y=0, z=0;
    for (int i=0; i<cp.length; i++)
    {
      if (x==1 && y==1 && z==1)
      {
        x++;
      }
      cp[i] = new CubePart(x, y, z);
      x++;
      if (x == 3)
      {
        x = 0;
        z++;
        if (z == 3)
        {
          z = 0;
          y++;
          if (y == 3)
          {
            break;
          }
        }
      }
    }
  }

  void turn(int s, int ss)          //yes. this method is the turning method.
  {
    if (ss==-1)
    {
      ss=3;
    }
    for (int a=0; a<ss; a++)
    {
      switch(s)
      {
      case 1:
        for (int i=0; i<cp.length; i++)
        {
          if (cp[i].y==0)
          {
            cp[i].turn(s);
          }
        }
        break;
      case 2:
        for (int i=0; i<cp.length; i++)
        {
          if (cp[i].z==2)
          {
            cp[i].turn(s);
          }
        }
        break;
      case 3:
        for (int i=0; i<cp.length; i++)
        {
          if (cp[i].x==2)
          {
            cp[i].turn(s);
          }
        }
        break;
      case 4:
        for (int i=0; i<cp.length; i++)
        {
          if (cp[i].z==0)
          {
            cp[i].turn(s);
          }
        }
        break;
      case 5:
        for (int i=0; i<cp.length; i++)
        {
          if (cp[i].x==0)
          {
            cp[i].turn(s);
          }
        }
        break;
      case 6:
        for (int i=0; i<cp.length; i++)
        {
          if (cp[i].y==2)
          {
            cp[i].turn(s);
          }
        }
        break;
      case 7:
        for (int i=0; i<cp.length; i++)
        {
          if (cp[i].y==1)
          {
            cp[i].turn(1);
          }
        }
        break;
      case 8:
        for (int i=0; i<cp.length; i++)
        {
          if (cp[i].z==1)
          {
            cp[i].turn(2);
          }
        }
        break;
      case 9:
        for (int i=0; i<cp.length; i++)
        {
          if (cp[i].x==1)
          {
            cp[i].turn(3);
          }
        }
        break;
      }
    }
  }

  void drawCube(int s, float angle)          //yes. this method is the draw method
  {
    for (int i=0; i<cp.length; i++)
    {
      cp[i].drawPart(s, angle);
    }
  }
}

class CubePart
{
  int x, y, z;
  CubePartPart cpp[];

  CubePart(int x, int y, int z)
  {
    this.x = x;
    this.y = y;
    this.z = z;
    cpp = new CubePartPart[6];
    for (int i=0; i<cpp.length; i++)
    {
      cpp[i] = new CubePartPart(x, y, z, i+1);
    }
  }

  void turn(int s)
  {
    switch(s)
    {
    case 1:
      for (int i=0; i<cpp.length; i++)
      {
        if (cpp[i].side==2)
        {
          cpp[i].side=5;
        }
        else if (cpp[i].side==5)
        {
          cpp[i].side=4;
        }
        else if (cpp[i].side==4)
        {
          cpp[i].side=3;
        }
        else if (cpp[i].side==3)
        {
          cpp[i].side=2;
        }

        if (cpp[i].x==0)
        {
          if (cpp[i].z==0)
          {
            if (i==0)
            {
              x=2;
            }
            cpp[i].x=2;
          }
          else if (cpp[i].z==1)
          {
            if (i==0)
            {
              x=1;
              z=0;
            }
            cpp[i].x=1;
            cpp[i].z=0;
          }
          else
          {
            if (i==0)
            {
              z=0;
            }
            cpp[i].z=0;
          }
        }
        else if (cpp[i].x==1)
        {
          if (cpp[i].z==0)
          {
            if (i==0)
            {
              x=2;
              z=1;
            }
            cpp[i].x=2;
            cpp[i].z=1;
          }
          else if (cpp[i].z==2)
          {
            if (i==0)
            {
              x=0;
              z=1;
            }
            cpp[i].x=0;
            cpp[i].z=1;
          }
        }
        else
        {
          if (cpp[i].z==0)
          {
            if (i==0)
            {
              z=2;
            }
            cpp[i].z=2;
          }
          else if (cpp[i].z==1)
          {
            if (i==0)
            {
              x=1;
              z=2;
            }
            cpp[i].x=1;
            cpp[i].z=2;
          }
          else
          {
            if (i==0)
            {
              x=0;
            }
            cpp[i].x=0;
          }
        }
      }
      break;
    case 2:
      for (int i=0; i<cpp.length; i++)
      {
        if (cpp[i].side==1)
        {
          cpp[i].side=3;
        }
        else if (cpp[i].side==3)
        {
          cpp[i].side=6;
        }
        else if (cpp[i].side==6)
        {
          cpp[i].side=5;
        }
        else if (cpp[i].side==5)
        {
          cpp[i].side=1;
        }

        if (cpp[i].x==0)
        {
          if (cpp[i].y==0)
          {
            if (i==0)
            {
              x=2;
            }
            cpp[i].x=2;
          }
          else if (cpp[i].y==1)
          {
            if (i==0)
            {
              x=1;
              y=0;
            }
            cpp[i].x=1;
            cpp[i].y=0;
          }
          else
          {
            if (i==0)
            {
              y=0;
            }
            cpp[i].y=0;
          }
        }
        else if (cpp[i].x==1)
        {
          if (cpp[i].y==0)
          {
            if (i==0)
            {
              x=2;
              y=1;
            }
            cpp[i].x=2;
            cpp[i].y=1;
          }
          else if (cpp[i].y==2)
          {
            if (i==0)
            {
              x=0;
              y=1;
            }
            cpp[i].x=0;
            cpp[i].y=1;
          }
        }
        else
        {
          if (cpp[i].y==0)
          {
            if (i==0)
            {
              y=2;
            }
            cpp[i].y=2;
          }
          else if (cpp[i].y==1)
          {
            if (i==0)
            {
              x=1;
              y=2;
            }
            cpp[i].x=1;
            cpp[i].y=2;
          }
          else
          {
            if (i==0)
            {
              x=0;
            }
            cpp[i].x=0;
          }
        }
      }
      break;
    case 3:
      for (int i=0; i<cpp.length; i++)
      {
        if (cpp[i].side==1)
        {
          cpp[i].side=4;
        }
        else if (cpp[i].side==4)
        {
          cpp[i].side=6;
        }
        else if (cpp[i].side==6)
        {
          cpp[i].side=2;
        }
        else if (cpp[i].side==2)
        {
          cpp[i].side=1;
        }

        if (cpp[i].y==0)
        {
          if (cpp[i].z==0)
          {
            if (i==0)
            {
              y=2;
            }
            cpp[i].y=2;
          }
          else if (cpp[i].z==1)
          {
            if (i==0)
            {
              y=1;
              z=0;
            }
            cpp[i].y=1;
            cpp[i].z=0;
          }
          else
          {
            if (i==0)
            {
              z=0;
            }
            cpp[i].z=0;
          }
        }
        else if (cpp[i].y==1)
        {
          if (cpp[i].z==0)
          {
            if (i==0)
            {
              y=2;
              z=1;
            }
            cpp[i].y=2;
            cpp[i].z=1;
          }
          else if (cpp[i].z==2)
          {
            if (i==0)
            {
              y=0;
              z=1;
            }
            cpp[i].y=0;
            cpp[i].z=1;
          }
        }
        else
        {
          if (cpp[i].z==0)
          {
            if (i==0)
            {
              z=2;
            }
            cpp[i].z=2;
          }
          else if (cpp[i].z==1)
          {
            if (i==0)
            {
              y=1;
              z=2;
            }
            cpp[i].y=1;
            cpp[i].z=2;
          }
          else
          {
            if (i==0)
            {
              y=0;
            }
            cpp[i].y=0;
          }
        }
      }
      break;
    case 4:
      for (int i=0; i<cpp.length; i++)
      {
        if (cpp[i].side==1)
        {
          cpp[i].side=5;
        }
        else if (cpp[i].side==5)
        {
          cpp[i].side=6;
        }
        else if (cpp[i].side==6)
        {
          cpp[i].side=3;
        }
        else if (cpp[i].side==3)
        {
          cpp[i].side=1;
        }

        if (cpp[i].x==0)
        {
          if (cpp[i].y==0)
          {
            if (i==0)
            {
              y=2;
            }
            cpp[i].y=2;
          }
          else if (cpp[i].y==1)
          {
            if (i==0)
            {
              x=1;
              y=2;
            }
            cpp[i].x=1;
            cpp[i].y=2;
          }
          else
          {
            if (i==0)
            {
              x=2;
            }
            cpp[i].x=2;
          }
        }
        else if (cpp[i].x==1)
        {
          if (cpp[i].y==0)
          {
            if (i==0)
            {
              x=0;
              y=1;
            }
            cpp[i].x=0;
            cpp[i].y=1;
          }
          else if (cpp[i].y==2)
          {
            if (i==0)
            {
              x=2;
              y=1;
            }
            cpp[i].x=2;
            cpp[i].y=1;
          }
        }
        else
        {
          if (cpp[i].y==0)
          {
            if (i==0)
            {
              x=0;
            }
            cpp[i].x=0;
          }
          else if (cpp[i].y==1)
          {
            if (i==0)
            {
              x=1;
              y=0;
            }
            cpp[i].x=1;
            cpp[i].y=0;
          }
          else
          {
            if (i==0)
            {
              y=0;
            }
            cpp[i].y=0;
          }
        }
      }
      break;
    case 5:
      for (int i=0; i<cpp.length; i++)
      {
        if (cpp[i].side==1)
        {
          cpp[i].side=2;
        }
        else if (cpp[i].side==2)
        {
          cpp[i].side=6;
        }
        else if (cpp[i].side==6)
        {
          cpp[i].side=4;
        }
        else if (cpp[i].side==4)
        {
          cpp[i].side=1;
        }

        if (cpp[i].y==0)
        {
          if (cpp[i].z==0)
          {
            if (i==0)
            {
              z=2;
            }
            cpp[i].z=2;
          }
          else if (cpp[i].z==1)
          {
            if (i==0)
            {
              y=1;
              z=2;
            }
            cpp[i].y=1;
            cpp[i].z=2;
          }
          else
          {
            if (i==0)
            {
              y=2;
            }
            cpp[i].y=2;
          }
        }
        else if (cpp[i].y==1)
        {
          if (cpp[i].z==0)
          {
            if (i==0)
            {
              y=0;
              z=1;
            }
            cpp[i].y=0;
            cpp[i].z=1;
          }
          else if (cpp[i].z==2)
          {
            if (i==0)
            {
              y=2;
              z=1;
            }
            cpp[i].y=2;
            cpp[i].z=1;
          }
        }
        else
        {
          if (cpp[i].z==0)
          {
            if (i==0)
            {
              y=0;
            }
            cpp[i].y=0;
          }
          else if (cpp[i].z==1)
          {
            if (i==0)
            {
              y=1;
              z=0;
            }
            cpp[i].y=1;
            cpp[i].z=0;
          }
          else
          {
            if (i==0)
            {
              z=0;
            }
            cpp[i].z=0;
          }
        }
      }
      break;
    case 6:
      for (int i=0; i<cpp.length; i++)
      {
        if (cpp[i].side==2)
        {
          cpp[i].side=3;
        }
        else if (cpp[i].side==3)
        {
          cpp[i].side=4;
        }
        else if (cpp[i].side==4)
        {
          cpp[i].side=5;
        }
        else if (cpp[i].side==5)
        {
          cpp[i].side=2;
        }

        if (cpp[i].x==0)
        {
          if (cpp[i].z==0)
          {
            if (i==0)
            {
              z=2;
            }
            cpp[i].z=2;
          }
          else if (cpp[i].z==1)
          {
            if (i==0)
            {
              x=1;
              z=2;
            }
            cpp[i].x=1;
            cpp[i].z=2;
          }
          else
          {
            if (i==0)
            {
              x=2;
            }
            cpp[i].x=2;
          }
        }
        else if (cpp[i].x==1)
        {
          if (cpp[i].z==0)
          {
            if (i==0)
            {
              x=0;
              z=1;
            }
            cpp[i].x=0;
            cpp[i].z=1;
          }
          else if (cpp[i].z==2)
          {
            if (i==0)
            {
              x=2;
              z=1;
            }
            cpp[i].x=2;
            cpp[i].z=1;
          }
        }
        else
        {
          if (cpp[i].z==0)
          {
            if (i==0)
            {
              x=0;
            }
            cpp[i].x=0;
          }
          else if (cpp[i].z==1)
          {
            if (i==0)
            {
              x=1;
              z=0;
            }
            cpp[i].x=1;
            cpp[i].z=0;
          }
          else
          {
            if (i==0)
            {
              z=0;
            }
            cpp[i].z=0;
          }
        }
      }
      break;
    }
  }

  void drawPart(int s, float angle)
  {
    for (int i=0; i<cpp.length; i++)
    {
      cpp[i].drawPartPart(s, angle);
    }
  }

  void returnCubeStatus()
  {
    int w = x+z*3+y*9;

    if (y==0 || (y==1 && z==0) || (y==1 && z==1 && x==0))
    {
      w++;
    }

    for (int i=0; i<cpp.length; i++)
    {
      try
      {
        if (cpp[i].side!=0)
        {
          mc.eval("cube("+w+","+cpp[i].side+") = "+cpp[i].p_color+";");
        }
      }
      catch(MatlabConnectionException e)
      {
        print("ConnectionException\n");
      }
      catch(MatlabInvocationException e)
      {
        print("InvocationException\n");
      }
    }
  }
}

class CubePartPart
{
  int x, y, z, p_color, side;
  CubePartPart(int x, int y, int z, int p)
  {
    this.x = x;
    this.y = y;
    this.z = z;
    if ((x == 0 && p == 5) || (x == 2 && p == 3) || (y == 0 && p == 1) || (y == 2 && p == 6) || (z == 0 && p == 4) || (z == 2 && p == 2))
    {
      side = p_color = p;
    }
    else
    {
      side = p_color = 0;
    }
  }

  void drawPartPart(int s, float angle)
  {
    if (s==1 && y==0)
    {
      rotateY(-angle);
    }
    else if (s==2 && z==2)
    {
      rotateZ(angle);
    }
    else if (s==3 && x==2)
    {
      rotateX(angle);
    }
    else if (s==4 && z==0)
    {
      rotateZ(-angle);
    }
    else if (s==5 && x==0)
    {
      rotateX(-angle);
    }
    else if (s==6 && y==2)
    {
      rotateY(angle);
    }
    else if (s==7 && y==1)
    {
      rotateY(-angle);
    }
    else if (s==8 && z==1)
    {
      rotateZ(angle);
    }
    else if (s==9 && x==1)
    {
      rotateX(angle);
    }
    else if (s==10)
    {
      rotateX(angle);
    }
    else if (s==11)
    {
      rotateY(-angle);
    }
    else if (s==12)
    {
      rotateZ(angle);
    }
    switch(side)
    {
    case 1:
      translate(0, -size*1.5, z*size);
      rotateX(PI/2.0);
      setColor(p_color);
      rect((x-1.5)*size, (y-1.5)*size, size, size);
      noFill();
      rotateX(-PI/2.0);
      translate(0, size*1.5, -z*size);
      break;
    case 2:
      translate(0, 0, size*1.5);
      setColor(p_color);
      rect((x-1.5)*size, (y-1.5)*size, size, size);
      noFill();
      translate(0, 0, -size*1.5);
      break;
    case 3:
      translate(size*1.5, 0, (z-2)*size);
      rotateY(-PI/2.0);
      setColor(p_color);
      rect((x-1.5)*size, (y-1.5)*size, size, size);
      noFill();
      rotateY(PI/2.0);
      translate(-size*1.5, 0, -(z-2)*size);
      break;
    case 4:
      translate(0, 0, -size*1.5);
      setColor(p_color);
      rect((x-1.5)*size, (y-1.5)*size, size, size);
      noFill();
      translate(0, 0, size*1.5);
      break;
    case 5:
      translate(-size*1.5, 0, (z-2)*size);
      rotateY(PI/2.0);
      setColor(p_color);
      rect((x-1.5)*size, (y-1.5)*size, size, size);
      noFill();
      rotateY(-PI/2.0);
      translate(size*1.5, 0, -(z-2)*size);
      break;
    case 6:
      translate(0, size*1.5, z*size);
      rotateX(-PI/2.0);
      setColor(p_color);
      rect((x-1.5)*size, (y-1.5)*size, size, size);
      noFill();
      rotateX(PI/2.0);
      translate(0, -size*1.5, -z*size);
    }

    if (s==1 && y==0)
    {
      rotateY(angle);
    }
    else if (s==2 && z==2)
    {
      rotateZ(-angle);
    }
    else if (s==3 && x==2)
    {
      rotateX(-angle);
    }
    else if (s==4 && z==0)
    {
      rotateZ(angle);
    }
    else if (s==5 && x==0)
    {
      rotateX(angle);
    }
    else if (s==6 && y==2)
    {
      rotateY(-angle);
    }
    else if (s==7 && y==1)
    {
      rotateY(angle);
    }
    else if (s==8 && z==1)
    {
      rotateZ(-angle);
    }
    else if (s==9 && x==1)
    {
      rotateX(-angle);
    }
    else if (s==10)
    {
      rotateX(-angle);
    }
    else if (s==11)
    {
      rotateY(angle);
    }
    else if (s==12)
    {
      rotateZ(-angle);
    }
  }

  void setColor(int i)
  {
    switch(i)
    {
    case 1:
      fill(255, 255, 255);
      break;
    case 2:
      fill(255, 0, 0);
      break;
    case 3:
      fill(0, 0, 255);
      break;
    case 4:
      fill(163, 73, 163);
      break;
    case 5:
      fill(0, 255, 0);
      break;
    case 6:
      fill(255, 255, 0);
    }
  }
}