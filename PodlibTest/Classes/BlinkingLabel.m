//
//  BlinkingLabel.m
//  PodlibTest
//
//  Created by dengweidong on 2021/9/17.
//

#import "BlinkingLabel.h"

@implementation BlinkingLabel

- (void)startBlinking {
    [UIView animateWithDuration:0.25 delay:0 options:UIViewAnimationOptionRepeat | UIViewAnimationOptionAutoreverse animations:^{
        self.alpha = 0;
    } completion:^(BOOL finished) {
        NSLog(@"success");
    }];
}

- (void)stopBlinking {
    self.alpha = 1;
    [self.layer removeAllAnimations];
}

@end
