//
//  TrainerAddExerciseTableViewController.m
//  PersonalHomeTrainer
//
//  Created by Creative on 18.01.13.
//  Copyright (c) 2013. g. Artūrs Braučs. All rights reserved.
//

#import "AddExerciseTableViewController.h"

#import "OldExercise.h"

@interface AddExerciseTableViewController ()

@end

@implementation AddExerciseTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationController.navigationBar.tintColor = [UIColor blackColor];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    if ((textField == self.nameInput) || (textField == self.descriptionInput) || (textField == self.videoPathInput)) {
        [textField resignFirstResponder];
    }
    return YES;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"SaveExercise"]) {
        if ([self.nameInput.text length] || [self.descriptionInput.text length]) {
            OldExercise *exercise;
            NSDate *today = [NSDate date];
            exercise = [[OldExercise alloc] initWithName:self.nameInput.text description:self.descriptionInput.text videoPath:self.videoPathInput.text date:today];
            self.trainerExercise = exercise;
        }
    }
}

@end
