import Foundation
import UIKit

class StringFunctions
{
    /* A simple SubString Function, from the start, take a set number of characters, if long enough - returns String - Usage: StringFunctions.SimpleSubstring(string: "Mathematics", length: 4) would return "Math" */
	class func SimpleSubstring(string : String, length : Int) -> String {
        var returnString = string
        
        if (string.count > length) {
            returnString = String(string[...string.index(string.startIndex, offsetBy: length - 1)])
        }
        
        return returnString
    }
	
	/* Check an Email Address string looks to be in the correct format. Usage: StringFunctions.IsValidEmail(testStr: "user@domain.com") - returns Bool */
	class func IsValidEmail(testStr : String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: testStr)
    }
}