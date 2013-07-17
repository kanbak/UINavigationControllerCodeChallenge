//
//  ViewController.m
//  My Favorite Table Things
//
//  Created by Umut Kanbak on 7/16/13.
//  Copyright (c) 2013 Umut Kanbak. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    int row;
    __weak IBOutlet UITextField *myTextField;
    
    __weak IBOutlet UITableView *myTableView;
    NSMutableArray *myArray;
}
- (IBAction)addButton:(id)sender;
- (IBAction)removeButton:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    myArray = [NSMutableArray arrayWithCapacity:10];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addButton:(id)sender {
    [myArray addObject:myTextField.text];
    [myTableView reloadData];
    [myTextField resignFirstResponder];
}

- (IBAction)removeButton:(id)sender {
    [myArray removeLastObject];
    [myTableView reloadData];
    [myTextField resignFirstResponder];
}

#pragma mark UITableViewDataSource

-(int)numberOfSectionsInTableView:(UITableView *)tableView;
{
    return 1;
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
{
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"my identifier"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"my identifier"];
    }
    cell.textLabel.text = [myArray objectAtIndex:indexPath.row];
    return cell;
}

-(int)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [myArray count];
}
#pragma mark UITableViewDelegate
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;
{
    EditViewController *editViewController;
    editViewController = [[EditViewController alloc] initWithNibName:nil bundle:nil];
    editViewController.incomingString = [myArray objectAtIndex:indexPath.row];
    row = indexPath.row;
    [self.navigationController pushViewController:editViewController animated:YES];
    editViewController.delegate = self;
}
#pragma mark UpdateFavoriteDelegate
-(void)UpdateFavorite:(NSString *)value;
{
    [myArray replaceObjectAtIndex:row withObject:value];
    [myTableView reloadData];
}
@end
