//
//  TrainerAddExerciseTableViewController.h
//  PersonalHomeTrainer
//
//  Created by Creative on 18.01.13.
//  Copyright (c) 2013. g. Artūrs Braučs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Exercise.h"

@protocol AddExerciseTableViewControllerDelegate;


@interface AddExerciseTableViewController : UITableViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *nameInput;
@property (weak, nonatomic) IBOutlet UITextField *descriptionInput;
@property (weak, nonatomic) IBOutlet UITextField *videoPathInput;
@property (weak, nonatomic) IBOutlet UITextField *typeInput;

@property (nonatomic, weak) id <AddExerciseTableViewControllerDelegate> delegate;

@property (strong, nonatomic) Exercise *currentExercise;

- (IBAction)save:(id)sender;
- (IBAction)cancel:(id)sender;

@end

@protocol AddExerciseTableViewControllerDelegate
-(void)addExerciseTableViewControllerDidSave;
-(void)addExerciseTableViewControllerDidCancel:(Exercise *)exerciseToDelete;
@end