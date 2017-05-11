//
//  ViewController.m
//  国际化
//
//  Created by qilu on 2017/5/11.
//  Copyright © 2017年 qilu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIButton *button;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    NSString *text =  NSLocalizedString(@"text", nil);
//    NSString *question =  NSLocalizedString(@"question", nil);
    
//    NSString *text = NSLocalizedStringFromTable(@"text1", @"test", nil);
//    NSString *question = NSLocalizedStringFromTable(@"question1", @"test", nil);
    
    NSString *text = [[NSBundle mainBundle] localizedStringForKey:@"text1" value:nil table:@"test"];
    NSString *question = [[NSBundle mainBundle] localizedStringForKey:@"question1" value:nil table:@"test"];
    
    NSString *imageName = NSLocalizedString(@"pic", nil);
//    NSString *imageName = NSLocalizedStringFromTable(@"", @"", @"");
    
    self.label.text = text;
    [self.button setTitle:question forState:UIControlStateNormal];
    self.imageView.image = [UIImage imageNamed:imageName];
    
    NSArray *lans = [[NSUserDefaults standardUserDefaults] valueForKey:@"AppleLanguages"];
    NSLog(@"当前语言 : %@", lans.firstObject);
    
};


@end
