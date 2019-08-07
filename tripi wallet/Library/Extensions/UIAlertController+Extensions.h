//
//  UIAlertController+Extensions.h
//  tripi wallet
//
//  Created by Heaving Line on 12.12.16.
//  Copyright © 2016 TRIPI. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^ActionHandler)(UIAlertAction *action);

@interface UIAlertController (Extensions)

+ (UIAlertController *)warningMessageWithSettingsButtonAndTitle:(NSString *) title message:(NSString *) text withActionHandler:(ActionHandler) completion;

@end
