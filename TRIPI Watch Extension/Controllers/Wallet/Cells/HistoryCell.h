//
//  HistoryCell.h
//  tripi wallet
//
//  Created by Sharaev Vladimir on 13.06.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <WatchKit/WatchKit.h>

@interface HistoryCell : NSObject

@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceGroup *leftBorder;
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceLabel *amount;
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceLabel *address;
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceLabel *date;

@end
