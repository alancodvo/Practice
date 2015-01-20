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
@property (weak, nonatomic) IBOutlet UISwitch *mySwicth;
- (IBAction)changeSwicth:(id)sender;
@property (weak, nonatomic) IBOutlet UISlider *mySlider;
- (IBAction)changeSlider:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *myTextField;
- (IBAction)tapReturnKey:(id)sender;

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
- (IBAction)changeSwicth:(id)sender {
    if (self.mySwicth.on == YES) {
        NSLog(@"スイッチオン");
    } else {
        NSLog(@"スイッチオフ");
    }
}

- (IBAction)changeSlider:(id)sender {
    NSLog(@"値=%f", self.mySlider.value);
}
- (IBAction)tapReturnKey:(id)sender {
    NSString *str = self.myTextField.text;
    NSLog(@"text=%@", str);
}
@end
