//
//  WhereAmI.m
//  WhereAmI
//
//  Created by Neil Cronin on 5/13/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "WhereAmI.h"


@implementation WhereAmI

@synthesize finished;

- (id)init
{
    [super init];
    return self;
}

- (void)startLocating:(id) sender
{
    self.finished = NO;
	locationManager = [[CLLocationManager alloc] init];
	locationManager.delegate = self;
	[locationManager startUpdatingLocation];
}

- (void)locationManager:(CLLocationManager *)manager
	didUpdateToLocation:(CLLocation *)newLocation
           fromLocation:(CLLocation *)oldLocation
{    
    if (newLocation.coordinate.longitude == oldLocation.coordinate.longitude &&
		newLocation.coordinate.latitude == oldLocation.coordinate.latitude &&
		newLocation.horizontalAccuracy == oldLocation.horizontalAccuracy)
	{
		return;
	}
    
    
    [[NSString stringWithFormat:@"%f %f\n",newLocation.coordinate.latitude, newLocation.coordinate.longitude] writeToFile: @"/dev/stdout"atomically: NO];
    self.finished = YES;
    exit(1);
}


@end

