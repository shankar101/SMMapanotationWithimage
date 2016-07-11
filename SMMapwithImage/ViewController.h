//
//  ViewController.h
//  SMMapwithImage
//
//  Created by Shankar on 09/07/16.
//  Copyright © 2016 Shankar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ViewController : UIViewController<MKAnnotation>
{
    NSMutableArray *annotationArray;
}
@property (weak, nonatomic) IBOutlet MKMapView *mpvw4demo;


@end

