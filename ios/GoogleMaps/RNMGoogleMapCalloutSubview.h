//
//  RNMGoogleMapCalloutSubview.h
//  RNMaps
//
//  Created by Denis Oblogin on 10/8/18.
//
//

#ifdef HAVE_GOOGLE_MAPS

#import <UIKit/UIKit.h>
#import <React/RCTView.h>

@interface RNMGoogleMapCalloutSubview : UIView
@property (nonatomic, copy) RCTBubblingEventBlock onPress;
@end

#endif
