//
//  ViewController.m
//  CLDes3Encrypt
//
//  Created by 李辉 on 15/12/21.
//  Copyright © 2015年 李辉. All rights reserved.
//

#import "ViewController.h"
#import "CLDes3EncryptForWeb.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *beforeField;
@property (weak, nonatomic) IBOutlet UITextField *afterField;
@property (weak, nonatomic) IBOutlet UITextField *displayField;

- (IBAction)buttonAClick:(UIButton *)sender;
- (IBAction)buttonBClick:(UIButton *)sender;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 设置密钥
    NSString *key = @"I love you.";
    [CLDes3EncryptForWeb setSharedKey:key];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonAClick:(UIButton *)sender
{
    self.displayField.text = [CLDes3EncryptForWeb encryptString:self.beforeField.text];
}

- (IBAction)buttonBClick:(UIButton *)sender
{
    self.displayField.text = [CLDes3EncryptForWeb decryptString:self.afterField.text];
}

@end
