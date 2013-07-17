//
//  ViewController.h
//  My Favorite Table Things
//
//  Created by Umut Kanbak on 7/16/13.
//  Copyright (c) 2013 Umut Kanbak. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EditViewController.h"
#import "UpdateFavoriteDelegate.h"

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource, UpdateFavoriteDelegate>

@end
