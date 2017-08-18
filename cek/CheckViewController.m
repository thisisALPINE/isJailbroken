//
//  CheckViewController.m
//  checkJail
//
//  Created by Mike Prisciano on 17/08/17.
//  Copyright © 2017 Mike Prisciano. All rights reserved.
//

#import "CheckViewController.h"
#include <sys/stat.h>
#import <UIKit/UIKit.h>

BOOL isMyDeviceJailbroken()

{
    
    BOOL isDirectory;
    
    if ([[NSFileManager defaultManager] fileExistsAtPath:[NSString stringWithFormat:@"Applications/Cydia.app"]]
        || [[NSFileManager defaultManager] fileExistsAtPath:[NSString stringWithFormat:@"Applications//Library/MobileSubstrate/MobileSubstrate.dylib"]]
    || [[NSFileManager defaultManager] fileExistsAtPath:[NSString stringWithFormat:@"/private/var/lib/cydia"] isDirectory:&isDirectory]
        || [[NSFileManager defaultManager] fileExistsAtPath:[NSString stringWithFormat:@"/Library/MobileSubstrate"] isDirectory:&isDirectory]
    || [[NSFileManager defaultManager] fileExistsAtPath:[NSString stringWithFormat:@"Applications/Cyia.app"]]
    || [[NSFileManager defaultManager] fileExistsAtPath:[NSString stringWithFormat:@"Applications/Cyia.app"]]
    || [[NSFileManager defaultManager] fileExistsAtPath:[NSString stringWithFormat:@"Applications/Cyia.app"]])
    
    {
        
        return YES;
        
    }
    
    int pid = fork(); //check sandbox integrity
    
    if(!pid){
        exit(0);
    }
    
    if(pid>=0)
        
    {
        return YES;
    }

    return NO;
}

float firmwareVersion()
{
    return [[[[UIDevice currentDevice] systemVersion] substringToIndex:3] floatValue];
}
