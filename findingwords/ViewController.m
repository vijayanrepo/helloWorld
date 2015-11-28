//
//  ViewController.m
//  findingwords
//
//  Created by DeemsysInc on 11/27/15.
//  Copyright (c) 2015 Deemsysinc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize genieView;
@synthesize flowerView;
@synthesize isShow;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.isShow = YES;
    UIImage *screenshot = [self screenshotForViewController];
    [self.genieView setDelegate:self];
    self.genieView.renderImage = screenshot;
    [self.genieView setRenderFrame:self.flowerView.frame andTargetFrame:self.get.frame];
    
}
- (UIImage *)screenshotForViewController
{
    UIGraphicsBeginImageContextWithOptions(self.flowerView.bounds.size, YES, [[UIScreen mainScreen] scale]);
    [self.flowerView.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    return image;
}

- (void)geineAnimationDone
{
    if (self.isShow)
        self.flowerView.hidden = NO;
}



-(IBAction)getBtn:(id)sender
{
    
    self.isShow = !self.isShow;
    if (!self.isShow)
        self.flowerView.hidden = YES;
    [self.genieView genieAnimationShow:self.isShow withDuration:1];
    
    
 arr=[[NSMutableArray alloc] init];
    a=0;
    b=0;
    c=0;
    
    NSCharacterSet * set1 = [NSCharacterSet letterCharacterSet];
    NSCharacterSet * set2 = [NSCharacterSet decimalDigitCharacterSet];
    NSCharacterSet * set3 = [NSCharacterSet symbolCharacterSet];
    if([self.txt.text length]>0){
        
        for (int i = 0; i < [self.txt.text length]; i++) {
            NSString *ch = [self.txt.text substringWithRange:NSMakeRange(i, 1)];
            [arr addObject:ch];
        }
        
    
        NSLog(@"arr=%@",arr);
        NSLog(@"arr count=%d",[arr count]);

    for (int i=0; i<[arr count]; i++) {
        
       
        
        if ([arr[i] rangeOfCharacterFromSet:set1].location != NSNotFound) {
            a++;
            
        }
        else if ([arr[i] rangeOfCharacterFromSet:set2].location != NSNotFound) {
            b++;
            
        }
        else  {
            c++;
            
        }
    }
        
      
        
  }
    
    self.alpha.text=[NSString stringWithFormat:@"%d",a];
    self.num.text=[NSString stringWithFormat:@"%d",b];
    self.spl.text=[NSString stringWithFormat:@"%d",c];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}
@end
