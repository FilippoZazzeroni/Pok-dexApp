//
//  ViewController.m
//  PokedexApp
//
//  Created by Filippo Zazzeroni on 19/07/22.
//

#import "ViewController.h"

@interface ViewController ()

    @property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [_tableView setDelegate: self];
    [_tableView setDataSource: self];
    
}


- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    return [tableView dequeueReusableCellWithIdentifier:@"pokemonCell"];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}


@end
