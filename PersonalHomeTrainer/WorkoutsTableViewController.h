//
//  WorkoutsTableViewController.h
//  PersonalHomeTrainer
//
//  Created by Artūrs Braučs on 2/9/13.
//  Copyright (c) 2013 Artūrs Braučs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WorkoutsTableViewController : UITableViewController<NSFetchedResultsControllerDelegate>

@property (nonatomic, strong) NSManagedObjectContext *managedObjectContext;

@property (nonatomic, strong) NSFetchedResultsController *fetchedResultsController;

@end
