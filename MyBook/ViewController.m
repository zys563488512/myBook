//
//  ViewController.m
//  MyBook
//
//  Created by 张永盛 on 15/8/21.
//  Copyright (c) 2015年 zhangyongsheng. All rights reserved.
//

#import "ViewController.h"
#import "BookListCell.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic,strong) UITableView * tableView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _tableView                  = [[UITableView alloc] init];
    _tableView.frame            = CGRectMake(0, 44,kScreenWidth,kScreenHeight);
    _tableView.delegate         = self;
    _tableView.dataSource       = self;
    _tableView.backgroundColor  = [UIColor colorWithRed:255.0F green:200.0F blue:255.0F alpha:0];
    [self.tableView registerNib:[UINib nibWithNibName:@"BookListCell" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:@"BookListCell"];
    [self.view                  addSubview:_tableView];

}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 2;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    BookListCell * cell = [_tableView dequeueReusableCellWithIdentifier:@"BookListCell" forIndexPath:indexPath];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100.0f;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
