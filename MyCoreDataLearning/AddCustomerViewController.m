//
//  AddCustomerViewController.m
//  MyCoreDataLearning
//
//  Created by thanawat.s on 8/26/2557 BE.
//  Copyright (c) 2557 thanawat.s. All rights reserved.
//

#import "AddCustomerViewController.h"

@interface AddCustomerViewController ()

@end

@implementation AddCustomerViewController

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
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)btnSavePressed:(id)sender {
    
    id delegate = [[UIApplication sharedApplication] delegate];
    
    NSManagedObjectContext* moc = [delegate managedObjectContext];
    
    NSFetchRequest *request = [[NSFetchRequest alloc] init];
    [request setEntity:[NSEntityDescription entityForName:@"Customer" inManagedObjectContext:moc]];
    
    NSArray* customers = [moc executeFetchRequest:request error:nil];
    
    NSLog(@"%@", customers);
    
}
@end
