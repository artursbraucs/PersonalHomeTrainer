//
//  WorkoutExercisesTableViewController.h
//  PersonalHomeTrainer
//
//  Created by Artūrs Braučs on 2/10/13.
//  Copyright (c) 2013 Artūrs Braučs. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Workout;

@interface WorkoutExercisesTableViewController : UITableViewController

@property (strong, nonatomic) Workout *currentWorkout;

@end
