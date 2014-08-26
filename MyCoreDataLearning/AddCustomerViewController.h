//
//  AddCustomerViewController.h
//  MyCoreDataLearning
//
//  Created by thanawat.s on 8/26/2557 BE.
//  Copyright (c) 2557 thanawat.s. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AddCustomerViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *txtCustomerId;
@property (weak, nonatomic) IBOutlet UITextField *txtCustomerName;
@property (weak, nonatomic) IBOutlet UITextField *txtCustomerAddress;
- (IBAction)btnSavePressed:(id)sender;

@end
