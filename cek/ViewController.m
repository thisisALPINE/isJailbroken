//
//  ViewController.m
//  cek
//
//  Created by Mike Prisciano on 18/08/17.
//  Copyright © 2017 Mike Prisciano. All rights reserved.
//

#import "ViewController.h"
#import "CheckViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _CheckLabel.layer.cornerRadius = 115;
    _InfoLabel.text = [NSString stringWithFormat:@"iOS version: %.1f", firmwareVersion()]; 
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)CheckButton:(id)sender {
    
    
    if (isMyDeviceJailbroken() == YES) {
        
        _CheckLabel.text = [NSString stringWithFormat:@"jailbroken!"];
        _CheckLabel.backgroundColor = [UIColor colorWithRed:1.00 green:0.00 blue:0.00 alpha:1.0];
        _CheckLabel.clipsToBounds = YES;
        
    }
    
    else if (isMyDeviceJailbroken() == NO) {
        
        _CheckLabel.text = [NSString stringWithFormat:@"not jailbroken!"];
        _CheckLabel.backgroundColor = [UIColor colorWithRed:0.00 green:1.00 blue:0.22 alpha:1.0];
        _CheckLabel.clipsToBounds = YES; 
        

        
    }
    
    
}
@end
