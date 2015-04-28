//
//  SBRNetworking.h
//  Sample
//
//  Created by Kingfisher on 4/19/15.
//  Copyright (c) 2015 __ASU__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SBRNetworking : NSObject

+ (id)sharedManager;
- (void)sendDataRequestForURL: (NSURL *)url
                  withSuccess: (void (^)(NSDictionary *responseData))successHandler;

@end
