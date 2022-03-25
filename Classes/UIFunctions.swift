import Foundation
import UIKit

class UIFunctions
{
    /* Fit UILabel to text contents, restoring width and optionally adding some height (Bool) - Usage: LabelFitText(label: myLabel, extra: true) */
	class func LabelFitText(label : UILabel, extra: Bool) {
        let originalWidth = label.frame.width
        
        // if this will be called multiple times, make sure you restore the original width each tie first, otherwise it may keep shrinking        
        label.sizeToFit()
        
        // restore original width (sometimes lost in the shrink)
        label.frame.size = CGSize(width: originalWidth, height: extra ? label.frame.height + 10.0 : label.frame.height)
    }
    
    /* Fit UILabel to text contents, restoring width and optionally adding some height (Bool), with a minmum desired height (CGFloat) - good for text blocks - Usage: LabelFitTextMinHeight(label: myLabel, extra: true, minHeight: 100.0) */
	class func LabelFitTextMinHeight(label : UILabel, extra: Bool, minHeight: CGFloat) {
        LabelFitText(label: label, extra: extra)
        
        if label.frame.height < minHeight {
            label.frame.size = CGSize(width: label.frame.width, height: minHeight)
        }
    }
    
    /* Give a greater touchable area to Image Button (UIButton), specified as padding in pixels (CGFloat) - Usage: UIFunctions.GiveImageButtonGreaterPressableArea(button : myButton, padding: 10.0) */
	class func GiveImageButtonGreaterPressableArea(button : UIButton, padding: CGFloat) {
        button.frame = CGRect(x: button.frame.origin.x - padding, y: button.frame.origin.y - padding, width: button.frame.width + (padding * 2), height: button.frame.height + (padding * 2))
    }
    
	/* Make UIImageView Circular - Usage: UIFunctions.MakeImageCircular(image: myImage) */
    class func MakeImageCircular(image: UIImageView) {
        image.layer.cornerRadius = image.frame.width / 2
    }
    
	/* Apply rounded corners to Button - Usage: UIFunctions.ApplyRoundCornersToButton(button: myButton) */
    class func ApplyRoundCornersToButton(button: UIButton) {
        button.layer.cornerRadius = 6
    }
    
	/* Apply rounded corners to UIView, and specify whether to Clip to Bounds (Bool) - Usage: UIFunctions.ApplyRoundCornersToView(view: myView, clip: true) */
    class func ApplyRoundCornersToView(view: UIView, clip: Bool) {
        view.layer.cornerRadius = 6
        view.clipsToBounds = clip
    }
    
    /* Apply shadow to UIImageView - Usage: UIFunctions.ApplyShadowToImage(image: myImage) */
	class func ApplyShadowToImage(image: UIImageView) {
        image.layer.shadowColor = UIColor.black.cgColor
        image.layer.shadowOpacity = 1.0
        image.layer.shadowOffset = CGSize.zero
        image.layer.shadowRadius = 1
    }
    
	/* Apply shadow to UIButton - Usage: UIFunctions.ApplyShadowToButton(button: myButton) */
    class func ApplyShadowToButton(button: UIButton) {
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 1.0
        button.layer.shadowOffset = CGSize.zero
        button.layer.shadowRadius = 1
    }
    
	/* Apply shadow to UILabel - Usage: UIFunctions.ApplyShadowToLabel(label: myLabel) */
    class func ApplyShadowToLabel(label: UILabel) {
        label.layer.shadowColor = UIColor.black.cgColor
        label.layer.shadowOpacity = 1.0
        label.layer.shadowOffset = CGSize.zero
        label.layer.shadowRadius = 1
    }
	
	/* Run Some Code on the Main UI Thread */
    class func RunOnMainUIThread() {
        DispatchQueue.main.async {
		// run some code on the main thread
	}
    }
}
