//
//  ViewController.m
//  FirstIOSProgram
//
//  Created by Dilip Kosuri on 6/7/16.
//  Copyright © 2016 Dilip Kosuri. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)UIAlertContWOAction:(id)sender;
- (IBAction)UIAlertViewAction:(id)sender;
- (IBAction)UIAlertControllerWithAction:(id)sender;

- (IBAction)UIAlertControllerWithActionSheet:(id)sender;
- (IBAction)UIAlertControllerWithActionSheetTextFields:(id)sender;

@end

@implementation ViewController



- (IBAction)UIAlertContWOAction:(id)sender {
    
    UIAlertController * alert=   [UIAlertController
                                  alertControllerWithTitle:@"Info"
                                  message:@"You are using UIAlertController without Actions"
                                  preferredStyle:UIAlertControllerStyleAlert];
    
    [self presentViewController:alert animated:YES completion:nil];
    [alert dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)UIAlertViewAction:(id)sender {
    
    UIAlertView *showAlert = [[UIAlertView alloc]
                              initWithTitle:@"Really reset?"
                              message:@"Do you really want to reset this game?"
                              delegate:self
                              cancelButtonTitle:@"Cancel"
                              otherButtonTitles:@"reset", nil];
    
    [showAlert show];
    
}

- (IBAction)UIAlertControllerWithAction:(id)sender {
    
    UIAlertController * alert=   [UIAlertController
                                  alertControllerWithTitle:@"Info"
                                  message:@"You are using UIAlertController with Actions"
                                  preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* ok = [UIAlertAction
                         actionWithTitle:@"OK"
                         style:UIAlertActionStyleDefault
                         handler:^(UIAlertAction * action)
                         {
                             NSLog(@"Resolving UIAlert Action for tapping OK Button");
                             [alert dismissViewControllerAnimated:YES completion:nil];
                             
                         }];
    UIAlertAction* cancel = [UIAlertAction
                             actionWithTitle:@"Cancel"
                             style:UIAlertActionStyleDefault
                             handler:^(UIAlertAction * action)
                             {
                                 NSLog(@"Resolving UIAlertActionController for tapping cancel button");
                                 [alert dismissViewControllerAnimated:YES completion:nil];
                                 
                             }];
    
    [alert addAction:ok];
    [alert addAction:cancel];
    
    [self presentViewController:alert animated:YES completion:nil];

}

- (IBAction)UIAlertControllerWithActionSheet:(id)sender {
    
    UIAlertController * alert=   [UIAlertController
                                  alertControllerWithTitle:@"Info"
                                  message:@"You are using UIAlertController with Actions and actionsheet"
                                  preferredStyle:UIAlertControllerStyleActionSheet];
    
    UIAlertAction* ok = [UIAlertAction
                         actionWithTitle:@"OK"
                         style:UIAlertActionStyleDefault
                         handler:^(UIAlertAction * action)
                         {
                             NSLog(@"Resolving UIAlert Action for tapping OK Button");
                             [alert dismissViewControllerAnimated:YES completion:nil];
                             
                         }];
    UIAlertAction* cancel = [UIAlertAction
                             actionWithTitle:@"Cancel"
                             style:UIAlertActionStyleDefault
                             handler:^(UIAlertAction * action)
                             {
                                 NSLog(@"Resolving UIAlertActionController for tapping cancel button");
                                 [alert dismissViewControllerAnimated:YES completion:nil];
                                 
                             }];
    
    [alert addAction:ok];
    [alert addAction:cancel];
    
    [self presentViewController:alert animated:YES completion:nil];
}

- (IBAction)UIAlertControllerWithActionSheetTextFields:(id)sender {
    UIAlertController * alert=   [UIAlertController
                                  alertControllerWithTitle:@"Info"
                                  message:@"You are using UIAlertController with Actionsheet and text fields"
                                  preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* ok = [UIAlertAction
                         actionWithTitle:@"OK"
                         style:UIAlertActionStyleDefault
                         handler:^(UIAlertAction * action)
                         {
                             NSLog(@"Resolving UIAlert Action for tapping OK Button");
                             [alert dismissViewControllerAnimated:YES completion:nil];
                             
                         }];
    UIAlertAction* cancel = [UIAlertAction
                             actionWithTitle:@"Cancel"
                             style:UIAlertActionStyleDefault
                             handler:^(UIAlertAction * action)
                             {
                                 NSLog(@"Resolving UIAlertActionController for tapping cancel button");
                                 [alert dismissViewControllerAnimated:YES completion:nil];
                                 
                             }];
    
    [alert addAction:ok];
    [alert addAction:cancel];
    
    [alert addTextFieldWithConfigurationHandler:^(UITextField * textField) {
       textField.accessibilityIdentifier = @"usernameTextField";
        textField.placeholder = @"Enter your username";
        textField.accessibilityLabel = @"usernameLabel";
    }];
    
    [alert addTextFieldWithConfigurationHandler:^(UITextField * textField) {
       textField.placeholder = @"Enter your password";
       textField.accessibilityIdentifier = @"paswordTextField";
       textField.accessibilityLabel = @"passwordLabel";
    }];
    
    [self presentViewController:alert animated:YES completion:nil];
    
}

- (void)alertView:(UIAlertView *)alertView
clickedButtonAtIndex:(NSInteger)buttonIndex{
    if (buttonIndex == [alertView cancelButtonIndex]){
        NSLog(@"Inside cancel button click function");
        
    }else if(buttonIndex == [alertView firstOtherButtonIndex]){
        NSLog(@"Reset button clicked..");
    }
}


@end
