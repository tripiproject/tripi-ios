//
//  ServerAdapter.h
//  tripi wallet
//
//  Created by Heaving Line on 21.03.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ServerAdapter : NSObject <RequestManagerAdapter>

- (id)adaptiveDataForHistory:(id) data;

- (id)adaptiveDataForOutputs:(id) data;

@end
