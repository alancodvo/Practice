//
//  ViewController.m
//  Practice
//
//  Created by alan-arakawa-yoshihiro on H27/01/20.
//  Copyright (c) 平成27年 Yoshihiro Arakawa. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *firstLabel;
- (IBAction)tapBtn:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.firstLabel.text = @"こんにちは"; // テキストをこんにちはに変更(self.オブジェクト.プロパティ=値)
    [self.firstLabel setText:@"hello"]; // テキストをhelloに変更([self.オブジェクト setプロパティ:値])
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)tapBtn:(id)sender {
    NSLog(@"タップしました。");
}
@end
