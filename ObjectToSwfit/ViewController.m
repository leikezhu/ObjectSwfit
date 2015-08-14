//
//  ViewController.m
//  ObjectToSwfit
//
//  Created by 雷科柱 on 15/8/11.
//  Copyright (c) 2015年 雷科柱. All rights reserved.
//

#import "ViewController.h"
#import "OCChannel.h"
#import "ObjectToSwfit-Bridging-Header.h"
#import "ObjectToSwfit-swift.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *pushBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    OCChannel * cchannel = [[OCChannel alloc] init];
    [cchannel ChannelChange:10];
    [cchannel ChannelChange:2];
    
    
}
- (IBAction)selectPress:(id)sender {
    SwiftObject *sobj = [[SwiftObject alloc] init];
    NSString *hello = [sobj sayHello:@"Good morning"withName:@"Tony"];
    NSLog(@"%@",hello);
    [sobj testToObject];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
