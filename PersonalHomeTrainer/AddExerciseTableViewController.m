//
//  TrainerAddExerciseTableViewController.m
//  PersonalHomeTrainer
//
//  Created by Creative on 18.01.13.
//  Copyright (c) 2013. g. Artūrs Braučs. All rights reserved.
//

#import "AddExerciseTableViewController.h"

@interface AddExerciseTableViewController ()

@end

@implementation AddExerciseTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.nameInput.text = self.currentExercise.name;
    self.descriptionInput.text = self.currentExercise.descriptions;
    self.videoPathInput.text = self.currentExercise.videoPath;
    self.typeInput.text = self.currentExercise.type;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    if ((textField == self.nameInput) || (textField == self.descriptionInput) || (textField == self.videoPathInput) || (textField == self.typeInput)) {
        [textField resignFirstResponder];
    }
    return YES;
}

- (IBAction)save:(id)sender {
    [self.currentExercise setCreatedAt:[NSDate date]];
    [self.currentExercise setName:self.nameInput.text];
    [self.currentExercise setDescriptions:self.descriptionInput.text];
    [self.currentExercise setVideoPath:self.videoPathInput.text];
    [self.currentExercise setType:self.typeInput.text];
    [self.delegate addExerciseTableViewControllerDidSave];
}

- (IBAction)cancel:(id)sender {
    [self.delegate addExerciseTableViewControllerDidCancel:[self currentExercise]];
}
@end
