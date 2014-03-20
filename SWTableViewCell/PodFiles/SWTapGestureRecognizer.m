//
//  SWTapGestureRecognizer.m
//  SWTableViewCell
//
//  Created by Yuk Lai Suen on 3/19/14.
//  Copyright (c) 2014 Chris Wendel. All rights reserved.
//

#import "SWTapGestureRecognizer.h"

@implementation SWTapGestureRecognizer
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    if (self.state == UIGestureRecognizerStatePossible) {
        self.state = UIGestureRecognizerStateBegan;
    }
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    self.state = UIGestureRecognizerStateFailed;
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    if (self.state == UIGestureRecognizerStateBegan) {
        self.state = UIGestureRecognizerStateEnded;
    }
}
@end

