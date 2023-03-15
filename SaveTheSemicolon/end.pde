class end{
  int die=0;
  int lives=3;
  void win(){   
      fill(169,214,166);
    rect(0,0,800,800);
    textSize(200);
    fill(247,175,97);
    text("You win ",50,300);
    textSize(200);
    text("Congrats!",0,600);
    System.out.println("You win");
  }
  void lose(){
    fill(209,159,219);
    rect(0,0,800,800);
    textSize(200);
    fill(0);
    text("You lose ",50,400);
    textSize(150);
    text("Try again",100,600);
    System.out.println("You lose");
    die=1;
  }
  void live(){
    if(die!=0){lives--;die=0;}
    fill(255,200,225);
    textSize(40);
    text("lives remain : "+lives,10,35);
    //end the game
    if(lives==0){
    System.out.println("Game over!");
    exit();
    }
  }

}
