//
//  ViewController.m
//  SharkberryKitExample
//
//  Created by Gabriela Bezerra on 22/07/21.
//

#import "ViewController.h"

@interface ViewController ()
    //private properties
@end

@implementation ViewController

//MARK: - Properties
//Lazy getter to initialize button property
- (SharkButton *)button {
    if(!_button) {
        SharkButton * button = [[SharkButton alloc] initWithFrame: CGRectZero];
        [button setTitle: @"Hello Shark" forState: UIControlStateNormal];
        [button
         addTarget:
         self
         action: @selector(sharkAction:)
         forControlEvents: UIControlEventTouchUpInside
         ];
        _button = button;
    }
    return _button;
}

//MARK: - Actions
- (void)sharkAction:(SharkButton*)sender {
    NSLog(@"Action for shark button with title \"%@\" 🦈🍒", sender.currentTitle);
}

//MARK: - Life Cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupLayout];
}

- (void) setupLayout {
    [self.view addSubview: self.button];

    for (int i = 0; i < self.view.subviews.count; i++)
        self.view.subviews[i].translatesAutoresizingMaskIntoConstraints = false;

    NSArray * buttonConstraints = @[
        [self.button.centerXAnchor constraintEqualToAnchor: self.view.centerXAnchor],
        [self.button.centerYAnchor constraintEqualToAnchor: self.view.centerYAnchor],
        [self.button.widthAnchor constraintEqualToConstant: 120],
        [self.button.heightAnchor constraintEqualToConstant: 50],
    ];

    [NSLayoutConstraint activateConstraints: buttonConstraints];
}

@end
