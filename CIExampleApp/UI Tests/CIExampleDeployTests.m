//
//  CIExampleDeployTests.m
//  CIExampleApp
//
//  Created by Kiel Oleson on 02/10/2013.
//  Copyright (c) 2013 Kiel Oleson. All rights reserved.
//

#import "CIExampleDeployTests.h"

@implementation CIExampleDeployTests

- (void)testInitialState
{
    [tester waitForViewWithAccessibilityLabel:@"Happy Fun Switch" value:@"1" traits:0];
    [tester waitForViewWithAccessibilityLabel:@"Current Deployment Status" value:@"Nothing has happened yet." traits:UIAccessibilityTraitNone];
    [tester tapViewWithAccessibilityLabel:@"Deploy"];
    [tester waitForViewWithAccessibilityLabel:@"Current Deployment Status" value:@"HAPPY FUN MODE DEPLOYED" traits:UIAccessibilityTraitNone];
    [tester setOn:NO forSwitchWithAccessibilityLabel:@"Happy Fun Switch"];
    [tester waitForViewWithAccessibilityLabel:@"Happy Fun Switch" value:@"0" traits:0];
    [tester tapViewWithAccessibilityLabel:@"Deploy"];
    [tester waitForViewWithAccessibilityLabel:@"Current Deployment Status" value:@"Deployed in normal mode." traits:UIAccessibilityTraitNone];
}

@end
