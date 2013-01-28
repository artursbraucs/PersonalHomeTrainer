//
//  ExercicesTableViewController.h
//  PersonalHomeTrainer
//
//  Created by Creative on 18.01.13.
//  Copyright (c) 2013. g. Artūrs Braučs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddExerciseTableViewController.h"

@interface ExercicesTableViewController : UITableViewController <AddExerciseTableViewControllerDelegate, NSFetchedResultsControllerDelegate>

@property (nonatomic, strong) NSManagedObjectContext *managedObjectContext;

@property (nonatomic, strong) NSFetchedResultsController *fetchedResultsController;

@end
