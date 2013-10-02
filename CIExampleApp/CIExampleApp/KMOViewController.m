//
//  KMOViewController.m
//  CIExampleApp
//
//  Created by Kiel Oleson on 9/29/13.
//  Copyright (c) 2013 Kiel Oleson. All rights reserved.
//

#import "KMOViewController.h"

@interface KMOViewController ()
@property (strong, nonatomic) IBOutlet UISwitch *happyFunSwitch;
@property (strong, nonatomic) IBOutlet UILabel *currentStatusLabel;

@end

@implementation KMOViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.currentStatusLabel.text = @"Nothing has happened yet.";
    self.currentStatusLabel.accessibilityValue = self.currentStatusLabel.text;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)deployTapped:(id)sender
{
    if (self.happyFunSwitch.on) {
        self.currentStatusLabel.attributedText = [[NSAttributedString alloc] initWithString:@"HAPPY FUN MODE DEPLOYED" attributes:@{ NSFontAttributeName: [UIFont fontWithName:@"Chalkboard SE" size:self.currentStatusLabel.font.pointSize] }];
    }
    else {
        self.currentStatusLabel.font = [UIFont systemFontOfSize:17.0];
        self.currentStatusLabel.text = @"Deployed in normal mode.";
    }
}

@end
