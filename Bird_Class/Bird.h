//
//  Bird.h
//  GameDemo
//
//  Created by Youngrok Lee on 10. 9. 5..
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//
#import "AppDelegate.h"
#import "cocos2d.h"

// CCSprite을 클래스화 시킵니다.
// CCSprite형 Bird는 isDead, startPoint, flyAnimate, tailAnimate 변수를 가집니다.
@interface Bird : CCSprite {
    BOOL isDead;
    CGPoint startPoint;
	CGPoint sitPoint;
	CCAnimate *flyAnimate;
	CCAnimate *sitAnimate;
	CCAnimate *tailAnimate;
}

//set,get 메소드를 컴파일러가 자동으로 생성하도록 합니다.
@property (nonatomic) BOOL isDead;
@property CGPoint sitPoint;
@property CGPoint startPoint;

- (void)action;
- (void)setIsDead:(BOOL)val;
@end

