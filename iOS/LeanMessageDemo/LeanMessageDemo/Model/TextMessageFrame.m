//
//  TextMessageFrame.m
//  LeanMessageDemo
//
//  Created by 陈宜龙 on 15/8/28.
//  Copyright © 2015年 LeanCloud. All rights reserved.
//

@import Foundation;
@import UIKit;

//cell内边距的 X 或 Y 值。
CGFloat const AVCellBorderWidth = 15.0;
//单元格之间的间隙，最底端控件距离底部的距离
CGFloat const AVCellMargin = 15.0;

#define UI_SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
// 昵称
#define AVClientIDFont [UIFont systemFontOfSize:17]
#define AVMessageContentTextViewContentFont [UIFont systemFontOfSize:14]

#import "TextMessageFrame.h"

@implementation TextMessageFrame

// 重写set方法
- (void)setMessage:(TextMessage *)message
{
    //1.计算所有子控件的frame
    _message = message;
    
    CGFloat cellWidth = UI_SCREEN_WIDTH - 2*AVCellBorderWidth;
    //1.1 计算clientIdLabel的frame
    CGFloat clientIdLabelX = 0;
    CGFloat clientIdLabelY = 0;
    CGSize clientIdLabelSize = [message.clientId sizeWithAttributes:@{ NSFontAttributeName:AVClientIDFont }];
    _clientIdFrame = (CGRect){ {clientIdLabelX, clientIdLabelY}, clientIdLabelSize };
    
    //1.2 计算messageContentTextView的frame
    CGFloat messageContentTextViewX = clientIdLabelX;
    CGFloat messageContentTextViewY = CGRectGetMaxY(_clientIdFrame) + AVCellBorderWidth;
    
    NSDictionary *attributes = @{NSFontAttributeName:AVMessageContentTextViewContentFont};
    // NSString class method: boundingRectWithSize:options:attributes:context is
    // available only on ios7.0 sdk.
    NSString *text = message.messageContent.text;
    CGSize messageContentTextViewSize = [text boundingRectWithSize:CGSizeMake(cellWidth, CGFLOAT_MAX)
                                     options:NSStringDrawingUsesLineFragmentOrigin
                                  attributes:attributes
                                     context:nil].size;
    NSLog(@"🔴类名与方法名：%s（在第%d行），描述：%@", __PRETTY_FUNCTION__, __LINE__, message.messageContent.text);
    _messageContentFrame = (CGRect){{messageContentTextViewX , messageContentTextViewY}, messageContentTextViewSize};
    NSLog(@"🔴类名与方法名：%s（在第%d行），描述：%@，%@，%@，%@", __PRETTY_FUNCTION__, __LINE__,@(messageContentTextViewX),@(messageContentTextViewY),@(_messageContentFrame.size.width), @(_messageContentFrame.size.height));
    // 2.计算cell的高度
    [self setupCellHeight];
}

- (void)setupCellHeight
{
    _cellHeight = CGRectGetMaxY(_messageContentFrame);

    _cellHeight += AVCellMargin;
        NSLog(@"🔴类名与方法名：%s（在第%d行），描述：%@", __PRETTY_FUNCTION__, __LINE__, @(_cellHeight));
}

@end
