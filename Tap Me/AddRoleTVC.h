//
//  AddRoleTVC.h
//  Tap Me
//
//  Created by ConquerSHDD on 10/18/2013.
//  Copyright (c) 2013 ConquerSHDD. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AddRoleTVC;
@protocol AddRoleTVCDelegate
- (void)theSaveButtonOnTheAddRoleTVCWasTapped:(AddRoleTVC *)controller;
@end

@interface AddRoleTVC : UITableViewController
@property (nonatomic, weak) id <AddRoleTVCDelegate> delegate;

- (IBAction)save:(id)sender;

@end
