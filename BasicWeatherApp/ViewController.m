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
    
//    NSLog(@"%@", dataDictionary);
    
    self.weatherForecasts = [NSMutableDictionary dictionary];
    self.weatherForecasts = [dataDictionary objectForKey:@"currently"];
    
//    NSLog(@"%@", self.weatherForecasts);
    
    self.currentTemperature = [self.weatherForecasts objectForKey:@"apparentTemperature"];
    self.currentHumidity = [self.weatherForecasts objectForKey:@"humidity"];
    self.currentPrecipProb = [self.weatherForecasts objectForKey:@"precipProbability"];
    self.currentWeatherSummary = [self.weatherForecasts objectForKey:@"summary"];
    self.currentWeatherIcon = [self.weatherForecasts objectForKey:@"icon"];
    
//    NSLog(@"%@", self.currentTemperature);
    
    self.lblTemperature.text = [NSString stringWithFormat: @"%@", self.currentTemperature];
    self.lblHumidity.text = [NSString stringWithFormat: @"%@", self.currentHumidity];
    self.lblPrecipProb.text = [NSString stringWithFormat: @"%@", self.currentPrecipProb];
    self.lblWeatherSummary.text = [NSString stringWithFormat: @"%@", self.currentWeatherSummary];
    NSLog(@"%@", self.currentWeatherIcon);
    if ([self.currentWeatherIcon isEqualToString: @"clear-day"])
    {
        self.imgWeatherIcon.image = [UIImage imageNamed:@"clear-day"];
    }
    else if ([self.currentWeatherIcon isEqualToString: @"clear-night"])
    {
        self.imgWeatherIcon.image = [UIImage imageNamed:@"clear-day"];
    }
    else if ([self.currentWeatherIcon isEqualToString: @"rain"])
    {
        self.imgWeatherIcon.image = [UIImage imageNamed:@"rain"];
    }
    else if ([self.currentWeatherIcon isEqualToString: @"snow"])
    {
        self.imgWeatherIcon.image = [UIImage imageNamed:@"snow"];
    }
    else if ([self.currentWeatherIcon isEqualToString: @"sleet"])
    {
        self.imgWeatherIcon.image = [UIImage imageNamed:@"sleet"];
    }
    else if ([self.currentWeatherIcon isEqualToString: @"wind"])
    {
        self.imgWeatherIcon.image = [UIImage imageNamed:@"wind"];
    }
    else if ([self.currentWeatherIcon isEqualToString: @"fog"])
    {
        self.imgWeatherIcon.image = [UIImage imageNamed:@"fog"];
    }
    else if ([self.currentWeatherIcon isEqualToString: @"cloudy"])
    {
        self.imgWeatherIcon.image = [UIImage imageNamed:@"cloudy"];
    }
    else if ([self.currentWeatherIcon isEqualToString: @"partly-cloudy-day"])
    {
        self.imgWeatherIcon.image = [UIImage imageNamed:@"cloudy-day"];
    }
    else if ([self.currentWeatherIcon isEqualToString: @"partly-cloudy-night"])
    {
        self.imgWeatherIcon.image = [UIImage imageNamed:@"cloudy-night"];
    }
    else
    {
        self.imgWeatherIcon.image = [UIImage imageNamed:@"default"];
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
