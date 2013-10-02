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
    [tester waitForViewWithAccessibilityLabel:@"Current Deployment Status" value:@"Nothing has happened ASDFJKL yet." traits:UIAccessibilityTraitNone];
}

@end
