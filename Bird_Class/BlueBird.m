//
//  BlueBird.m
//  Birds
//
//  Created by Youngrok Lee on 10. 9. 5..
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "BlueBird.h"
@implementation BlueBird

- (id)init {
    
	self=[super init];
    
	if (self != nil) {
        
        // 메모리 해제를 목적으로 NSAutoreleasePool을 씁니다.
        // 메소드 안에 객체 생성시 후에 메모리를 해제할 때 언제 해제하여야 할 지 모릅니다.
        // 메모리 해제할 공간인 pool를 만들어 여기에 해제할 메모리를 넣은 후 해제하도록 합니다.
        // 최근에는 대신으로 autorelease를 씁니다. NSAutoreleasePool 객체를 써서 해제하지 않아도 됩니다.
        // 최근 버전에는 메모리 관리를 자동으로 하여 꼭 release를 할 필요가 없게 되었습니다.
		NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
        
        // 전 프로젝트까지 쓴 createBird 매소드 안의 CCAnimation 구동 부분입니다.
        NSMutableArray *flyFrames = [NSMutableArray array];
        for(NSInteger idx = 1; idx < 17; idx++) {
            CCSpriteFrame *frame = [[CCSpriteFrameCache sharedSpriteFrameCache] spriteFrameByName:
                                    [NSString stringWithFormat:@"blue_fly%04d.png",idx]];
            [flyFrames addObject:frame];
        }
		CCAnimation *flyAnimation = [CCAnimation animationWithSpriteFrames:flyFrames delay:0.05f];
        flyAnimate = [[CCAnimate alloc] initWithAnimation:flyAnimation];
        
		NSMutableArray *sitFrames = [NSMutableArray array];
		for (NSInteger idx = 1; idx <61; idx++)  {
            CCSpriteFrame *frame = [[CCSpriteFrameCache sharedSpriteFrameCache] spriteFrameByName:
                                    [NSString stringWithFormat:@"blue_sit_%04d.png",idx]];
            [sitFrames addObject:frame];
        }
		CCAnimation *sitAnimation = [CCAnimation animationWithSpriteFrames:sitFrames delay:0.05f];
		sitAnimate = [[CCAnimate alloc] initWithAnimation:sitAnimation];
		
		NSMutableArray *tailFrames = [NSMutableArray array];
		for (NSInteger idx = 1; idx <16; idx++)  {
            CCSpriteFrame *frame = [[CCSpriteFrameCache sharedSpriteFrameCache] spriteFrameByName:
                                    [NSString stringWithFormat:@"blue_tail_%04d.png",idx]];
            [tailFrames addObject:frame];
        }
		CCAnimation *tailAnimation = [CCAnimation animationWithSpriteFrames:tailFrames delay:0.05f];
		tailAnimate = [[CCAnimate alloc] initWithAnimation:tailAnimation];
        [pool release];
    }
	return self;
}

@end
