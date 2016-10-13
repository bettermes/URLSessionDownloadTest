# URLSessionDownloadTest
URLSessionDownloadTest是将model,Session,quen,GCD相结合的iOS断点续传demo，希望可以帮的可爱的你们～
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
