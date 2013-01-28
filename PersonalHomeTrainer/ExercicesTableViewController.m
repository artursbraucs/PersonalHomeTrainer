//
//  ExercicesTableViewController.m
//  PersonalHomeTrainer
//
//  Created by Creative on 18.01.13.
//  Copyright (c) 2013. g. Artūrs Braučs. All rights reserved.
//

#import "ExercicesTableViewController.h"
#import "Exercise.h"
#import "AddExerciseTableViewController.h"
#import "ExerciseDetailViewController.h"

@interface ExercicesTableViewController ()

@end

@implementation ExercicesTableViewController

@synthesize fetchedResultsController = _fetchedResultsController;

- (void) addExerciseTableViewControllerDidCancel:(Exercise *)exerciseToDelete {
    NSManagedObjectContext *context = self.managedObjectContext;
    [context deleteObject:exerciseToDelete];
    
    [self dismissViewControllerAnimated:YES completion:NULL];
}

- (void) addExerciseTableViewControllerDidSave {
    NSManagedObjectContext *context = self.managedObjectContext;

    NSError *error = nil;
    if (![context save:&error]) {
        NSLog(@"Error! %@", error);
    }
    
    [self dismissViewControllerAnimated:YES completion:NULL];
}

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)awakeFromNib
{
    [super awakeFromNib];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationController.navigationBar.tintColor = [UIColor blackColor];
    
    NSError *error = nil;
    if (![[self fetchedResultsController]performFetch:&error]) {
        NSLog(@"Error! %@", error);
        abort();
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [[self.fetchedResultsController sections] count];

}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    id <NSFetchedResultsSectionInfo> secInfo = [[self.fetchedResultsController sections] objectAtIndex:section];
    return [secInfo numberOfObjects];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"ExcerciseCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    Exercise *excercise = [self.fetchedResultsController objectAtIndexPath:indexPath];
    [cell.textLabel setText: excercise.name];
    
    return cell;
}

- (NSString *) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return [[[self.fetchedResultsController sections]objectAtIndex:section]name];
}

// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return NO;
}

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
 {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 }
 else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
 {
 }
 */


// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return NO;
}

#pragma mark -
#pragma mark Fetched Results Controller section
- (NSFetchedResultsController *) fetchedResultsController {
    if (_fetchedResultsController != nil) {
        return _fetchedResultsController;
    }
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Exercise"
                                              inManagedObjectContext:[self managedObjectContext]];
    [fetchRequest setEntity:entity];
    
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:@"type"
                                                                   ascending:YES];
    NSArray *sortDescriptors = [[NSArray alloc] initWithObjects:sortDescriptor, nil];
    [fetchRequest setSortDescriptors:sortDescriptors];
    
    _fetchedResultsController = [[NSFetchedResultsController alloc]initWithFetchRequest:fetchRequest managedObjectContext:self.managedObjectContext sectionNameKeyPath:@"type" cacheName:nil];
    return _fetchedResultsController;
}


#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

    if ([segue.identifier isEqualToString:@"AddExercise"]) {
        AddExerciseTableViewController *aetvc = (AddExerciseTableViewController *)[segue destinationViewController];
        aetvc.delegate = self;
        Exercise *newExercise = (Exercise *) [NSEntityDescription insertNewObjectForEntityForName:@"Exercise" inManagedObjectContext:[self managedObjectContext]];
        aetvc.currentExercise = newExercise;
    }
    if ([segue.identifier isEqualToString:@"ShowExerciseDetails"]) {
    }

}

@end
