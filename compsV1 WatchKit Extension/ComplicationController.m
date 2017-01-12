//
//  ComplicationController.m
//  compsV1 WatchKit Extension
//
//  Created by Vinod Ramanathan on 11/01/17.
//  Copyright © 2017 Vinod Ramanathan. All rights reserved.
//

#import "ComplicationController.h"

@interface ComplicationController ()

@end

@implementation ComplicationController

#pragma mark - Timeline Configuration

- (void)getSupportedTimeTravelDirectionsForComplication:(CLKComplication *)complication withHandler:(void(^)(CLKComplicationTimeTravelDirections directions))handler {
    handler(CLKComplicationTimeTravelDirectionForward|CLKComplicationTimeTravelDirectionBackward);
}

- (void)getTimelineStartDateForComplication:(CLKComplication *)complication withHandler:(void(^)(NSDate * __nullable date))handler {
    handler(nil);
}

- (void)getTimelineEndDateForComplication:(CLKComplication *)complication withHandler:(void(^)(NSDate * __nullable date))handler {
    handler(nil);
}

- (void)getPrivacyBehaviorForComplication:(CLKComplication *)complication withHandler:(void(^)(CLKComplicationPrivacyBehavior privacyBehavior))handler {
    handler(CLKComplicationPrivacyBehaviorShowOnLockScreen);
}

#pragma mark - Timeline Population

- (void)getCurrentTimelineEntryForComplication:(CLKComplication *)complication withHandler:(void(^)(CLKComplicationTimelineEntry * __nullable))handler {
    // Call the handler with the current timeline entry
   
    switch (complication.family) {
        case CLKComplicationFamilyCircularSmall:
        {
            CLKComplicationTemplateCircularSmallSimpleImage *cirComps = [[CLKComplicationTemplateCircularSmallSimpleImage alloc]init];
            cirComps.imageProvider = [CLKImageProvider imageProviderWithOnePieceImage:[UIImage imageNamed:@"Complication/Circular"] twoPieceImageBackground:NULL twoPieceImageForeground:NULL];
            cirComps.tintColor = [UIColor blueColor];
            CLKComplicationTimelineEntry  *cirTimeline =[CLKComplicationTimelineEntry entryWithDate:[NSDate date] complicationTemplate:cirComps];
            handler(cirTimeline);
            break;
        }
            
        case CLKComplicationFamilyExtraLarge:
        {
            CLKComplicationTemplateExtraLargeSimpleImage *xlComps = [[CLKComplicationTemplateExtraLargeSimpleImage alloc]init];
            xlComps.imageProvider = [CLKImageProvider imageProviderWithOnePieceImage:[UIImage imageNamed:@"Complication/Extra Large"] twoPieceImageBackground:NULL twoPieceImageForeground:NULL];
            xlComps.tintColor= [UIColor blueColor];
            CLKComplicationTimelineEntry *xlTimeline = [CLKComplicationTimelineEntry entryWithDate:[NSDate date] complicationTemplate:xlComps];
            handler(xlTimeline);
            break;
        }
         
        case CLKComplicationFamilyModularSmall:
        {
            CLKComplicationTemplateModularSmallSimpleImage *modComps = [[CLKComplicationTemplateModularSmallSimpleImage alloc]init];
            modComps.imageProvider = [CLKImageProvider imageProviderWithOnePieceImage:[UIImage imageNamed:@"Complication/Modular"] twoPieceImageBackground:NULL twoPieceImageForeground:NULL];
            modComps.tintColor = [UIColor blueColor];
            CLKComplicationTimelineEntry *modTimeline = [CLKComplicationTimelineEntry entryWithDate:[NSDate date] complicationTemplate:modComps];
            handler(modTimeline);
            break;
        }
            
        
        case CLKComplicationFamilyUtilitarianSmall:
        {
            CLKComplicationTemplateUtilitarianSmallSquare *utilComps = [[CLKComplicationTemplateUtilitarianSmallSquare alloc]init];
            utilComps.imageProvider = [CLKImageProvider imageProviderWithOnePieceImage:[UIImage imageNamed:@"Complication/Utilitarian"] twoPieceImageBackground:NULL twoPieceImageForeground:NULL];
            utilComps.tintColor = [UIColor blueColor];
            CLKComplicationTimelineEntry *utilTimeline = [CLKComplicationTimelineEntry entryWithDate:[NSDate date] complicationTemplate:utilComps];
            handler(utilTimeline);
            break;
        }
            
            
            
        default:
        break;
    }
    
    
}

