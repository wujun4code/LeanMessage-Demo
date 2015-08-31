//
//  TextMessageTableViewCell.h
//  LeanMessageDemo
//
//  Created by WuJun on 8/25/15.
//  Copyright (c) 2015 LeanCloud. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVOSCloudIM.h>
#import "TextMessageFrame.h"

@interface TextMessageTableViewCell : UITableViewCell
@property (nonatomic, strong) TextMessageFrame *textMessageFrame;

//@property (strong,nonatomic) AVIMTextMessage *textMessage;
- (instancetype)initWithIsMe:(BOOL)isMe;
@end
