//
//  ViewController.m
//  LFCalendar
//
//  Created by 路飞 on 2017/5/9.
//  Copyright © 2017年 路飞. All rights reserved.
//

#import "ViewController.h"
#import "EditViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)editDidClick:(id)sender {
    
    EditViewController *editVc = [EditViewController new];
    [self presentViewController:editVc animated:YES completion:nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