- (void)getTimelineEntriesForComplication:(CLKComplication *)complication beforeDate:(NSDate *)date limit:(NSUInteger)limit withHandler:(void(^)(NSArray<CLKComplicationTimelineEntry *> * __nullable entries))handler {
    // Call the handler with the timeline entries prior to the given date
    handler(nil);
}

- (void)getTimelineEntriesForComplication:(CLKComplication *)complication afterDate:(NSDate *)date limit:(NSUInteger)limit withHandler:(void(^)(NSArray<CLKComplicationTimelineEntry *> * __nullable entries))handler {
    // Call the handler with the timeline entries after to the given date
    handler(nil);
}

#pragma mark - Placeholder Templates

- (void)getLocalizableSampleTemplateForComplication:(CLKComplication *)complication withHandler:(void(^)(CLKComplicationTemplate * __nullable complicationTemplate))handler {
    // This method will be called once per supported complication, and the results will be cached
    
    [CLKTextProvider localizableTextProviderWithStringsFileTextKey:@"compsV1"];
    
    switch (complication.family) {
        case CLKComplicationFamilyCircularSmall:
        {
            CLKComplicationTemplateCircularSmallSimpleImage *circularTemplate = [[CLKComplicationTemplateCircularSmallSimpleImage alloc]init];
            circularTemplate.imageProvider = [CLKImageProvider imageProviderWithOnePieceImage:[UIImage imageNamed:@"Complication/Circular"] twoPieceImageBackground:NULL twoPieceImageForeground:NULL];
            circularTemplate.tintColor=[UIColor blueColor];
            handler(circularTemplate);
            break;
        }
            
        case CLKComplicationFamilyExtraLarge:
        {
            
            CLKComplicationTemplateExtraLargeSimpleImage *extralarTemplate =[[CLKComplicationTemplateExtraLargeSimpleImage alloc]init];
            extralarTemplate.imageProvider = [CLKImageProvider imageProviderWithOnePieceImage:[UIImage imageNamed:@"Complication/Extra Large"] twoPieceImageBackground:NULL twoPieceImageForeground:NULL];
            extralarTemplate.tintColor = [UIColor blueColor];
            handler(extralarTemplate);
            break;
        }
            
        case CLKComplicationFamilyModularSmall:
        {
            CLKComplicationTemplateModularSmallSimpleImage  *modTemplate = [[CLKComplicationTemplateModularSmallSimpleImage alloc]init];
            modTemplate.imageProvider  = [CLKImageProvider imageProviderWithOnePieceImage:[UIImage imageNamed:@"Complication/Modular"] twoPieceImageBackground:NULL twoPieceImageForeground:NULL];
            modTemplate.tintColor = [UIColor blueColor];
            handler(modTemplate);
            break;
        }
            
        case CLKComplicationFamilyUtilitarianSmall:
        {
            CLKComplicationTemplateUtilitarianSmallSquare *utilTemplate = [[CLKComplicationTemplateUtilitarianSmallSquare alloc]init];
            utilTemplate.imageProvider = [CLKImageProvider imageProviderWithOnePieceImage:[UIImage imageNamed:@"Complication/Utilitarian"] twoPieceImageBackground:NULL twoPieceImageForeground:NULL];
            utilTemplate.tintColor = [UIColor blueColor];
            handler(utilTemplate);
            break;
        }
            
        default:
        break;
    }
    
    
}

@end
