//
//  DetailViewController.m
//  POCApplication
//
//  Created by Arun on 11/28/16.
//  Copyright © 2016 Salesforce. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(id)initWithName:(NSString *)name withPrice:(NSNumber *)price andQuantity:(NSNumber *)quantity {
    self=[super self];
    if(self) {
        self.namedata=name;
        self.pricedata=price;
        self.quantitydata=quantity;
    }
    return self;
}

- (IBAction)TouchesInside:(id)sender {
    NSDictionary *feilds=[NSDictionary dictionaryWithObjectsAndKeys:[QuantityField text],@"Quantity__c",[PriceField text],@"Price__c", nil];
    SFRestRequest *request=[[SFRestAPI sharedInstance] requestForUpdateWithObjectType:@"Merchandise__c" objectId:self.idData fields:feilds];
    [[SFRestAPI sharedInstance] send:request delegate:self];

}

-(void)request:(SFRestRequest *)request didLoadResponse:(nonnull id)dataResponse{
    NSLog(@"Success!");
}


-(void)viewDidAppear:(BOOL)animated
{
    [NameField setText:self.namedata];
    [QuantityField setText:[NSString stringWithFormat:@"%@",self.quantitydata]];
    [PriceField setText:[NSString stringWithFormat:@"%@",self.pricedata]];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
