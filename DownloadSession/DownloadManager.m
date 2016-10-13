//
//  DownloadManager.m
//  URLSessionTest
//
//  Created by len on 16/10/12.
//  Copyright © 2016年 MQL. All rights reserved.
//

#import "DownloadManager.h"

@interface DownloadManager ()
@end
@implementation DownloadManager

//单例操作
static DownloadManager * _sharedDBManager;
+(DownloadManager *)defaultDBManager{
    if(!_sharedDBManager){
        _sharedDBManager = [[DownloadManager alloc]init];
        //数组初始化
        _sharedDBManager.resumeTasksArray = [NSMutableArray array];
    }
    return _sharedDBManager;
}

/**
 *  download
 *
 *  @param model downloadModel
 */
-(void)downloadWithModel:(DownLoadModel *)model{
    
     MQLResumeManager * resumeManager = [[MQLResumeManager alloc]initWithModel:model];
    //加入队列中
    [_sharedDBManager.resumeTasksArray addObject:resumeManager];
    
    [resumeManager resumeManagerWithURL:[NSURL URLWithString:model.url] targetPath:model.targetPath success:^{
        //success
        model.isSuccess = @1;
        
    } failure:^(NSError *error) {
        //fail
        model.isSuccess = @0;
    } progress:^(long long totalReceivedContentLength, long long totalContentLength) {
        
        //downloading
        model.totalContentLength = totalContentLength;
        model.totalReceivedContentLength =totalReceivedContentLength;
        
    }];

}

@end
