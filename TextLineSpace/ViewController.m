//
//  ViewController.m
//  TextLineSpace
//
//  Created by Hosel on 2017/8/17.
//  Copyright © 2017年 Hosel. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+ZM.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *textLbl = [[UILabel alloc]initWithFrame:CGRectMake(20, 40, 300, 0)];
    textLbl.backgroundColor = [UIColor blackColor];
    textLbl.textColor = [UIColor whiteColor];
    textLbl.numberOfLines = 0;
    textLbl.font = [UIFont systemFontOfSize:14.0];
    [self.view addSubview:textLbl];
    
    NSString *string = @"中国七大河之一，黑龙江在中国境内的最大支流。松花江在隋代称难河，唐代称那水，辽金两代称鸭子河、混同江，清代称混同江、松花江。松花江流经吉林、黑龙江两省；流域面积55.72万平方公里，涵盖东北四省区黑龙江、吉林、辽宁、内蒙古；年径流量762亿立方米。";
    textLbl.attributedText = [string getAttributedWithString:string WithLineSpace:1.2 kern:2 font:[UIFont systemFontOfSize:14.0]];
    CGSize lblSize = [string getAttributionHeightWithString:string lineSpace:1.2 kern:2 font:[UIFont systemFontOfSize:14.0] width:300];
    textLbl.frame = CGRectMake(20, 40, 300, lblSize.height);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
