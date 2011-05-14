//
//  WhereAmI.h
//  WhereAmI
//
//

#import <Cocoa/Cocoa.h>
#import <CoreLocation/CoreLocation.h>

@interface WhereAmI : NSObject <CLLocationManagerDelegate> {
	CLLocationManager *locationManager;   
    BOOL finished;
}

@property BOOL finished;

- (void)startLocating:(id) sender;

@end
