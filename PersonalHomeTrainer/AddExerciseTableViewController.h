//
//  TrainerAddExerciseTableViewController.h
//  PersonalHomeTrainer
//
//  Created by Creative on 18.01.13.
//  Copyright (c) 2013. g. Artūrs Braučs. All rights reserved.
//

#import <UIKit/UIKit.h>
@class OldExercise;

@interface AddExerciseTableViewController : UITableViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *nameInput;
@property (weak, nonatomic) IBOutlet UITextField *descriptionInput;
@property (weak, nonatomic) IBOutlet UITextField *videoPathInput;

@property (strong, nonatomic) OldExercise *trainerExercise;

@end