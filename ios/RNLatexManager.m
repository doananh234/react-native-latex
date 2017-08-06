#import "RNReactNativeLatex.h"
#import "RNLatexManager.h"
@implementation RNLatexManager

RCT_EXPORT_MODULE();

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}

- (UIView *)view
{
    return [[RNReactNativeLatex alloc] init];
}

RCT_EXPORT_VIEW_PROPERTY(latex, NSString);
RCT_EXPORT_VIEW_PROPERTY(fontSize, NSNumber);
RCT_EXPORT_VIEW_PROPERTY(color, NSNumber);

@end
