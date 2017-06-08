//
//  BaseDataInfo.m
//  yinji
//
//  Created by 印记 on 16/7/27.
//  Copyright © 2016年 印记. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "BaseDataInfo.h"

@implementation BaseDataInfo
 
-(instancetype) init{
    BaseDataInfo* bdi = [super init];
    if (bdi) {
        
        //to do for init
        _dataId = [[NSString alloc] init];
        _dataCategory = [[NSString alloc] init];
        _dataTitle = [[NSString alloc] init];
        _describe = [[NSString alloc] init];
        _shareUrl = [[NSString alloc] init];
        _textContent = [[NSString alloc] init];
        _shareType = [[NSString alloc] init];
        
        _createTime = 0;
        _editTime = 0;
        
        _dataTagList = [[NSMutableArray alloc] init];
        _fromList = [[NSMutableArray alloc] init];
        _toList = [[NSMutableArray alloc] init];
        _fileList = [[NSMutableArray alloc] init];

    }
    
    return bdi;
}

-(instancetype) init:(BaseDataInfo*) baseDataInfo{
    BaseDataInfo* bdi = [super init];
    if (bdi) {
        
        //to do for init
        _dataId = baseDataInfo.dataId;
        _dataCategory = baseDataInfo.dataCategory;
        _dataTitle = baseDataInfo.dataTitle;
        _describe = baseDataInfo.describe;
        _shareUrl = baseDataInfo.shareUrl;
        _textContent = baseDataInfo.textContent;
        _shareType = baseDataInfo.shareType;
        
        _createTime = baseDataInfo.createTime;
        _editTime = baseDataInfo.editTime;
        
        _dataTagList = baseDataInfo.dataTagList;
        _fromList = baseDataInfo.fromList;
        _toList = baseDataInfo.toList;
        _fileList = baseDataInfo.fileList;
        
    }
    
    return bdi;
}

@end
