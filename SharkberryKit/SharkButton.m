//
//  SharkButton.m
//  SharkberryKit
//
//  Created by Gabriela Bezerra on 21/07/21.
//

#import "SharkButton.h"

@implementation SharkButton

- (instancetype)init{
    self = [super init];
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];

    self.layer.cornerRadius = self.frame.size.height/2;
    self.layer.borderWidth = 3;
    self.layer.borderColor = UIColor.systemPurpleColor.CGColor;
    self.layer.backgroundColor = [UIColor.systemPurpleColor colorWithAlphaComponent:0.5].CGColor;
    [self setTitleColor: UIColor.whiteColor forState: UIControlStateNormal];
    [self setTitleColor: UIColor.systemPurpleColor forState: UIControlStateHighlighted];
    [self.titleLabel setFont: [UIFont systemFontOfSize: [UIFont buttonFontSize]]];
}

@end
