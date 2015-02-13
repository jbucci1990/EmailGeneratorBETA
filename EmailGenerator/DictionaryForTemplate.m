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
    
//    NSMutableDictionary *lookADict = [[NSMutableDictionary alloc]init];
//    NSDictionary *attributes = @{
//                                 NSForegroundColorAttributeName : [NSColor greenColor],
//                                 NSFontAttributeName : [NSFont fontWithName:@"HelveticaNeue-Bold" size:20.f]
//                                 };
//
//    
//    
//    [lookADict setObject:@"$PLAYTYPE" forKey:@"playtype"];
//    [lookADict setObject:@"$CHALLENGETYPE" forKey:@"challengetype"];
//    [lookADict setObject:@"$GAME" forKey:@"game"];
//    [lookADict setObject:@"$INNING" forKey:@"inning"];
//    [lookADict setObject:@"$OUTSBEFORE" forKey:@"outsbefore"];
//    [lookADict setObject:@"$RUNNERSBEFORE" forKey:@"runnersbefore"];
//    [lookADict setObject:@"$OFFENSETEAM" forKey:@"offenseteam"];
//    [lookADict setObject:@"$OFFENSIVEPLAYER" forKey:@"offensiveplayer"];
//    [lookADict setObject:@"$OFFENSEDOESWHAT" forKey:@"offensedoeswhat"];
//    [lookADict setObject:@"$2OFFENSIVEPLAYER" forKey:@"offensiveplayer2"];
//    [lookADict setObject:@"$2OFFENSEDOESWHAT" forKey:@"offensedoeswhat2"];
//    [lookADict setObject:@"$DEFENSETEAM" forKey:@"defenseteam"];
//    [lookADict setObject:@"$DEFENSIVEPLAYER" forKey:@"defensiveplayer"];
//    
//    [lookADict setObject:@"$DEFENSEDOESWHAT" forKey:@"defensedoeswhat"];
//    [lookADict setObject:@"$2DEFENSIVEPLAYER" forKey:@"defensiveplayer2"];
//    [lookADict setObject:@"$DEFENSEDOESWHAT2" forKey:@"defensedoeswhat2"];
//    [lookADict setObject:@"$WHOCHALLENGED" forKey:@"whochallenged"];
//    [lookADict setObject:@"$CALLONFIELD" forKey:@"callonfield"];
//    [lookADict setObject:@"$PLAYLOCATION" forKey:@"playlocation"];
//    [lookADict setObject:@"$CALLAFTER" forKey:@"callafter"];
//    [lookADict setObject:@"$OUTCOME" forKey:@"outcome"];
//    [lookADict setObject:@"$OUTSAFTER" forKey:@"outsafter"];
//    [lookADict setObject:@"$RUNNERSAFTER" forKey:@"runnersafter"];
//    
//    
//    for (id key in infoDict) {
//        id value = [lookADict objectForKey:key];
//        NSMutableAttributedString *colored = [[NSMutableAttributedString alloc] initWithString:value];
//        [colored setAttributes:attributes range:NSMakeRange(0, 5)];
//        emailText = colored;
//
//        
//        
//         
//         }


    

        emailText = [emailText stringByReplacingOccurrencesOfString:@"$PLAYTYPE" withString:[infoDict objectForKey:@"playtype" ]];
 
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
