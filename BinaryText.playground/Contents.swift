//: Playground - noun: a place where people can play

import UIKit

func convertToBinary(decimal: Int) -> String {
    
    var n: Int = 0, c: Int = 0, k: String = "", fs: String = ""
    
    n = decimal
    
    while n > 0 {
        
        c = n % 2
        n = n / 2
        k += "\(c)"
        
    }
    
    for i in k.characters.reverse() {
        
        fs += "\(i)"
        
    }
    
    return fs
    
}

func convertToDecimal(binaryVal: String) -> String {
    
    var result: Int = 0
    
    for num in binaryVal.characters {
        
        switch num {
            case "0": result = result * 2
            case "1": result = result * 2 + 1
            default: return "error"
        }
        
    }
    
    return "\(result)"
    
}

var startString: NSString = "Tanmay Bakshi is the emporer of the universe"
var asciiFinal: [Int] = []
var binArray: [String] = []
var binary: String = ""

var i = 0

for (i = 0; i < startString.length; i++) {
    var asciiCode: Int = Int("\(startString.characterAtIndex(i))")!
    asciiFinal.append(asciiCode)
}

asciiFinal

for i in asciiFinal {
    
    binArray.append(convertToBinary(i))
    
}

for i in binArray {
    var stringToSubmit = ""
    if "\(i)".characters.count < 8 {
        var toAdd = 8 - "\(i)".characters.count
        for i in 0...toAdd {
            if i != 0 {
                stringToSubmit += "0"
            }
        }
        binary += stringToSubmit + "\(i)"
    } else {
        binary += "\(i)"
    }
}

print(binary)

var binaryToConvert: String = "0101010001100001011011100110110101100001011110010010000001000010011000010110101101110011011010000110100100100000011010010111001100100000011101000110100001100101001000000110010101101101011100000110111101110010011001010111001000100000011011110110011000100000011101000110100001100101001000000111010101101110011010010111011001100101011100100111001101100101"
var asciisAfterConvert: [Int] = []
var finaltext: String = ""

var on = 0
var bin = ""
for i in binaryToConvert.characters {
    on++
    bin += "\(i)"
    if on == 8 {
        asciisAfterConvert.append(Int(convertToDecimal(bin))!)
        bin = ""
        on = 0
    }
}

for i in asciisAfterConvert {
    finaltext += String(UnicodeScalar(i))
}

print(finaltext)