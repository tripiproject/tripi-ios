//
//  QStoreTemplateFunctionCell.h
//  tripi wallet
//
//  Created by Heaving Line on 24.08.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <UIKit/UIKit.h>

static NSString *qstoreTemplateFunctionCellFunctionIdentifire = @"QStoreTemplateFunctionCellFunctionIdentifire";
static NSString *qstoreTemplateFunctionCellPropertyIdentifire = @"QStoreTemplateFunctionCellPropertyIdentifire";

@interface QStoreTemplateFunctionCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *methodName;

@end
