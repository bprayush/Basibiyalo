import processing.video.*;

int maxMovies = 10;
int myMoviesIndex = 0;
int check;

Movie[] myMovies;

boolean sketchFullScreen(){
  return true;
}

void setup(){
  size(displayWidth, displayHeight, P2D);
    frameRate(25);
    myMovies = new Movie[maxMovies];
      for ( int i = 0; i < maxMovies; i++ )
      {
      
        myMovies[i] = new Movie(this, i+1+".mp4");
     //   myMovies[i].loop();
        myMovies[i].pause();
        
      }
      
}


void draw()
{

  
  image(myMovies[myMoviesIndex],0,0,displayWidth ,displayHeight);
   println( (int) myMovies[myMoviesIndex].time());
   println( (int) myMovies[myMoviesIndex].duration());
  float movie_time = myMovies[myMoviesIndex].time();
  float movie_duration = myMovies[myMoviesIndex].duration();
    
  
    if ( (int) movie_time == (int) movie_duration )
      {
      
       check = 0; 
         myMovies[myMoviesIndex].pause();
        // myMoviesIndex = 0;
         myMovies[myMoviesIndex].jump(0);
         myMovies[myMoviesIndex].play();
         
      }
      
      myMovies[myMoviesIndex].play();
      
   if ( keyPressed )
  {
   
    //reset key
    if ( key == 'a' && check == 0 )
    {
       check = 0; 
    
        
    }
    
    
    //clip-5: Mangal maya suwal
    if ( key == 'w' && check == 0 )
    {
       check = 0; 
         myMovies[myMoviesIndex].pause();
         myMovies[myMoviesIndex].jump(0);
         myMoviesIndex=5;
       

    }
    
    //clip-6: newar
    if ( key == 's' && check == 0 )
    {
       check = 0; 
       myMovies[myMoviesIndex].pause();
         myMovies[myMoviesIndex].jump(0);
         myMoviesIndex=6;
        
    }
    
    //clip-7: Pratap
    if ( key == 'd' && check == 0 )
    {
       check = 0; 
       myMovies[myMoviesIndex].pause();
         myMovies[myMoviesIndex].jump(0);
         myMoviesIndex=7;
     
    }
    
    
        //clip-8: Rajkumar phaiju
    if ( key == 'f' && check == 0 )
    {
       check = 0; 
        myMovies[myMoviesIndex].pause();
         myMovies[myMoviesIndex].jump(0);
         myMoviesIndex=8;
         
    }
        
        
            //clip-9: Rampiyari Basukala
    if ( key == 'g' && check == 0 )
    {
       check = 0; 
         myMovies[myMoviesIndex].pause();
         myMovies[myMoviesIndex].jump(0);
         myMoviesIndex=9;
        
    }
    
    
        //clip-10: Sapana Basukala
    if ( key == ' ' )
    {
       check = 0;
          myMovies[myMoviesIndex].pause();
         myMovies[myMoviesIndex].jump(0);
         myMoviesIndex=0;
       
    }
    
    
    
    
  }

}



void keyPressed() {
  
  //clip-1: Hari shankar
  if (key == CODED) {
    if (keyCode == UP && check == 0) {
      check = 0;
     myMovies[myMoviesIndex].pause();
         myMovies[myMoviesIndex].jump(0);
      myMoviesIndex = 1;
    
      
    } 
    
    //clip-2: Krishna Bayanju
    if (keyCode == DOWN && check == 0){
      check = 0;
      myMovies[myMoviesIndex].pause();
         myMovies[myMoviesIndex].jump(0);
      myMoviesIndex = 4;
     
    }
    
    //clip-3: Krishna Bhakta
    if (keyCode == LEFT && check == 0){
      check = 0;
      myMovies[myMoviesIndex].pause();
         myMovies[myMoviesIndex].jump(0);
      myMoviesIndex = 8;
     
    }
    
    //clip-4: Kumar Baniju
    if (keyCode == RIGHT && check == 0){
      check = 0;
     myMovies[myMoviesIndex].pause();
         myMovies[myMoviesIndex].jump(0);
      myMoviesIndex = 9;
    
    }
    

 }
}



void movieEvent(Movie myMovies){
  myMovies.read();
}
