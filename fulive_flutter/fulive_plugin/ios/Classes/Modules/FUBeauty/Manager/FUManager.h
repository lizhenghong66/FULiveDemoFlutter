//
//  FUManager.h
//  FULiveDemo
//
//  Created by 刘洋 on 2017/8/18.
//  Copyright © 2017年 刘洋. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
//#import "FUSaveModelProtocol.h"

@class FULiveModel, FUBeautyModel, FUStyleModel;

/**
 * 暂时作为加载FURenderKit的入口和记录当前模块数据的作用
 */
@interface FUManager : NSObject
+ (FUManager *)shareManager;

//直接存模型
//+ (BOOL)saveToLocal:(id)model filePath:(NSString *)filePath;
//
////获取模型数据
//+ (FUMetalModel *)getLocalJsonDataWithFilePath:(NSString *)filePath;


@property (nonatomic, strong) FULiveModel *currentModel;
//初始化FURenderKit
- (void)setupRenderKit;

/**
 * 缓存的美颜参数:
 * 按照 美肤、美体、滤镜, 风格 顺序缓存
 */
@property (nonatomic, strong) NSArray *beautyParams;
//缓存的选种滤镜参数
@property (nonatomic, strong) FUBeautyModel *seletedFliter;

- (BOOL)showsLandmarks;

+ (void)updateBeautyBlurEffect;
@end
