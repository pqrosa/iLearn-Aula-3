//
//  main.m
//  TimesFutebol
//
//  Created by Philippe Rosa on 3/27/13.
//  Copyright (c) 2013 O2C Hipermídia. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "AppDelegate.h"
#import "Campeonato.h"
#import "Time.h"

int main(int argc, char *argv[])
{
    @autoreleasepool {
        
        Campeonato * brasileirao = [[Campeonato alloc] init];
        NSArray * timesOrdenados = [brasileirao timesOrdenadosPorGols];
        
        for (int i=0; i<timesOrdenados.count; i++){
            Time * _time = [timesOrdenados objectAtIndex:i];
            NSLog(@"%@ - %@\n", _time.gols, _time.nome);
        }

        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
