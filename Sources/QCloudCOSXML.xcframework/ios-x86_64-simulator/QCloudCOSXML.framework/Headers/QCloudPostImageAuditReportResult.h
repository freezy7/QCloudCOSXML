//
//  QCloudPostImageAuditReportResult.h
//  QCloudPostImageAuditReportResult
//
//  Created by tencent
//  Copyright (c) 2015年 tencent. All rights reserved.
//
//   ██████╗  ██████╗██╗      ██████╗ ██╗   ██╗██████╗     ████████╗███████╗██████╗ ███╗   ███╗██╗███╗   ██╗ █████╗ ██╗         ██╗      █████╗
//   ██████╗
//  ██╔═══██╗██╔════╝██║     ██╔═══██╗██║   ██║██╔══██╗    ╚══██╔══╝██╔════╝██╔══██╗████╗ ████║██║████╗  ██║██╔══██╗██║         ██║ ██╔══██╗██╔══██╗
//  ██║   ██║██║     ██║     ██║   ██║██║   ██║██║  ██║       ██║   █████╗  ██████╔╝██╔████╔██║██║██╔██╗ ██║███████║██║         ██║ ███████║██████╔╝
//  ██║▄▄ ██║██║     ██║     ██║   ██║██║   ██║██║  ██║       ██║   ██╔══╝  ██╔══██╗██║╚██╔╝██║██║██║╚██╗██║██╔══██║██║         ██║ ██╔══██║██╔══██╗
//  ╚██████╔╝╚██████╗███████╗╚██████╔╝╚██████╔╝██████╔╝       ██║   ███████╗██║  ██║██║ ╚═╝ ██║██║██║ ╚████║██║  ██║███████╗    ███████╗██║
//  ██║██████╔╝
//   ╚══▀▀═╝  ╚═════╝╚══════╝ ╚═════╝  ╚═════╝ ╚═════╝        ╚═╝   ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝╚══════╝    ╚══════╝╚═╝ ╚═╝╚═════╝
//
//
//                                                                              _             __                 _                _
//                                                                             (_)           / _|               | |              | |
//                                                          ___  ___ _ ____   ___  ___ ___  | |_ ___  _ __    __| | _____   _____| | ___  _ __   ___ _
//                                                          __ ___
//                                                         / __|/ _ \ '__\ \ / / |/ __/ _ \ |  _/ _ \| '__|  / _` |/ _ \ \ / / _ \ |/ _ \| '_ \ / _ \
//                                                         '__/ __|
//                                                         \__ \  __/ |   \ V /| | (_|  __/ | || (_) | |    | (_| |  __/\ V /  __/ | (_) | |_) |  __/
//                                                         |  \__
//                                                         |___/\___|_|    \_/ |_|\___\___| |_| \___/|_|     \__,_|\___| \_/ \___|_|\___/| .__/
//                                                         \___|_|  |___/
//    ______ ______ ______ ______ ______ ______ ______ ______                                                                            | |
//   |______|______|______|______|______|______|______|______|                                                                           |_|
//

#import <Foundation/Foundation.h>
#import <QCloudCore/QCloudCore.h>


NS_ASSUME_NONNULL_BEGIN

@interface QCloudPostImageAuditReportResult : NSObject 

/// 每次请求发送时，服务端将会自动为请求生成一个 ID，遇到问题时，该 ID 能更快地协助定位问题
@property (nonatomic,strong)NSString * RequestId;

@end

@interface QCloudPostImageAuditReport : NSObject 

/// 需要反馈的数据类型，反馈图片错误样本，取值为2。;是否必传：是;
@property (nonatomic,assign)NSInteger ContentType;

/// 图片类型的样本，需要填写图片的 url 链接，ContentType 为2时必填。;是否必传：否;
@property (nonatomic,strong)NSString * Url;

/// 数据万象审核判定的审核结果标签，例如 Porn。;是否必传：是;
@property (nonatomic,strong)NSString * Label;

/// 您自己期望的正确审核结果的标签，例如期望是正常，则填 Normal。;是否必传：是;
@property (nonatomic,strong)NSString * SuggestedLabel;

/// 该数据样本对应的审核任务 ID，有助于定位审核记录。;是否必传：否;
@property (nonatomic,strong)NSString * JobId;

/// 该数据样本之前审核的时间，有助于定位审核记录。 格式为 2021-08-07T12:12:12+08:00;是否必传：否;
@property (nonatomic,strong)NSString * ModerationTime;

@end



NS_ASSUME_NONNULL_END