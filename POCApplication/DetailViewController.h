//
//  DetailViewController.h
//  POCApplication
//
//  Created by Arun on 11/28/16.
//  Copyright © 2016 Salesforce. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <SalesforceRestAPI/SalesforceRestAPI.h>

@interface DetailViewController : UIViewController
{
    
    __weak IBOutlet UITextField *NameField;
    __weak IBOutlet UITextField *PriceField;
    __weak IBOutlet UITextField *QuantityField;
}

@property (nonatomic,strong) NSString *namedata;
@property (nonatomic,strong) NSNumber *pricedata;
@property (nonatomic,strong) NSNumber *quantitydata;
@property(nonatomic,strong) NSString *idData;


-(id)initWithName:(NSString *)name withPrice:(NSNumber*)price andQuantity:(NSNumber *)quantity;

- (IBAction)TouchesInside:(id)sender;


@end
