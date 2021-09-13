//
//  ViewController.m
//  OC_Swift
//
//  Created by SJXC on 2021/9/13.
//

/**
 swift调用oc
 1. 在OC_Swift_Bridging_Header_h桥接文件中引入类的.h文件
 2. 将需要调用的方法放在.h文件中
 
 */

#import "ViewController.h"
#import "OC_Swift-Swift.h"

@interface ViewController ()

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    TestSwiftOne *one = [[TestSwiftOne alloc]init];
    one.name = @"TestSwiftOne";
    one.age = @"22";
    [one test];
}

- (void)logMe:(NSString *)logMe logYou:(NSString *)logYou {
    NSLog(@"%@--%@", logMe, logYou);
}

-(void)ocStaticFunc:(NSString *)log {
    NSLog(@"%@", log);
    
}

@end
