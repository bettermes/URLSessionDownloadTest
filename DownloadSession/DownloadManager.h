//
//  DownloadManager.h
//  URLSessionTest
//
//  Created by len on 16/10/12.
//  Copyright © 2016年 MQL. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MQLResumeManager.h"
#import "DownLoadModel.h"

@interface DownloadManager : NSObject
//quen
@property(nonatomic ,strong)NSMutableArray * resumeTasksArray;
/**
 *  single
 *
 *  @return DownloadManager
 */
+(DownloadManager *)defaultDBManager;

/**
 *  download
 *
 *  @param model download
 */
-(void)downloadWithModel:(DownLoadModel *)model;
@end
