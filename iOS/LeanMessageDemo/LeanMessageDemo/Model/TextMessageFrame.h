//
//  TextMessageFrame.h
//  LeanMessageDemo
//
//  Created by 陈宜龙 on 15/8/28.
//  Copyright © 2015年 LeanCloud. All rights reserved.
//

@import UIKit;
//cell内边距的 X 或 Y 值。
extern CGFloat const AVCellBorderWidth;
//单元格之间的间隙，最底端控件距离底部的距离
extern CGFloat const AVCellMargin;
#import "TextMessage.h"
#import <Foundation/Foundation.h>

@interface TextMessageFrame : NSObject

/** clientIDLabel 对应的 Frame */
@property(nonatomic, assign, readonly) CGRect clientIdFrame;
/** messageContentTextView 对应的 Frame */
@property(nonatomic, assign, readonly) CGRect messageContentFrame;
/** cell的高度 */
@property (nonatomic, assign, readonly) CGFloat cellHeight;

@property (nonatomic, strong ,readwrite) TextMessage *message;

@end
