//
//  XYZViewController.m
//  proj1
//
//  Created by Seebast4ever on 7/14/14.
//  Copyright (c) 2014 Seebast4ever. All rights reserved.
//

#import "XYZViewController.h"

@interface XYZViewController ()
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (nonatomic, readonly) UIView *contentView;
@end

@implementation XYZViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Toggle" style:UIBarButtonItemStylePlain target:self action:@selector(toggleLayout)];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 6    ;//how many items are in the collection view
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(100.0f, 100.0f);//sets the height and width of the cells
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath//index path is the location of the cell in the collection view, Ex. 0,1; 0,2; etc (section, number)
{
    NSString *cellIdentifier = @"cell0";
    if (indexPath.item == 1)
    {
        cellIdentifier = @"cell1";
    }
    else if (indexPath.item == 2)
    {
       cellIdentifier = @"cell2";
    }
    else if (indexPath.item == 3)
    {
        cellIdentifier = @"cell3";
    }
    else if (indexPath.item == 4)
    {
        cellIdentifier = @"cell4";
    }
    else if (indexPath.item == 5)
    {
        cellIdentifier = @"cell5";
    }
    UICollectionViewCell *rtnCell1 = [collectionView dequeueReusableCellWithReuseIdentifier:cellIdentifier forIndexPath:indexPath];
    return rtnCell1;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    
}

#pragma mark - Button Actions
- (void)toggleLayout
{
    
}
@end
