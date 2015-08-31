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
//#import "TextMessageFrame.h"


#import "TextMessageTableViewCell.h"


@interface LeftTextMessageTableViewCell : TextMessageTableViewCell

//<<<<<<< HEAD
//@property (strong, nonatomic) IBOutlet UILabel *clientIdLabel;
//@property (strong, nonatomic) IBOutlet UILabel *messageContentTextView;
//@property (strong, nonatomic) IBOutlet UITableViewCell *view;
//=======
@property (strong, nonatomic) IBOutlet UILabel *messageSenderClientId;
//@property (strong, nonatomic) IBOutlet UITextView *textMessageContentTextView;

@property (strong, nonatomic) IBOutlet UILabel *textMessageContentTextView;

//+ (instancetype)cellWithTableView:(UITableView *)tableView;

@end
