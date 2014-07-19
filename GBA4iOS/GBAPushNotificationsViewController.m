//
//  GBAPushNotificationsViewController.m
//  GBA4iOS
//
//  Created by Riley Testut on 7/19/14.
//  Copyright (c) 2014 Riley Testut. All rights reserved.
//

#import "GBAPushNotificationsViewController.h"
#import "GBASettingsViewController.h"

@interface GBAPushNotificationsViewController ()
@property (strong, nonatomic) IBOutlet UISwitch *eventDistributionsSwitch;
@property (strong, nonatomic) IBOutlet UISwitch *softwareUpdatesSwitch;

@end

@implementation GBAPushNotificationsViewController

- (id)init
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    self = [storyboard instantiateViewControllerWithIdentifier:@"pushNotificationsViewController"];
    if (self)
    {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.eventDistributionsSwitch.on = [[NSUserDefaults standardUserDefaults] boolForKey:GBASettingsEventDistributionPushNotifications];
    self.softwareUpdatesSwitch.on = [[NSUserDefaults standardUserDefaults] boolForKey:GBASettingsSoftwareUpdatePushNotifications];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Toggling Notifications

- (IBAction)toggleEventDistributionPushNotifications:(UISwitch *)sender
{
    [[NSUserDefaults standardUserDefaults] setBool:sender.on forKey:GBASettingsEventDistributionPushNotifications];
}

- (IBAction)toggleSoftwareUpdatePushNotifications:(UISwitch *)sender
{
    [[NSUserDefaults standardUserDefaults] setBool:sender.on forKey:GBASettingsSoftwareUpdatePushNotifications];
}


@end
