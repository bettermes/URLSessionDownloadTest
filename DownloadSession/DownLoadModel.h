//
//  DownLoadModel.h
//  URLSessionTest
//
//  Created by len on 16/10/12.
//  Copyright © 2016年 MQL. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DownLoadModel : NSObject


@property (nonatomic ,strong) NSNumber * isSuccess;
@property (nonatomic, copy) NSString *url;           //文件资源地址
@property (nonatomic, strong) NSString *targetPath; //文件存放路径
@property long long totalContentLength;             //文件总大小
@property long long totalReceivedContentLength;     //已下载大小
@property (nonatomic ,strong) NSError * failErrorInfo;
@end
