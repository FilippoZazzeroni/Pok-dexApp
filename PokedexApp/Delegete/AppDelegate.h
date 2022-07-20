//
//  AppDelegate.h
//  PokedexApp
//
//  Created by Filippo Zazzeroni on 19/07/22.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

