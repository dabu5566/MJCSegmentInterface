//
//  MJCDemoVC1.m
//  MJCSegmentInterface
//
//  Created by mjc on 17/7/2.
//  Copyright © 2017年 MJC. All rights reserved.
//

#import "MJCDemoVC0.h"
#import "MJCPrefixHeader.pch"


@interface MJCDemoVC0 ()<MJCSegmentDelegate>

@property (nonatomic,strong) NSArray *mainArr;

@end

@implementation MJCDemoVC0

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray *titlesArr = @[@"荣耀",@"联盟",@"DNF",@"CF",@"飞车",@"炫舞",@"天涯明月刀"];
    MJCTestViewController *vc1 = [[MJCTestViewController alloc]init];
    MJCTestTableViewController *vc2 = [[MJCTestTableViewController alloc]init];
    MJCTestCollectVC *vc4 = [[MJCTestCollectVC alloc]init];
    MJCTestViewController1 *vc3 = [[MJCTestViewController1 alloc]init];
    MJCTestViewController *vc5 = [[MJCTestViewController alloc]init];
    MJCTestViewController *vc6 = [[MJCTestViewController alloc]init];
    MJCTestViewController *vc7 = [[MJCTestViewController alloc]init];
    NSArray *vcarrr = @[vc1,vc2,vc4,vc3,vc5,vc6,vc7];
    for (int i = 0 ; i < vcarrr.count; i++) {//赋值标题
        UIViewController *vc = vcarrr[i];
        vc.title = titlesArr[i];
    }
    
    
    
    //以下是我的控件中的代码
    MJCSegmentInterface *lala = [[MJCSegmentInterface alloc]init];
    lala.titleBarStyles = MJCTitlesScrollStyle;
    lala.frame = CGRectMake(0,64,self.view.jc_width, self.view.jc_height-64);
    lala.delegate= self;
    lala.titlesViewBackColor = [UIColor redColor];
    lala.itemBackColor = [UIColor purpleColor];
    lala.itemTextSelectedColor = [UIColor whiteColor];
    lala.itemTextNormalColor = [UIColor redColor];
    lala.itemTextFontSize = 11;
    lala.defaultShowItemCount = 5;
    lala.isChildScollAnimal = YES;
    lala.childsContainerBackColor = [UIColor purpleColor];
    [self.view addSubview:lala];
    [lala intoTitlesArray:titlesArr hostController:self];
    [lala intoChildControllerArray:vcarrr];
    
}

-(void)dealloc
{
    NSLog(@"%@销毁",self);
}

@end
