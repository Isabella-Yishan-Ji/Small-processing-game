class character  {
  int x1=30,y1=700,x2=70,y2=700,x3=90,y3=790,x4=10,y4=780,x,y;
  int i1=0,i2=0,i3=0,i4=0;
  int s1=int(random(4));
  int _x=0,n=1;  
  //the display of the character, if hit the wall, lose
  void display(){
     x=(x1+x2)/2;y=(y1+y3)/2;
    if(x<=300&&y<=700&&y>=600
    ||x<=100&&y>=400
    ||x<=150&&y>=400&&y<=500
    ||x<=300&&x>=200&&y>=200
    ||x<=200&&y>=50&&y<=200
    ||x<=650&&y>=200&&x>=50&&y<=300
    ||x<=400&y<=150&&x>=200
    ||x<=150&&y>=50&&x>=50&&y<=350
    ||x<=600&&x>=450&&y<=200
    ||x>=500&&y>=150&&y<=200
    ||x>=650&&y>=50&&y<=250
    ||x<=650&&y>=300&&x>=500&&y<=600
    ||x<=550&&y>=500&&x>=350&&y<=750
    ||x<=550&&y>=500&&x>=300&&y<=650
    ||x>=700&&y>=300
    ||x>=650&&y>=300&&y<=400
    ||x>=600&&y>=750
    ||x<=500&&y>=350&&x>=350&&y<=450
      ){
    fill(240,129,85);
    quad(x1,y1,x2,y2,x3,y3,x4,y4);
    }
   else{
     boom.trigger();
     end1.lose();
     back();     
   }   
  }
  //manipulate  the character by keyboard
  void keyPressed(){
    if(keyPressed==true){
      if(keyCode==RIGHT){
      x=x+10;x1=x1+10;x2=x2+10;x3=x3+10;x4=x4+10;
      }
     if(keyCode==LEFT){
      x=x-10;x1=x1-10;x2=x2-10;x3=x3-10;x4=x4-10;
      }
     if(keyCode==UP){
      y=y-10;y1=y1-10;y2=y2-10;y3=y3-10;y4=y4-10;
      }
     if(keyCode==DOWN){
      y=y+10;y1=y1+10;y2=y2+10;y3=y3+10;y4=y4+10;
      }     
    }
  }
 //choose the end
  void select(){
    fill(random(0,255),random(0,255),random(0,255));
    switch (s1){ 
    case 0:ellipse(300,75,100,100);if(200<=x&&x<=400&&y<=200){end1.win();}break;
    case 1:ellipse(725,150,100,100);if(650<=x&&x<=800&&50<=y&&y<=200){end1.win();}break;
    case 2:ellipse(700,750,100,100);if(550<=x&&x<=700&&650<=y&&y<=800){end1.win();}break;
    case 3:ellipse(450,400,100,100);if(350<=x&x<=500&&350<=y&&y<=450){end1.win();}break;
    }
  }
  //draw the monsters
  void monster(){ 
    int xm1=500+_x,xm2=0+_x,xm3=400+_x,xm4=50+_x;
    if(i1==1){image(img, xm1, 50, img.width/4, img.height/4);i1=0;}
    if(i2==1){image(img, xm2, 400, img.width/4, img.height/4);i2=0;}
    if(i3==1){image(img, xm3, 500, img.width/4, img.height/4);i3=0;}
    if(i4==1){image(img, xm4, 100, img.width/4, img.height/4);i4=0;}
    _x=n+_x;
    if(_x==50){n=-1;}
    if(_x==0){n=1;}
    if(x>=xm1-20&&x<=xm1+20&&y<=200){
      end1.lose();
      back();}
    if(x>=xm2-20&&x<=xm2+20&&y<=550&&y>=400){
      end1.lose();
      back();}
    if(x>=xm3-20&&x<=xm3+20&&y<=600&&y>=500){
      end1.lose();
      back();}
    if(x>=xm4-20&&x<=xm4+20&&y<=250&&y>=150){
      end1.lose();
      back();}
  }
  // make monster appear only when shed lights on
  boolean monsterDisplay(){
    boolean dis;
    if(mouseX<=200&&mouseX>=50&&mouseY<=250){dis=true;i4=1;}
    else if(mouseX<=700&&mouseX>=400&&mouseY<=200){dis=true;i1=1;}
    else if(mouseX<=200&&mouseX>=0&&mouseY<=550&&mouseY>=350){dis=true;i2=1;}
    else if(mouseX<=550&&mouseX>=300&&mouseY<=650&&mouseY>=500){dis=true;i3=1;}
    else{dis=false;}
    return dis;
  }
  void back(){
     x1=30;y1=700;x2=70;y2=700;x3=90;y3=790;x4=10;y4=780; x=(x1+x2)/2;y=(y1+y3)/2;
  }
}
