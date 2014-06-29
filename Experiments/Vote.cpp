//======================================
//Things might look a little stupid in
//this code. I haven't been programming
//in C++ for almost a year... Sorry for
//those kinda things.
//======================================

#include <iostream>
#include <climits>
#include <cstdlib>

using namespace std;

//==============================
//Global variable seemed to be a
//great plan for this code. Hope
//you don't mind.
//==============================
int result[4][5];
char head[4] = {'A','B','C','D'};
int vote[4] = {0};
int toatalVote = 0;
bool isRunOff = true;
int first, second;
int fstVote, sndVote;

//==============================
//read data form console. File 
//system could be a useful thing
//here.
//==============================

void readResult(){
   cout<<"Candidate-> ";
   for(int i=0; i<4;i++)
      cout<<head[i]<<"\t";
   cout<<endl;
   //====================
   for(int i=0; i<5;i++){
      cout<<endl<<(i+1)<<"\t   ";
      for(int j=0; j<4;j++){
         cin>>result[i][j];
         //result[i][j] = 99 + rand() % 900;
         vote[j] += result[i][j];
         toatalVote += result[i][j];
      }
   }
   cout<<endl;
}


//==============================
//Guess we are still gonna stick
//with the console for output.
//==============================
void showResult(){

   //simply outputs the list
   //==============================

   cout<<endl<<"============================================"<<endl;
   cout<<"Candidate->\t";
   for(int i=0; i<4;i++)
      cout<<head[i]<<"\t";
   cout<<endl<<"____________________________________________";

   for(int i=0; i<5;i++){
      cout<<endl<<(i+1)<<"\t\t";
      for(int j=0; j<4;j++){
         cout<<result[i][j]<<"\t";
      }
   }

   cout<<endl<<"============================================"<<endl;

   //Output the number of votes for
   //each candidates
   //==============================
   for(int i=0; i<4;i++){
      cout<<head[i]<<" - "<<vote[i]<<endl<<endl;
   } 
   cout<<"Total Vote : "<<toatalVote<<endl;
   
   cout<<endl<<"============================================"<<endl;
   //Find the winner
   //==============================
   for(int i=0; i<4; i++){
      if(vote[i] >= (toatalVote/2)){
         isRunOff = false;
         cout<<"The winner is : "<<head[i];
      }
   }

   //if there is no winner check
   //for run-off candidates.
   //==============================
   if(isRunOff){
      fstVote = INT_MIN;

      for(int i=0; i<4; i++){
         if(vote[i]>fstVote){
            first = i;
            fstVote = vote[i];
         }
      }

      sndVote = INT_MIN;

      for(int i=0; i<4; i++){
         if(i!=first && vote[i]>sndVote){
            second = i;
            sndVote = vote[i];
         }
      }

      cout<<"There is a run-off between \""<<head[first]<<"\" and \""<<head[second]<<"\""<<endl;

   }

}

int main(){
   readResult();
   showResult();
   return 0;
}
