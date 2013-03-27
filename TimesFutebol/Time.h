//
//  Time.h
//  TimesFutebol
//
//  Created by Philippe Rosa on 3/27/13.
//  Copyright (c) 2013 O2C Hipermídia. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Time : NSObject{
    NSString * nome;
    NSNumber * gols;
    NSString * estado;
}

@property (nonatomic, strong) NSString * nome;
@property (nonatomic, strong) NSNumber * gols;
@property (nonatomic, strong) NSString * estado;

- (id) initWithName: (NSString *)_name andDictionary: (NSDictionary *)_dicionario;

@end
