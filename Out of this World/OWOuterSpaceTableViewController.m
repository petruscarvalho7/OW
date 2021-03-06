//
//  OWOuterSpaceTableViewController.m
//  Out of this World
//
//  Created by Petrus Carvalho on 04/11/14.
//  Copyright (c) 2014 Petrus Carvalho. All rights reserved.
//

#import "OWOuterSpaceTableViewController.h"

@interface OWOuterSpaceTableViewController ()

@end

@implementation OWOuterSpaceTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    self.planetas = [[NSMutableArray alloc] init];
    
    //Planetas
    NSString *planeta1 = @"Mercurio";
    NSString *planeta2 = @"Marte";
    NSString *planeta3 = @"Jupiter";
    NSString *planeta4 = @"Netuno";
    NSString *planeta5 = @"Terra";
    NSString *planeta6 = @"Uranio";
    
    [self.planetas addObject:planeta1];
    [self.planetas addObject:planeta2];
    [self.planetas addObject:planeta3];
    [self.planetas addObject:planeta4];
    [self.planetas addObject:planeta5];
    [self.planetas addObject:planeta6];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return [self.planetas count];

}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *identificadorCell = @"Celula";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identificadorCell forIndexPath:indexPath];
    
    // Configure the cell...
    
    cell.textLabel.text = [self.planetas objectAtIndex:indexPath.row];
    
    if(indexPath.section == 0){
        cell.backgroundColor = [UIColor redColor];
        
    }else{
        cell.backgroundColor = [UIColor blueColor];
        
    }
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
