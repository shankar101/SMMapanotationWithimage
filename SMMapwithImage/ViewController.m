//
//  ViewController.m
//  SMMapwithImage
//
//  Created by Shankar on 09/07/16.
//  Copyright © 2016 Shankar. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addanotation];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id <MKAnnotation>)annotation
{
    /*static NSString * const kPinAnnotationIdentifier = @"PinIdentifier";
    if(annotation == self.mpvw4demo.userLocation)
    {
        return nil;
    }
    
    MKPointAnnotation *myAnnotation  = (MKPointAnnotation *)annotation;
    MKAnnotationView *newAnnotation = (MKAnnotationView*)[self.mpvw4demo dequeueReusableAnnotationViewWithIdentifier:kPinAnnotationIdentifier];
    
    if(!newAnnotation){
        newAnnotation = [[MKAnnotationView alloc] initWithAnnotation:myAnnotation reuseIdentifier:@"userloc"];
    }
    
    NSDictionary *dict=[annotationArray objectAtIndex:0];
    UIView *anView=[[UIView alloc] init];
    anView.backgroundColor=[UIColor clearColor];
    
    UIImageView *bgImg=[[UIImageView alloc] init];
    bgImg.image=[UIImage imageNamed:@""];
    bgImg.backgroundColor=[UIColor clearColor];
    
    UIImageView *imgView=[[UIImageView alloc] init];
    imgView.tag=0;
    
    UILabel *lblName=[[UILabel alloc] init];
    lblName.font=[UIFont systemFontOfSize:12];
    lblName.textAlignment=UITextAlignmentCenter;
    lblName.textColor=[UIColor whiteColor];
    lblName.backgroundColor=[UIColor clearColor];
    lblName.text=@"TEXT YOU WANT" ;
    
    newAnnotation.frame=CGRectMake(0, 0, 70, 212);
    anView.frame=CGRectMake(0, 0, 70, 212);
    bgImg.frame=CGRectMake(0, 0, 70, 106);
    bgImg.image=[UIImage imageNamed:@"thumb-needhelp"];
    
    imgView.frame=CGRectMake(8,25,55,48);
    imgView.image=[UIImage imageNamed:@"girl-default"];
    lblName.frame=CGRectMake(5,79,60,10);
    
    
    
    [anView addSubview:bgImg];
    [anView addSubview:imgView];
    [newAnnotation addSubview:anView];
    newAnnotation.canShowCallout=YES;
    [newAnnotation setEnabled:YES];
    
    return newAnnotation;*/
    MKPinAnnotationView *MyPin=[[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:@"current"];
    
   UIImage *myImage = [UIImage imageNamed:@"girl-default"];
    CGRect cropRect = CGRectMake(0.0, 0.0,35.0, 35.0);
    UIImageView* myImageView = [[UIImageView alloc] initWithFrame:cropRect];
    myImageView.clipsToBounds = YES;
    myImageView.image = myImage;
    MyPin.leftCalloutAccessoryView =myImageView;
    MyPin.highlighted=YES;
    MyPin.canShowCallout=YES;
    return MyPin;
}
/*-(NSMutableArray *)createAnnotations

{
    
    NSMutableArray *annotations = [[NSMutableArray alloc] init];
    
    //Read locations details from plist
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"locations" ofType:@"plist"];
    
    NSArray *locations = [NSArray arrayWithContentsOfFile:path];
    
    for (NSDictionary *row in locations) {
    
        NSNumber *latitude = [row objectForKey:@"latitude"];
        
        NSNumber *longitude = [row objectForKey:@"longitude"];
        
        NSString *title = [row objectForKey:@"title"];
        
        //Create coordinates from the latitude and longitude values
        
        CLLocationCoordinate2D coord;
        
        coord.latitude = latitude.doubleValue;
        
        coord.longitude = longitude.doubleValue;
        
        MapViewAnnotation *annotation = [[MapViewAnnotation alloc] initWithTitle:title AndCoordinate:coord];
        
        [annotations addObject:annotation];
        
    }
    
    return annotations;
    
}*/
-(void)addanotation{
    annotationArray = [NSMutableArray array];
    MKPointAnnotation *annotation = nil;
    
    annotation = [[MKPointAnnotation alloc] init];
    
    annotation.coordinate =CLLocationCoordinate2DMake(22.5726,88.3639);
    annotation.title = @"Kolkata";
    [annotationArray addObject:annotation];
    [self.mpvw4demo addAnnotations:annotationArray];
}
@end
