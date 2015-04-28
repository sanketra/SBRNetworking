//
//  SBRNetworking.m
//  Sample
//
//  Created by Kingfisher on 4/19/15.
//  Copyright (c) 2015 __ASU__. All rights reserved.
//

#import "SBRNetworking.h"

@implementation SBRNetworking

#pragma mark Singleton Methods

+ (id)sharedManager {
    static SBRNetworking *sharedMyManager = nil;
    
    @synchronized(self) {
        if (sharedMyManager == nil)
            sharedMyManager = [[self alloc] init];
    }
    return sharedMyManager;
}

- (void)sendDataRequestForURL: (NSURL *)url
                  withSuccess: (void (^)(NSDictionary *responseData))successHandler {
    NSURLSessionTask *task = [[NSURLSession sharedSession] dataTaskWithURL:url
                                                         completionHandler:
                              ^(NSData *data, NSURLResponse *response, NSError *error) {
                                  
                                  if (data) {
                                      NSError *err = nil;
                                      NSDictionary *dictResponse = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&err];
                                      NSLog(@"[GET] Response for %@",url);
                                      NSLog(@"[%@] => %@",url, dictResponse);
                                      successHandler(dictResponse);
                                  } else {
                                      NSLog(@"Failed to fetch %@: %@", url, error);
                                  }
                              }];
    [task resume];
}

@end
