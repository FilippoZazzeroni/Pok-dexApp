//
//  ViewController.m
//  PokedexApp
//
//  Created by Filippo Zazzeroni on 19/07/22.
//

#import "ViewController.h"
#import "Pokemon.h"


@interface ViewController ()

    @property (weak, nonatomic) IBOutlet UITableView *tableView;

    @property (strong, nonatomic) NSString* apiCall;

    @property (strong, nonatomic) NSMutableArray* pokemon;

    - (IBAction)fetchPokedex:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [_tableView setDelegate: self];
    [_tableView setDataSource: self];
    _pokemon = [[NSMutableArray alloc] init];
    _apiCall = @"https://pokeapi.co/api/v2/pokemon?limit=100000&offset=0";
    
}


- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"pokemonCell"];
    cell.textLabel.text = _pokemon[indexPath.item][@"name"];
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _pokemon.count;
}

- (IBAction)fetchPokedex:(id)sender {
    [self makeAPICall];
}

- (void)makeAPICall {
    NSMutableURLRequest *urlRequest = [[NSMutableURLRequest alloc] initWithURL:[NSURL URLWithString:_apiCall]];

    [urlRequest setHTTPMethod:@"GET"];

    NSURLSession *session = [NSURLSession sharedSession];

    NSURLSessionDataTask *dataTask = [session dataTaskWithRequest:urlRequest completionHandler:^(NSData *data, NSURLResponse *response, NSError *error)
    {
      NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *)response;
      if(httpResponse.statusCode == 200)
      {
          NSError *parseError = nil;
          NSDictionary *responseDictionary = [NSJSONSerialization JSONObjectWithData:data options:0 error:&parseError];
          NSMutableArray *pokemonRaw = responseDictionary[@"results"];
          self->_pokemon = pokemonRaw;
          dispatch_async(dispatch_get_main_queue(), ^{
              [self->_tableView reloadData];
          });
          
      }
      else
      {
        NSLog(@"Error");
      }
    }];
    [dataTask resume];
}

@end
                                      

                                      
