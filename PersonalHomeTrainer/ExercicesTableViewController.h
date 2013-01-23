//
//  ExercicesTableViewController.h
//  PersonalHomeTrainer
//
//  Created by Creative on 18.01.13.
//  Copyright (c) 2013. g. Artūrs Braučs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ExerciseDataController.h"

@interface ExercicesTableViewController : UITableViewController

@property (strong, nonatomic) ExerciseDataController *dataController;

- (IBAction)done:(UIStoryboardSegue *)segue;
- (IBAction)cancel:(UIStoryboardSegue *)segue;

@end