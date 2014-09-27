//
//  WebPImageTests.m
//  WebPImageTests
//
//  Created by Emil Wojtaszek on 27/09/14.
//  Copyright (c) 2014 AppUnite.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

//
#import "WebPImageSerialization.h"
#import "SDWebImageDecoder.h"

@interface WebPImageTests : XCTestCase

@end

@implementation WebPImageTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testJPEG {
    NSString *resourcePath = [[NSBundle mainBundle] pathForResource:@"image" ofType:@"jpg"];
    NSData *data = [NSData dataWithContentsOfFile:resourcePath];
    XCTAssertNotNil(data);
    
    NSLog(@"started test of JPEG, file size: %lu bytes", (unsigned long)[data length]);
    
    // This is an example of a performance test case.
    [self measureBlock:^{
        UIImage *image = [UIImage imageWithData:data];
        UIImage *decodedImage = [UIImage decodedImageWithImage:image];
        XCTAssertNotNil(decodedImage);
    }];
}

- (void)testPNG {
    NSString *resourcePath = [[NSBundle mainBundle] pathForResource:@"image" ofType:@"png"];
    NSData *data = [NSData dataWithContentsOfFile:resourcePath];
    XCTAssertNotNil(data);
    
    NSLog(@"started test of PNG, file size: %lu bytes", (unsigned long)[data length]);
    
    // This is an example of a performance test case.
    [self measureBlock:^{
        UIImage *image = [UIImage imageWithData:data];
        UIImage *decodedImage = [UIImage decodedImageWithImage:image];
        XCTAssertNotNil(decodedImage);
    }];
}

- (void)testWebP {
    NSString *resourcePath = [[NSBundle mainBundle] pathForResource:@"image" ofType:@"webp"];
    NSData *data = [NSData dataWithContentsOfFile:resourcePath];
    XCTAssertNotNil(data);
    
    NSLog(@"started test of WebP, file size: %lu bytes", (unsigned long)[data length]);
    
    // This is an example of a performance test case.
    [self measureBlock:^{
        UIImage *image = [WebPImageSerialization imageWithData:data error:nil];
        UIImage *decodedImage = [UIImage decodedImageWithImage:image];
        XCTAssertNotNil(decodedImage);
    }];
}

@end
