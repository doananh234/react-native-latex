#ifndef RNLatex_RCTViewManager_h
#define RNLatex_RCTViewManager_h
#import "MTMathUILabel.h"
#if __has_include("RCTViewManager")
#import "RCTViewManager"
#else
#import <React/RCTViewManager.h>
#endif
@interface RNLatexManager: RCTViewManager
@end

#endif
