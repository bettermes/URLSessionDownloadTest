//
//  ViewController.m
//  URLSessionDownloadTest
//
//  Created by len on 16/10/13.
//  Copyright (c) 2016年 len. All rights reserved.
//

#import "ViewController.h"
#import "DownloadManager.h"
#import "DownLoadModel.h"
#import "MQLResumeManager.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)downloadTest{
    //建立 对象
    DownloadManager * manager = [DownloadManager defaultDBManager];
    
    //下载的对象
    /*
     当然呢 如果引入新的model 则继承downloadModel即可
     */
    DownLoadModel * model = [[DownLoadModel alloc]init];
    
    //下载
    [manager downloadWithModel:model];
    
    //得到下载的列表
    
    for (MQLResumeManager  * resume in manager.resumeTasksArray) {
        //得到之前下载的对象
        DownLoadModel * downloadModel = resume.downloadModel;
        
        //这个时候什么都有了～
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
