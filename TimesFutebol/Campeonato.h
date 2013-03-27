//
//  Campeonato.h
//  TimesFutebol
//
//  Created by Philippe Rosa on 3/27/13.
//  Copyright (c) 2013 O2C Hipermídia. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Campeonato : NSObject{
    NSArray * times;
}

@property (nonatomic, strong) NSArray * times;

//  Pega o arquivo times.plist e converte em um array cujos elementos são times
+ (NSArray *) parser;

//  Pega os times de um campeonato e retorna um array cujos elementos são times, de forma ordenada (decrescente) por gols
- (NSArray *) timesOrdenadosPorGols;

@end
