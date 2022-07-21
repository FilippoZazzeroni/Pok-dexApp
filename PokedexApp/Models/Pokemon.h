//
//  Pokemon.h
//  PokedexApp
//
//  Created by Filippo Zazzeroni on 21/07/22.
//

#ifndef Pokemon_h
#define Pokemon_h

@interface Pokemon : NSObject
    @property (strong, nonatomic) NSString *name;
    @property (strong, nonatomic) NSString *pokemonApi;

    + (void)injectData: (NSString*)name urlForPokemon:(NSString*)url;
@end


#endif /* Pokemon_h */
