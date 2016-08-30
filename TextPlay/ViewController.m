//
//  ViewController.m
//  TextPlay
//
//  Created by Neil Vitale on 8/30/16.
//  Copyright © 2016 Neil Vitale. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITextFieldDelegate>
- (IBAction)button1:(id)sender;
- (IBAction)button2:(id)sender;
@property (strong, nonatomic) IBOutlet UITextField *textField;
@property (strong, nonatomic) IBOutlet UILabel *label1;
@property (strong, nonatomic) IBOutlet UILabel *label2;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)textFieldDidEndEditing:(UITextField *)textField reason:(UITextFieldDidEndEditingReason)reason {
    NSLog(@"%@", textField.text);
}


- (BOOL)textFieldShouldEndEditing:(UITextField *)textField {
    return YES;
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}



- (IBAction)button1:(id)sender {
    [self.label1 setText:self.textField.text];
}

- (IBAction)button2:(id)sender {
    [self.label2 setText:self.textField.text];
    

}
@end
