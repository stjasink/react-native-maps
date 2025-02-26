//
//  RNMMapUrlTileCachedOverlay.h
//  RNMaps
//
//  Created by Markus Suomi on 10/04/2021.
//

#import <MapKit/MapKit.h>

@interface RNMMapUrlTileCachedOverlay : MKTileOverlay

@property NSInteger maximumNativeZ;
@property (nonatomic, copy) NSURL *tileCachePath;
@property NSInteger tileCacheMaxAge;
@property BOOL offlineMode;

@end
