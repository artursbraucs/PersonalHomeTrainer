//
//  TrainerAddExerciseTableViewController.m
//  PersonalHomeTrainer
//
//  Created by Creative on 18.01.13.
//  Copyright (c) 2013. g. Artūrs Braučs. All rights reserved.
//

#import "TrainerAddExerciseTableViewController.h"

#import "Exercise.h"

@interface TrainerAddExerciseTableViewController ()

@end

@implementation TrainerAddExerciseTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
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
            Exercise *exercise;
            NSDate *today = [NSDate date];
            exercise = [[Exercise alloc] initWithName:self.nameInput.text description:self.descriptionInput.text videoPath:self.videoPathInput.text date:today];
            self.trainerExercise = exercise;
        }
    }
}

@end
