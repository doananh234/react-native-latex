
#import "RNReactNativeLatex.h"

@implementation RNReactNativeLatex

RCT_EXPORT_MODULE()

RCT_EXPORT_VIEW_PROPERTY(latex, NSString)
RCT_EXPORT_VIEW_PROPERTY(fontSize,  int)
RCT_EXPORT_VIEW_PROPERTY(textColor, NSString)
- (UIView *)view
{
    MTMathUILabel* label = [[MTMathUILabel alloc] init];
    label.latex = latex;
    label.fontSize = fontSize;
    label.textColor = [UIColor colorWithHexString:textColor];
    return label;
}
@end
