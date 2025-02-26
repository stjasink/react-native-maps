//
//  RNMMapWMSTileManager.m
//  RNMaps
//
//  Created by nizam on 10/28/18.
//  Copyright © 2018. All rights reserved.
//


#import <React/RCTBridge.h>
#import <React/RCTConvert.h>
#import <React/RCTConvert+CoreLocation.h>
#import <React/RCTEventDispatcher.h>
#import <React/RCTViewManager.h>
#import <React/UIView+React.h>
#import "RNMMapMarker.h"
#import "RNMMapWMSTile.h"

#import "RNMMapWMSTileManager.h"

@interface RNMMapWMSTileManager()

@end

@implementation RNMMapWMSTileManager


RCT_EXPORT_MODULE(RNMMapWMSTile)

- (UIView *)view
{
    RNMMapWMSTile *tile = [RNMMapWMSTile new];
    return tile;
}

RCT_EXPORT_VIEW_PROPERTY(urlTemplate, NSString)
RCT_EXPORT_VIEW_PROPERTY(maximumZ, NSInteger)
RCT_EXPORT_VIEW_PROPERTY(maximumNativeZ, NSInteger)
RCT_EXPORT_VIEW_PROPERTY(minimumZ, NSInteger)
RCT_EXPORT_VIEW_PROPERTY(shouldReplaceMapContent, BOOL)
RCT_EXPORT_VIEW_PROPERTY(tileSize, NSInteger)
RCT_EXPORT_VIEW_PROPERTY(tileCachePath, NSString)
RCT_EXPORT_VIEW_PROPERTY(tileCacheMaxAge, NSInteger)
RCT_EXPORT_VIEW_PROPERTY(offlineMode, BOOL)
RCT_EXPORT_VIEW_PROPERTY(opacity, CGFloat)

@end
