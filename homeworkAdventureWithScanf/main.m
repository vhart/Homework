//
//  main.m
//  homeworkAdventureWithScanf
//
//  Created by Varindra Hart on 6/10/15.
//  Copyright (c) 2015 Varindra Hart. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        char user[100];
        printf("Ok lets begin. Please enter your name to play this simulator: ");
        scanf("%99[^\n]%*c",user);
        
        printf("%s, ever wanted to be Harry Potter? \n\nWell want no more!\n",user);
        int i;
        int j;
        //int k;
        printf("\nHarry! You need to decide, would you like a dragon or an owl? Enter 1 for dragon and 0 for owl: ");
        scanf("%d",&i);
        if (i!=0){
            printf("The dragon works for Voldermort (obviously!). Long story short, you're more of a Nevil Longbottom, let's be honest");
            return 0;
        }
        else{
            printf("\nGood choice Harry. But this is only the beginning..by the way, your lightning bolt is showing\n");
        }
        
        printf("\nThe door to Gryphndor common room has disappeared! It's either on the left or the right. Which do you choose? O for left, 1 for right: \n");
        scanf("%d",&i);
        if (i!=1){
            printf("\nYou've chosen the girls bathroom!..The bathroom works for Voldermort. Tough luck buddy");
            return 0;
        }
        printf("\nGood choice but the door has led you to Slytherin's common room and Draco challenges you! He's been going off on 'mudblood this, mudblood's that'\nWhat a tool right?\nAnyways, you've got to defend yourself, choose a spell! 1 for Avada Kadavra 0 for Wingardium leviosa: ");
        scanf("%d", &i);
        if( i!=0){
            printf("\n\nDude..that's brutal, and brutal works for Voldermot..adios");
            return 0;
        }
        BOOL fight;
        printf("\nIts leviOosaah Harry! (check this link out for reference, it's hilarious: www.youtube.com/watch?v=FWtO0cfgewY)\n");
        printf("\nHarry! Voldermort has challenged you himself, looks like this is the end...UNLESS! Harry you must fight!\nEnter 0 to run away, or 1 to fight!(this is your destiny, but hey no pressure)\n");
        fight = scanf("%d%*c",&j);
        if(!fight){
            return 0;
        }
        else{
            int VoldHealth = 100;
            int yourHealth = 100;
            //char attack1[7]= "stupefy";
            //char attack2[8]= "patronus";
            //char attack3[12] = "expelliarmus";
            int bam;
            
            while (VoldHealth>0 && yourHealth>0){
                printf("\nPick an attack! Enter either 1 2 or 3: ");
                scanf("%d%*c",&bam);
                switch (bam) {
                    case 1:
                         printf("\nSTUPEFY!\nVoldemort hit you with Everte Statum! You went flying backwards\n");
                        break;
                    case 2:
                        printf("\nPATRONUS!\nVoldemort hit you with Stupefy\n");
                        break;
                    case 3:
                        printf("\nEXPELLIARMUS!\nVoldemort hit you with Incendio, ouch\n");
                        break;
                    default:
                        return 0;
                        break;
                }
                VoldHealth = VoldHealth - arc4random()%10*4;
                yourHealth = yourHealth - arc4random()%10*3;
                if(VoldHealth >0 && yourHealth>0){
                    printf("\nVoldemort has %d hp left, You have %d\n",VoldHealth,yourHealth);
                }
                if(yourHealth<=0){
                    printf("\nAvada Kedavra! You've been killed\n");
                    return 0;
                }
                if(VoldHealth <=0){
                    printf("\nIt's over! \nYou have defeated the dark lord!!\n");
                    return 0;
                }
                
            }
            
            
            
        }
    }
    return 0;
}
