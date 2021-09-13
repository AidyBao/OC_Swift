//
//  ViewController.h
//  OC_Swift
//
//  Created by SJXC on 2021/9/13.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (atomic, strong) NSString *password;
@property (atomic, assign) float height;

-(void)logMe:(NSString*)logMe logYou:(NSString*)logYou;
-(void) ocStaticFunc:(NSString*)log;

@end

