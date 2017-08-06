import React, {PropTypes} from 'react'
import ReactNative from 'react-native'

var {
	NativeModules,
	processColor,
	requireNativeComponent,
	View
} = ReactNative;

var RNLatex = null;

class Latex extends React.Component {

	static propTypes = {
		type: React.PropTypes.string,
		/**
		 * @prop color
		 * @NOTE This is typically passed as a string, but technically can also be
		 *	a number (see https://facebook.github.io/react/docs/typechecking-with-proptypes.html).
		 *	In addition, allowing a number prop type eliminates the PropType warning
		 *	React Native will throw if passing a string into this component but a
		 *	different type (number) down to the native module.
		 */
		color: React.PropTypes.oneOfType([React.PropTypes.string, React.PropTypes.number]),
		size: React.PropTypes.number,
		isVisible: React.PropTypes.bool,
		testID:React.PropTypes.string,
		accessibilityComponentType:PropTypes.string,
		accessibilityLabel:PropTypes.string,
		accessibilityLiveRegion:PropTypes.string,
		renderToHardwareTextureAndroid:PropTypes.bool,
		importantForAccessibility:PropTypes.string,
		onLayout:PropTypes.func,
	};

	static defaultProps = {
		fontSize: 30,
		color: "#000000",
    latex: ''
	};

	render() {

		// In order to handle all the color specifications allowed in React Native
		// as a whole, we need to call processColor here, and can pass in the
		// resulting number directly. RCTConvert will be called on iOS to parse
		// into #AARRGGBB form; on Android, this int can be used directly for
		// setting the color.
		var colorNumber = processColor(this.props.color);

		return (
			<RNLatex
				latex={String(this.props.latex)}
				fontSize={parseInt(this.props.fontSize)}
				color={colorNumber}
				style={[size, this.props.style]}/>
		);
	}

}

// Since RNPM does not recognize `requireNativeComponent`, so we have to
// add this line, and RNPM will link native modules automatically
NativeModules.RNSpinkit;

// Native component
RNLatex = requireNativeComponent(
	'RNLatex',
	Latex,
    {
        nativeOnly: {
            'nativeID': true
        }
    }
);


module.exports = Latex;
