//
//  ViewController.m
//  BasicWeatherApp
//
//  Created by Katherine Wu on 1/28/16.
//  Copyright © 2016 Katherine Wu. All rights reserved.
//

#import "ViewController.h"
#define CURRENT_LAT 45.52
#define CURRENT_LONG -122.6819

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString *url = [NSString stringWithFormat:@"https://api.forecast.io/forecast/6e9c4bced2c2ac9edcfe5a2bc7337f6f/%f,%f", CURRENT_LAT, CURRENT_LONG];
    
    NSURL *weatherUrl = [NSURL URLWithString:url];
    
    NSData *jsonData = [NSData dataWithContentsOfURL:weatherUrl];
    
    NSDictionary *dataDictionary = [NSJSONSerialization JSONObjectWithData:jsonData options:0 error: nil];
    
    NSLog(@"%@", dataDictionary);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
