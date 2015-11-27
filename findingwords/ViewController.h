//
//  ViewController.h
//  findingwords
//
//  Created by DeemsysInc on 11/27/15.
//  Copyright (c) 2015 Deemsysinc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AZGenieView.h"

@interface ViewController : UIViewController<AZGenieAnimationDelegate>

{

    NSMutableArray *arr;
    int a,b,c;

}
@property (weak, nonatomic) IBOutlet UITextField *txt;
@property (weak, nonatomic) IBOutlet UIButton *get;
@property (weak, nonatomic) IBOutlet UILabel *alpha;
@property (weak, nonatomic) IBOutlet UILabel *spl;
@property (weak, nonatomic) IBOutlet UILabel *num;


@property (assign, nonatomic) bool isShow;
@property (weak, nonatomic) IBOutlet UIView *flowerView;
@property (strong, nonatomic) IBOutlet AZGenieView *genieView;


@end

