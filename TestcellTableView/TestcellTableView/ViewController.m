//
//  ViewController.m
//  TestcellTableView
//
//  Created by 左建军 on 14-9-13.
//  Copyright (c) 2014年 com.lanou3g. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (dddd)<UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, strong) NSArray *dataArray;

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    UIView *view = [[UILabel alloc] init];
    
    [super viewDidLoad];
    UIAlertView *alert = [[UIAlertView alloc] init];
    UITextField * txt = [[UITextField alloc] init];
    txt.backgroundColor = [UIColor whiteColor];
    txt.frame = CGRectMake(alert.center.x+65,alert.center.y+48, 150,23);
    [alert addSubview:txt];
//    alert.alertViewStyle = UIAlertViewStylePlainTextInput;
    [txt becomeFirstResponder];
    [alert show];
    
	// Do any additional setup after loading the view, typically from a nib.
    NSDictionary *row1 = [[NSDictionary alloc]initWithObjectsAndKeys:
                          @"Action1 Action1 Action1！",@"Name", @"Location1", @"Color",nil];
    
    NSDictionary *row2 = [[NSDictionary alloc]initWithObjectsAndKeys:
                          
                          @"Action2 Action2 Action2 Action2 Action2 Action2 Action2 Action2 Action2! End!",@"Name",@"Location2", @"Color",nil];
    
    NSDictionary *row3 = [[NSDictionary alloc]initWithObjectsAndKeys:
                          @"Action3",@"Name", @"Location3",@"Color",nil];
    
    NSDictionary *row4 = [[NSDictionary alloc]initWithObjectsAndKeys:
                          @"Action4 Action4!",@"Name", @"Location4", @"Color",nil];
    
    NSDictionary *row5 = [[NSDictionary alloc]initWithObjectsAndKeys:                          @"Action5Action5Action5Action5Action5+1+2+3+4+5+6+7+8+9+10+11+12+13+14+15+16+17+18+19+20+21+22+23+24+25+26+27+28+End!",@"Name",@"Location5", @"Color",nil];
    
    NSDictionary *row6 = [[NSDictionary alloc]initWithObjectsAndKeys:
                          @"Action6 Action6 Action6 Action6 Action6! End!",@"Name", @"Location6", @"Color",nil];
    
    
    NSArray *array = [[NSArray alloc]initWithObjects:row1, row2,
                      row3, row4, row5, row6,nil];
    self.dataArray = array;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.dataArray count];
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CustomCellIdentifier = @"cell";
    UITableViewCell *cell = [tableView                             dequeueReusableCellWithIdentifier: CustomCellIdentifier];
    
    NSUInteger row = [indexPath row];
    UILabel *contentLabel = (UILabel *)[cell viewWithTag:10];
    NSDictionary *rowData = [self.dataArray objectAtIndex:row];
    CGSize size = CGSizeMake(100,2000);
    UIFont *font = [UIFont fontWithName:@"Arial"size:12];
    NSString *labelText = [rowData objectForKey:@"Name"];
    CGSize labelsize = [labelText sizeWithFont:font constrainedToSize:size lineBreakMode:UILineBreakModeWordWrap];
    [contentLabel setFrame:CGRectMake(contentLabel.frame.origin.x, contentLabel.frame.origin.y, contentLabel.frame.size.width, labelsize.height)];
    contentLabel.text = [rowData objectForKey:@"Name"];
    [contentLabel sizeToFit];
    
    return cell;
}
- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [self tableView:tableView cellForRowAtIndexPath:indexPath];
    
    UILabel *nameLabel = (UILabel *)[cell viewWithTag:10];
    return 44 + ((nameLabel.frame.size.height - 22) > 0 ? (nameLabel.frame.size.height - 22) : 0);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    if ([self isViewLoaded] && !self.view.window)
    {
        self.view = nil;
    }
    
}

@end
