//
//  NewsController.h
//  tripi wallet
//
//  Created by Heaving Line on 07.02.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NewsOutput.h"

@interface NewsController : BaseViewController <NewsOutput>

@property (weak, nonatomic) id <NewsOutputDelegate> delegate;

@end
