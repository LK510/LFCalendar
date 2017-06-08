//
//  BaseDataInfo.h
//  yinji
//
//  Created by 印记 on 16/7/27.
//  Copyright © 2016年 印记. All rights reserved.
//

#ifndef BaseDataInfo_h
#define BaseDataInfo_h

/**
 *  基础数据信息
 */

@interface BaseDataInfo : NSObject

@property (nonatomic, copy) NSString *dataId;              //数据id
@property (nonatomic, copy) NSString *dataTitle;           //标题
@property (nonatomic, copy) NSString *describe;            //描述
@property (nonatomic, copy) NSString *textContent;         //正文
@property (nonatomic, copy) NSString *dataCategory;        //分类
@property (nonatomic, copy) NSString *shareUrl;            //分享url
@property (nonatomic, copy) NSString *shareType;           //分享类型
@property (nonatomic, assign) long long createTime;        //创建时间

@property (nonatomic, assign) long long editTime;     //编辑时间

@property (nonatomic, strong) NSMutableArray *dataTagList;
@property (nonatomic, strong) NSMutableArray *fromList;
@property (nonatomic, strong) NSMutableArray *toList;

@property (nonatomic, strong) NSMutableArray *fileList;

@property (nonatomic, assign) BOOL changed;

-(instancetype) init;
-(instancetype) init:(BaseDataInfo*) baseDataInfo;

@end

#endif /* BaseDataInfo_h */
