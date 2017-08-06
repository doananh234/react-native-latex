using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace Com.Reactlibrary.RNReactNativeLatex
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class RNReactNativeLatexModule : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="RNReactNativeLatexModule"/>.
        /// </summary>
        internal RNReactNativeLatexModule()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "RNReactNativeLatex";
            }
        }
    }
}
