//
// DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
// Version 2, December 2004
//
// Created by Neil Cronin <neil@rackle.com> on 5/13/11.
//
// Everyone is permitted to copy and distribute verbatim or modified
// copies of this license document, and changing it is allowed as long
// as the name is changed.
//
// DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
// TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION
//
// 0. You just DO WHAT THE FUCK YOU WANT TO.
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

