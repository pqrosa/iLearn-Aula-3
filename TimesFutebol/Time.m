//
//  Time.m
//  TimesFutebol
//
//  Created by Philippe Rosa on 3/27/13.
//  Copyright (c) 2013 O2C Hipermídia. All rights reserved.
//

#import "Time.h"

@implementation Time

@synthesize nome, gols, estado;

- (id)initWithName:(NSString *)_nome andDictionary:(NSDictionary *)_dicionario
{
    self = [super init];
    if (self) {
        self.nome = _nome;
        self.gols = [_dicionario objectForKey:@"gols"];
        self.estado = [_dicionario objectForKey:@"estado"];
    }
    return self;
}

@end
