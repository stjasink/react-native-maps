//
//  RNMMapUrlTileManager.m
//  RNMaps
//
//  Created by cascadian on 3/19/16.
//  Copyright © 2016. All rights reserved.
//

#import <React/RCTBridge.h>
#import <React/RCTConvert.h>
#import <React/RCTConvert+CoreLocation.h>
#import <React/RCTEventDispatcher.h>
#import <React/RCTViewManager.h>
#import <React/UIView+React.h>
#import "RNMMapMarker.h"
#import "RNMMapUrlTile.h"

#import "RNMMapUrlTileManager.h"

@interface RNMMapUrlTileManager()

@end

@implementation RNMMapUrlTileManager


RCT_EXPORT_MODULE(RNMMapUrlTile)

- (UIView *)view
{
    RNMMapUrlTile *tile = [RNMMapUrlTile new];
    return tile;
}

RCT_EXPORT_VIEW_PROPERTY(urlTemplate, NSString)
RCT_EXPORT_VIEW_PROPERTY(maximumZ, NSInteger)
RCT_EXPORT_VIEW_PROPERTY(maximumNativeZ, NSInteger)
RCT_EXPORT_VIEW_PROPERTY(minimumZ, NSInteger)
RCT_EXPORT_VIEW_PROPERTY(flipY, BOOL)
RCT_EXPORT_VIEW_PROPERTY(shouldReplaceMapContent, BOOL)
RCT_EXPORT_VIEW_PROPERTY(tileSize, NSInteger)
RCT_EXPORT_VIEW_PROPERTY(tileCachePath, NSString)
RCT_EXPORT_VIEW_PROPERTY(tileCacheMaxAge, NSInteger)
RCT_EXPORT_VIEW_PROPERTY(offlineMode, BOOL)
RCT_EXPORT_VIEW_PROPERTY(opacity, CGFloat)

@end
