//
//  ExerciseDetailsViewController.m
//  PersonalHomeTrainer
//
//  Created by Artūrs Braučs on 1/19/13.
//  Copyright (c) 2013 Artūrs Braučs. All rights reserved.
//

#import "ExerciseDetailViewController.h"
#import "AppDelegate.h"
#import "AddExerciseTableViewController.h"
#import <MediaPlayer/MediaPlayer.h>
#import "LBYouTube.h"

@interface ExerciseDetailViewController ()
- (void)setTextAreaContent;
- (void)iniVideo;
@end

@implementation ExerciseDetailViewController

@synthesize videoController;

- (void)dealloc {
    self.videoController.delegate = nil;
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];    
    if (self.videoController != nil)
    {
        [self.videoController pause];
    }
}

- (void)viewDidAppear:(BOOL)animated {
    if (self.videoController != nil){
        [self.videoController play];
    } else {
        [self iniVideo];
    }
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationController.navigationBar.tintColor = [UIColor blackColor];
    [self setTextAreaContent];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setTextAreaContent
{
    if (self.currentExercise.description.length) {
        self.textArea.text = [self.currentExercise descriptions];
    } else {
        self.textArea.text = [self.currentExercise name];
    }
}

- (void)iniVideo {
    if (self.videoController != nil) {
        [self.videoController.view removeFromSuperview];
        self.videoController.delegate = nil;
        self.videoController = nil;
    }
    if (self.currentExercise.videoPath.length) {
        self.videoController = [[LBYouTubePlayerController alloc] initWithYouTubeURL:[NSURL URLWithString:[self.currentExercise videoPath]] quality:LBYouTubeVideoQualityLarge];
        self.videoController.delegate = self;
        
        self.videoController.view.frame = [self.videoPlaceholder bounds]; // CGRectMake(0.0f, 0.0f, self.view.frame.size.width, 200.0f);
        self.videoController.view.center = [self.videoPlaceholder center]; // CGPointMake(200.0f, 300.0f); //
        [self.view addSubview:self.videoController.view];
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    [self.videoController stop];
    self.videoController.delegate = nil;
    if ([segue.identifier isEqualToString:@"EditExercise"]) {
        AddExerciseTableViewController *aetvc = (AddExerciseTableViewController *)[segue destinationViewController];
        aetvc.delegate = self;
        aetvc.currentExercise = self.currentExercise;
    }
}

#pragma mark -
#pragma mark AddExerciseTableViewControllerDelegate
-(void)addExerciseTableViewControllerDidSave {
    AppDelegate *myApp = (AppDelegate *) [[UIApplication sharedApplication]delegate];
    [myApp saveContext];
    [self setTextAreaContent];
    [self iniVideo];
    [self dismissViewControllerAnimated:YES completion:NULL];
}

-(void)addExerciseTableViewControllerDidCancel:(Exercise *)exerciseToDelete {
    [self dismissViewControllerAnimated:YES completion:NULL];
}


#pragma mark -
#pragma mark LBYouTubePlayerViewControllerDelegate
-(void)youTubePlayerViewController:(LBYouTubePlayerController *)controller didSuccessfullyExtractYouTubeURL:(NSURL *)videoURL {
}

-(void)youTubePlayerViewController:(LBYouTubePlayerController *)controller failedExtractingYouTubeURLWithError:(NSError *)error {
}

@end
