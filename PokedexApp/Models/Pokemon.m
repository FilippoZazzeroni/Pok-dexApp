//
//  Pokemon.m
//  PokedexApp
//
//  Created by Filippo Zazzeroni on 21/07/22.
//

#import <Foundation/Foundation.h>
#import "Pokemon.h"

@implementation Pokemon

- (instancetype)init:(NSString*)name urlForPokemon:(NSString*)url {
    _pokemonApi = url;
    _name = name;
    return self;
}

@end

