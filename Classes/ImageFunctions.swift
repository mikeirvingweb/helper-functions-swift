import Foundation
import UIKit

class ImageFunctions
{
    /* Resize a UIImage object. masSize (Int) will be applied to the longest dimention (width or height) - returns UIImage - Usage: ImageFunctions.ResizeImage(image: myImage, maxSize: 640) */
	class func ResizeImage(image: UIImage, maxSize: Int) -> UIImage {
        let size = image.size
        var targetSize : CGSize
        
        let bitmapRatio = size.width / size.height
        
        if (bitmapRatio > 1) {
            targetSize = CGSize(width: CGFloat(maxSize), height: size.width / bitmapRatio)
        } else {
            targetSize = CGSize(width: size.height * bitmapRatio, height: CGFloat(maxSize))
        }

        let widthRatio  = targetSize.width  / size.width
        let heightRatio = targetSize.height / size.height

        // Figure out what our orientation is, and use that to form the rectangle
        var newSize: CGSize
        if(widthRatio > heightRatio) {
            newSize = CGSize(width: size.width * heightRatio, height: size.height * heightRatio)
        } else {
            newSize = CGSize(width: size.width * widthRatio,  height: size.height * widthRatio)
        }

        // This is the rect that we've calculated out and this is what is actually used below
        let rect = CGRect(x: 0, y: 0, width: newSize.width, height: newSize.height)

        // Actually do the resizing to the rect using the ImageContext stuff
        UIGraphicsBeginImageContextWithOptions(newSize, false, 1.0)
        image.draw(in: rect)
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return newImage!
    }
}