//
//  ViewController.h
//  BasicWeatherApp
//
//  Created by Katherine Wu on 1/28/16.
//  Copyright © 2016 Katherine Wu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) NSMutableDictionary *weatherForecasts;
@property (weak, nonatomic) IBOutlet UILabel *lblTemperature;
@property (weak, nonatomic) IBOutlet UILabel *lblHumidity;
@property (weak, nonatomic) IBOutlet UILabel *lblPrecipProb;
@property (weak, nonatomic) IBOutlet UILabel *lblWeatherSummary;
@property (weak, nonatomic) IBOutlet UIImageView *imgWeatherIcon;

@end

