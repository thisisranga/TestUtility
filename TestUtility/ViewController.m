//
//  ViewController.m
//  TestUtility
//
//  Created by Ranga Reddy Nallavelli on 3/16/17.
//  Copyright © 2017 Ranga. All rights reserved.
//

#import "ViewController.h"
#import "SorterMaster.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)sorterExample {
    SorterMaster *sorter = [[SorterMaster alloc] init];
    NSMutableArray *unsortedArray = [NSMutableArray arrayWithArray:@[@63,@52,@103,@21,@45,@67,@106, @112, @1,@20,@37,@43]];
//    NSMutableArray *unsortedArray = [NSMutableArray arrayWithArray:@[@"63",@"52",@"103",@"21",@"45",@"67",@"106", @"112", @"1",@"20",@"37",@"43"]];
    dispatch_queue_t aQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_async(aQueue, ^{
        NSArray *bubbleSortedArray = [sorter sortUsingBubbleSort:unsortedArray];
        NSLog(@"bubble sorted Array = %@", bubbleSortedArray);
        NSArray *selectionSortedArray = [sorter sortUsingSelectionSort:unsortedArray];
        NSLog(@"selection sorted Array = %@", selectionSortedArray);
        NSArray *mergeSortedArray = [sorter sortUsingMergeSort:unsortedArray];
        NSLog(@"merge sorted Array = %@", mergeSortedArray);
    });
   
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self sorterExample];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
