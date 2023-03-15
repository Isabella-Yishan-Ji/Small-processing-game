/* This is the project done by Yishan Ji. To complete this project, I've use the 
   library Minim (developed by Damien Di Fade and  Anderson Mills) and library 
   ControlP5(developed by Andreas Schlegel). I've also use Couvrir by TobyFox-fallen down
   as background music. I've also look up the lab guidance for this semester as references.
   
*/
import ddf.minim.*;
import ddf.minim.ugens.*;
import controlP5.*;
ControlP5 cp5;
Minim minim;
AudioPlayer song;
AudioOutput out;
Minim minim2;
AudioSample boom;
character student=new character();
end end1= new end();
walls wall=new walls();
Hint hint=new Hint();
int show=0;
PImage img;
void setup(){
  size(800,800);
  img=loadImage("Monster.jpg");
  //background music
   // create a toggle
   cp5 = new ControlP5(this);
   // create a toggle and change the default look to a (on/off) switch look
      cp5.addToggle("music")
     .setPosition(720,20)
     .setSize(70,30)
     .setValue(true)
     .setMode(ControlP5.SWITCH)
     ;    
  smooth();
  minim = new Minim(this);
  song = minim.loadFile("Couvrir. - TobyFox-fallen down (变调) (Couvrir. remix).mp3");
  song.loop(); 
  //bump the wall music
  smooth();
  minim2= new Minim(this);
  out = minim2.getLineOut();
  boom= minim2.loadSample("bongo7.wav");
 
}
void draw(){
   //set the background 
  background(0);
   //draw the light
  pushMatrix();
  translate(mouseX-100,mouseY-100);
  fill(255);
  rect(0,0,200,200);
  popMatrix(); 
  //drawing the walls
  wall.display(); 
  //draw the monster when shed light
  if(student.monsterDisplay()){
    student.monster();
   }
  //draw character
  student.display();
  //control character
  student.keyPressed();
  //draw the  trap
  student.select();
  //lives
  end1.live();
  //hint
  if(show==0){
    hint.dispaly();
  } 
}
//the hint
void mouseClicked(){
    show=1;
    
   }
   //toggle
void music(boolean theFlag) {
  if(theFlag==false) {
   if(song.isPlaying()){
      song.pause(); //add this line to turn off song
     }   
  } 
  else { 
      song.loop(); //add this line to turn on song
  }
}
