#import "RNReactNativeLatex.h"
#import <React/RCTConvert.h>
#import <React/RCTBridgeModule.h>
#import <React/UIView+React.h>
@implementation RNReactNativeLatex
{
    MTMathUILabel *_RNTLatex;
    NSString *_latex;
    NSNumber *_fontSize;
    UIColor *_color;
}
#pragma mark - Setter

- (void)setFontSize:(NSNumber*)fontSize {
    _fontSize = fontSize;
    if (_RNTLatex) {
        _RNTLatex.fontSize = [_fontSize doubleValue];
    }
}

- (NSNumber*)fontSize {
    return _fontSize;
}

- (void)setLatex:(NSString*)latex
{
    _latex = latex;
    if (_RNTLatex) {
        _RNTLatex.latex = _latex;
    }
}

- (NSString*)latex {
    return _latex;
}

- (void)setColor:(NSNumber*)color
{
    _color = [RCTConvert UIColor:color];
    if (_RNTLatex) {
        _RNTLatex.textColor = _color;
    }
}

- (UIColor*)color {
    return _color;
}


#pragma mark - React View Management

- (void)layoutSubviews
{
    [super layoutSubviews];
    if (_RNTLatex == nil) {
        _RNTLatex =  [[MTMathUILabel alloc] init];
        _RNTLatex.textColor = _color;
        _RNTLatex.latex = _latex;
        _RNTLatex.fontSize = [_fontSize doubleValue];
        [self insertSubview:_RNTLatex atIndex:0];
    }
}

- (void)insertReactSubview:(UIView *)view atIndex:(NSInteger)atIndex
{
    [self addSubview:view];
}

- (void)removeReactSubview:(UIView *)subview
{
    [subview removeFromSuperview];
}

- (void)removeFromSuperview
{
    [super removeFromSuperview];
}

@end
