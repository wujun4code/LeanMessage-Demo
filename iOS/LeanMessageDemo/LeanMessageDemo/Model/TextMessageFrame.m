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

#import "TextMessageFrame.h"

@implementation TextMessageFrame

// 重写set方法
- (void)setMessage:(TextMessage *)message
{
    //1.计算所有子控件的frame
    _message = message;
    
    CGFloat cellWidth = UI_SCREEN_WIDTH - 2*AVCellBorderWidth;
    if (_isMe) {

    //1.1 计算clientIdLabel的frame
    CGFloat clientIdLabelX = 0;
    CGFloat clientIdLabelY = 0;
    CGSize clientIdLabelSize = [message.clientId sizeWithAttributes:@{ NSFontAttributeName:AVClientIDFont }];
    _clientIdFrame = (CGRect){ {clientIdLabelX, clientIdLabelY}, clientIdLabelSize };
    
    //1.2 计算messageContentTextView的frame
    CGFloat messageContentTextViewX = clientIdLabelX;
    CGFloat messageContentTextViewY = CGRectGetMaxY(_clientIdFrame);
    
    NSDictionary *attributes = @{NSFontAttributeName:AVMessageContentTextViewContentFont};
    // NSString class method: boundingRectWithSize:options:attributes:context is
    // available only on ios7.0 sdk.
    NSString *text = message.messageContent.text;
    CGSize messageContentTextViewSize = [text boundingRectWithSize:CGSizeMake(cellWidth, CGFLOAT_MAX)
                                     options:NSStringDrawingUsesLineFragmentOrigin
                                  attributes:attributes
                                     context:nil].size;
    _messageContentFrame = (CGRect){{messageContentTextViewX , messageContentTextViewY}, messageContentTextViewSize};
    // 2.计算cell的高度
        _cellHeight = CGRectGetMaxY(_messageContentFrame);
    } else {
        //1.1 计算messageContentTextView的frame
        CGFloat messageContentTextViewY = 0;
        NSDictionary *attributes = @{NSFontAttributeName:AVMessageContentTextViewContentFont};
        // NSString class method: boundingRectWithSize:options:attributes:context is
        // available only on ios7.0 sdk.
        NSString *text = message.messageContent.text;
        CGSize messageContentTextViewSize = [text boundingRectWithSize:CGSizeMake(cellWidth, CGFLOAT_MAX)
                                                               options:NSStringDrawingUsesLineFragmentOrigin
                                                            attributes:attributes
                                                               context:nil].size;
        CGFloat messageContentTextViewX = cellWidth - messageContentTextViewSize.width;
        _messageContentFrame = (CGRect){{messageContentTextViewX , messageContentTextViewY}, messageContentTextViewSize};
        //1.2 计算clientIdLabel的frame
        CGFloat clientIdLabelY = CGRectGetMaxY(_messageContentFrame);
        CGSize clientIdLabelSize = [message.clientId sizeWithAttributes:@{ NSFontAttributeName:AVClientIDFont }];
        CGFloat clientIdLabelX = cellWidth - clientIdLabelSize.width;
        _clientIdFrame = (CGRect){ {clientIdLabelX, clientIdLabelY}, clientIdLabelSize };
        // 2.计算cell的高度
        _cellHeight = CGRectGetMaxY(_clientIdFrame);
    }
    // 3.cell的高度添加 cell 间的间距
    _cellHeight += AVCellMargin + AVCellBorderWidth;
}

@end
