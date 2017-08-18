//
//  ViewController.h
//  cek
//
//  Created by Mike Prisciano on 18/08/17.
//  Copyright © 2017 Mike Prisciano. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *ParLabel;
@property (weak, nonatomic) IBOutlet UILabel *InfoLabel;
@property (weak, nonatomic) IBOutlet UILabel *IsLabel;
@property (weak, nonatomic) IBOutlet UILabel *CheckLabel;
- (IBAction)CheckButton:(id)sender;


@end

