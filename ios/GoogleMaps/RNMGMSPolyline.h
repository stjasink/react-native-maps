//
//  RNMGMSPolyline.h
//  RNMaps
//
//  Created by Guilherme Pontes 04/05/2017.
//

#ifdef HAVE_GOOGLE_MAPS

#import <GoogleMaps/GoogleMaps.h>
#import <React/UIView+React.h>

@class RNMGoogleMapPolyline;

@interface RNMGMSPolyline : GMSPolyline
@property (nonatomic, strong) NSString *identifier;
@property (nonatomic, copy) RCTBubblingEventBlock onPress;
@end

#endif
