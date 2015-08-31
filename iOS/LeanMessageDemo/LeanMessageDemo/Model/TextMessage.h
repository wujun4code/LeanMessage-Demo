//
//  TextMessage.h
//  LeanMessageDemo
//
//  Created by 陈宜龙 on 15/8/28.
//  Copyright © 2015年 LeanCloud. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AVIMTypedMessage.h"

@interface TextMessage : NSObject

/** clientIDLabel 对应的 Frame */
@property(nonatomic, copy, readwrite) NSString *clientId;
/** messageContentTextView 对应的 消息内容 */
@property (nonatomic, strong, readwrite) AVIMTypedMessage *messageContent;

@end
