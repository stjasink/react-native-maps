//
//  RNMGoogleMapPolylgoneManager.m
//
//  Created by Nick Italiano on 10/22/16.
//

#ifdef HAVE_GOOGLE_MAPS
#import "RNMGoogleMapPolygonManager.h"

#import <React/RCTBridge.h>
#import <React/RCTConvert.h>
#import <React/RCTConvert+CoreLocation.h>
#import <React/RCTEventDispatcher.h>
#import <React/RCTViewManager.h>
#import <React/UIView+React.h>
#import "RCTConvert+RNMMap.h"
#import "RNMGoogleMapPolygon.h"

@interface RNMGoogleMapPolygonManager()

@end

@implementation RNMGoogleMapPolygonManager

RCT_EXPORT_MODULE(RNMGoogleMapPolygon)

- (UIView *)view
{
  RNMGoogleMapPolygon *polygon = [RNMGoogleMapPolygon new];
  polygon.bridge = self.bridge;
  return polygon;
}

RCT_EXPORT_VIEW_PROPERTY(coordinates, RNMMapCoordinateArray)
RCT_EXPORT_VIEW_PROPERTY(holes, RNMMapCoordinateArrayArray)
RCT_EXPORT_VIEW_PROPERTY(fillColor, UIColor)
RCT_EXPORT_VIEW_PROPERTY(strokeWidth, double)
RCT_EXPORT_VIEW_PROPERTY(strokeColor, UIColor)
RCT_EXPORT_VIEW_PROPERTY(geodesic, BOOL)
RCT_EXPORT_VIEW_PROPERTY(zIndex, int)
RCT_EXPORT_VIEW_PROPERTY(tappable, BOOL)
RCT_EXPORT_VIEW_PROPERTY(onPress, RCTBubblingEventBlock)

@end

#endif
