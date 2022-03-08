import Foundation
import UIKit

class DateFunctions
{
    /* Get just the date from a Date object, in dd/MM/yy format - returns String - Usage: DateFunctions(date: myDate) */
	class func ShortDateString(date : Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yy"
        return formatter.string(from: date)
    }
    
	/* Get just the time from a Date, in HH:mm format - returns String - Usage: DateFunctions(date: myDate) */
    class func ShortTimeString(date : Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm"
        return formatter.string(from: date)
    }
}