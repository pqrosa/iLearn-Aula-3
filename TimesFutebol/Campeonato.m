//
//  Campeonato.m
//  TimesFutebol
//
//  Created by Philippe Rosa on 3/27/13.
//  Copyright (c) 2013 O2C Hipermídia. All rights reserved.
//

#import "Campeonato.h"
#import "Time.h"

@implementation Campeonato

@synthesize times;

+ (NSArray *) parser{
    NSMutableArray * retorno = [[NSMutableArray alloc] init];
    
    NSString * path = [[NSBundle mainBundle] pathForResource:@"Times" ofType:@"plist"];
    
//  The file identified by path must contain a string representation of a property list whose root object is a dictionary.
//  O arquivo Times.plist tem como objeto raiz um dictionary e não um array, como descrito no enunciado.

    NSDictionary * plistDictionary = [NSDictionary dictionaryWithContentsOfFile:path];
    
    NSArray * plistKeysArray = [plistDictionary allKeys];
    
    for(int i=0; i<plistDictionary.count; i++){
        NSString * _nome = [plistKeysArray objectAtIndex:i];
        NSDictionary * _dicionario = [plistDictionary objectForKey:[plistKeysArray objectAtIndex:i]];
        Time * _time = [[Time alloc] initWithName:_nome andDictionary:_dicionario];
        [retorno addObject:_time];
    }
    
    return retorno;
}

- (id)init
{
    self = [super init];
    if (self) {
        times = [Campeonato parser];
    }
    return self;
}

- (NSArray *)timesOrdenadosPorGols{
    
    NSSortDescriptor *golsDescriptor = [[NSSortDescriptor alloc] initWithKey:@"gols" ascending:NO];
    
    NSArray *sortDescriptors = @[golsDescriptor];
    
    NSArray *sortedArray = [self.times sortedArrayUsingDescriptors:sortDescriptors];
    
    return sortedArray;

}

@end
