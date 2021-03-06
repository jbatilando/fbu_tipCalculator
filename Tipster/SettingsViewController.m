//
//  SettingsViewController.m
//  Tipster
//
//  Created by Miguel Batilando on 5/19/19.
//  Copyright © 2019 Miguel Batilando. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()
// MARK: IBOutlets
@property (weak, nonatomic) IBOutlet UIButton *fifteenPercentButton;
@property (weak, nonatomic) IBOutlet UIButton *twentyPercentButton;
@property (weak, nonatomic) IBOutlet UIButton *twentyTwoPercentButton;

@end

@implementation SettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Color buttons and make them circles
    self.fifteenPercentButton.layer.cornerRadius = 50;
    self.fifteenPercentButton.layer.borderWidth = 1;
    self.fifteenPercentButton.layer.borderColor = [UIColor blackColor].CGColor;
    self.twentyPercentButton.layer.cornerRadius = 50;
    self.twentyPercentButton.layer.borderWidth = 1;
    self.twentyPercentButton.layer.borderColor = [UIColor blackColor].CGColor;
    self.twentyTwoPercentButton.layer.cornerRadius = 50;
    self.twentyTwoPercentButton.layer.borderWidth = 1;
    self.twentyTwoPercentButton.layer.borderColor = [UIColor blackColor].CGColor;
    
}

// MARK: IBActions
// Set default tip percentages
- (IBAction)didTapFifteen:(id)sender {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setDouble:0.15 forKey:@"default_tip_percentage"];
    [defaults synchronize];
}

- (IBAction)didTapTwenty:(id)sender {
    NSLog(@"20");
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setDouble:0.2 forKey:@"default_tip_percentage"];
    [defaults synchronize];
}

- (IBAction)didTapTwentyTwo:(id)sender {
    NSLog(@"22");
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setDouble:0.22 forKey:@"default_tip_percentage"];
    [defaults synchronize];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
