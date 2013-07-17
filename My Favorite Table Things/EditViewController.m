//
//  EditViewController.m
//  My Favorite Table Things
//
//  Created by Umut Kanbak on 7/17/13.
//  Copyright (c) 2013 Umut Kanbak. All rights reserved.
//

#import "EditViewController.h"

@interface EditViewController ()
{

    __weak IBOutlet UITextField *textToEdit;
    __weak IBOutlet UIButton *updateTextButton;
    
}
- (IBAction)updateText:(id)sender;

@end

@implementation EditViewController
@synthesize incomingString;
@synthesize delegate;

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
    textToEdit.text = incomingString;
    self.navigationItem.title = incomingString;
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)updateText:(id)sender {
    [delegate UpdateFavorite:textToEdit.text];
    [self.navigationController popViewControllerAnimated:YES];
}
@end
