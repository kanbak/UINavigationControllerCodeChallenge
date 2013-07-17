//
//  EditViewController.h
//  My Favorite Table Things
//
//  Created by Umut Kanbak on 7/17/13.
//  Copyright (c) 2013 Umut Kanbak. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UpdateFavoriteDelegate.h"

@interface EditViewController : UIViewController

@property  (strong, nonatomic) NSString *incomingString;
@property (strong, nonatomic)id <UpdateFavoriteDelegate> delegate;
@end
