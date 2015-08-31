//
//  TextMessageTableViewCell.m
//  LeanMessageDemo
//
//  Created by WuJun on 8/25/15.
//  Copyright (c) 2015 LeanCloud. All rights reserved.
//

#import "TextMessageTableViewCell.h"

@implementation TextMessageTableViewCell
//-(void)setTextMessage:(AVIMTextMessage *)textMessage{
//    _textMessage = textMessage;
//}
- (void)awakeFromNib {
    // Initialization code
}
-(instancetype)init{
    self = [super init];
    if (self) {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"MessageTableCells" owner:nil options:nil];
        
        self =  [nib objectAtIndex:0];
    }
    return self;
}

- (instancetype)initWithIsMe:(BOOL)isMe{
    self = [super init];
    if (self) {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"MessageTableCells" owner:nil options:nil];
        if(isMe)
             self =  [nib objectAtIndex:1];
        else
            self= [nib objectAtIndex:0];
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}
- (void)setTextMessageFrame:(TextMessageFrame *)textMessageFrame {
    _textMessageFrame = textMessageFrame;
    
//    self.messageSenderClientId.text = textMessageFrame.message.clientId;
//    self.messageSenderClientId.frame = textMessageFrame.clientIdFrame;
//    
//    self.textMessageContentTextView.text = textMessageFrame.message.messageContent.text;
//    self.textMessageContentTextView.frame = textMessageFrame.messageContentFrame;
}

- (void)setFrame:(CGRect)frame
{
    frame.origin.x = AVCellBorderWidth;
    frame.size.width -= 2 * AVCellBorderWidth;
    
    frame.origin.y += AVCellBorderWidth;
    frame.size.height -= AVCellMargin;
    
    [super setFrame:frame];
}
@end
