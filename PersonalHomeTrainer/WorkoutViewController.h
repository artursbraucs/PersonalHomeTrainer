//
//  TrainerWorkoutViewController.h
//  PersonalHomeTrainer
//
//  Created by Artūrs Braučs on 12/28/12.
//  Copyright (c) 2012 Artūrs Braučs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WorkoutViewController : UIViewController <UITextFieldDelegate>

@property (nonatomic, strong) NSManagedObjectContext *managedObjectContext;

@end