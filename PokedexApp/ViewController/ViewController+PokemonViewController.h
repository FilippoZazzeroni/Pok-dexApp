//
//  ViewController+PokemonViewController.h
//  PokedexApp
//
//  Created by Filippo Zazzeroni on 23/07/22.
//

#import "ViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface PokemonViewController : UIViewController

@property (strong, nonatomic) NSString* pokemonImageApi;

- (void)setPokemonImageApi:(NSString * _Nonnull)pokemonImageApi;

@end

NS_ASSUME_NONNULL_END
