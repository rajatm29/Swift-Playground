import UIKit

var sampleString = "1000"


//let valueMap = []

func convert(string: String) -> Int {
    var total = 0
    
    for (i, c) in string.enumerated() {
        let exponent = string.count - i - 1
        if let value = valueMap[c] {
            let num = Decimal(value) * pow(10, exponent)
            total += NSDecimalNumber(decimal:  num).intValue
        } else {
            return nil
        }
    }
}
  
  
  
convert(string: sampleString)
