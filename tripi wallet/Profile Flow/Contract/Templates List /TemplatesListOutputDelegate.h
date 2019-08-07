//
//  TemplatesListOutputDelegate.h
//  tripi wallet
//
//  Created by Heaving Line on 28.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol TemplatesListOutputDelegate <NSObject>

- (void)didSelectTemplateIndexPath:(NSIndexPath *) indexPath withName:(TemplateModel *) templateModel;

- (void)didPressedBack;

@end
