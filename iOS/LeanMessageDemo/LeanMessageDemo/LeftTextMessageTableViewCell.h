//
//  TextMessageTableViewCell.h
//  LeanMessageDemo
//
//  Created by WuJun on 8/24/15.
//  Copyright (c) 2015 LeanCloud. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVOSCloudIM.h>

//#import "BaseTextMessageTableViewCell.h"



#import "TextMessageTableViewCell.h"


@interface LeftTextMessageTableViewCell : TextMessageTableViewCell

@property (nonatomic, strong) IBOutlet UILabel *messageSenderClientId;
@property (nonatomic, strong) IBOutlet UILabel *textMessageContentTextView;
//@property (nonatomic, strong) LeftTextMessageFrame *leftTextMessageFrame
//+ (instancetype)cellWithTableView:(UITableView *)tableView;

@end
