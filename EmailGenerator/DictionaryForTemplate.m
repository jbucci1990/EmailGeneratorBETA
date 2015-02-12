//
//  DictionaryForTemplate.m
//  EmailGenerator
//
//  Created by JJ Bucci on 2/6/15.
//  Copyright (c) 2015 JJ Bucci. All rights reserved.
//

#import "DictionaryForTemplate.h"
#import "AppDelegate.h"

@implementation DictionaryForTemplate

-(NSString*) makeEmail:(NSDictionary*)infoDict
{
    
    NSString *emailText = [self.templateText copy];
    
//    NSString *newText = nil;
//    
//    
//    newText = [infoDict objectForKey:@"playtype"];
//    if (newText != nil)
//    {
        emailText = [emailText stringByReplacingOccurrencesOfString:@"$PLAYTYPE" withString:[infoDict objectForKey:@"playtype" ]];
//    }
 
    emailText = [emailText stringByReplacingOccurrencesOfString:@"$CHALLENGETYPE" withString:[infoDict objectForKey:@"challengetype" ]];

    
    
   emailText = [emailText stringByReplacingOccurrencesOfString:@"$GAME" withString:[infoDict objectForKey:@"game" ]];
    
    emailText = [emailText stringByReplacingOccurrencesOfString:@"$INNING" withString:[infoDict objectForKey:@"inning" ]];
    

    emailText = [emailText stringByReplacingOccurrencesOfString:@"$OUTSBEFORE" withString:[infoDict objectForKey:@"outsbefore" ]];
    
    emailText = [emailText stringByReplacingOccurrencesOfString:@"$RUNNERSBEFORE" withString:[infoDict objectForKey:@"runnersbefore" ]];
    
    emailText = [emailText stringByReplacingOccurrencesOfString:@"$OFFENSETEAM" withString:[infoDict objectForKey:@"offenseteam" ]];

    emailText = [emailText stringByReplacingOccurrencesOfString:@"$OFFENSIVEPLAYER" withString:[infoDict objectForKey:@"offensiveplayer" ]];
    
    emailText = [emailText stringByReplacingOccurrencesOfString:@"$OFFENSEDOESWHAT" withString:[infoDict objectForKey:@"offensedoeswhat" ]];
    
    emailText = [emailText stringByReplacingOccurrencesOfString:@"$2OFFENSIVEPLAYER" withString:[infoDict objectForKey:@"offensiveplayer2" ]];
    emailText = [emailText stringByReplacingOccurrencesOfString:@"$2OFFENSEDOESWHAT" withString:[infoDict objectForKey:@"offensedoeswhat2" ]];



    

    emailText = [emailText stringByReplacingOccurrencesOfString:@"$DEFENSETEAM" withString:[infoDict objectForKey:@"defenseteam" ]];

    emailText = [emailText stringByReplacingOccurrencesOfString:@"$DEFENSIVEPLAYER" withString:[infoDict objectForKey:@"defensiveplayer" ]];

    emailText = [emailText stringByReplacingOccurrencesOfString:@"$DEFENSEDOESWHAT" withString:[infoDict objectForKey:@"defensedoeswhat" ]];

    emailText = [emailText stringByReplacingOccurrencesOfString:@"$2DEFENSIVEPLAYER" withString:[infoDict objectForKey:@"defensiveplayer2" ]];

    emailText = [emailText stringByReplacingOccurrencesOfString:@"$DEFENSEDOESWHAT2" withString:[infoDict objectForKey:@"defensedoeswhat2" ]];

    emailText = [emailText stringByReplacingOccurrencesOfString:@"$WHOCHALLENGED" withString:[infoDict objectForKey:@"whochallenged" ]];
    emailText = [emailText stringByReplacingOccurrencesOfString:@"$CALLONFIELD" withString:[infoDict objectForKey:@"callonfield" ]];

    
    emailText = [emailText stringByReplacingOccurrencesOfString:@"$PLAYLOCATION" withString:[infoDict objectForKey:@"playlocation" ]];

    
    emailText = [emailText stringByReplacingOccurrencesOfString:@"$CALLAFTER" withString:[infoDict objectForKey:@"callafter" ]];

    emailText = [emailText stringByReplacingOccurrencesOfString:@"$OUTCOME" withString:[infoDict objectForKey:@"outcome" ]];

    emailText = [emailText stringByReplacingOccurrencesOfString:@"$OUTSAFTER" withString:[infoDict objectForKey:@"outsafter" ]];
    
    emailText = [emailText stringByReplacingOccurrencesOfString:@"$RUNNERSAFTER" withString:[infoDict objectForKey:@"runnersafter" ]];
        
    


    
    


    return emailText;
}

@end
