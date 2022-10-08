import Foundation
var unsortedList = [String]()
while let line = readLine() {
    unsortedList.append(line.replacingOccurrences(of: "\n", with: "").lowercased())
}


var UInts = unsortedList
func swap(array: inout [String], _ firstIndex: Int, _ secondIndex: Int){
    let temp = array[firstIndex]
    array[firstIndex] = array[secondIndex]
    array[secondIndex] = temp    
}

func insertionSort(_ UInts: inout [String]) {
    var subSwaps = 0
    var totalSwaps = 0
    
    for i in 0..<UInts.count-1 {
        print("Pass: \(i), Swaps: \(subSwaps)/\(totalSwaps), Array: \(UInts) ")
        subSwaps = 0
        var mindex = i
        for j in i..<UInts.count {
            if UInts[j] < UInts[mindex]{
                mindex = j
            }
        }
        swap(array: &UInts, mindex, i)
        subSwaps += 1
        totalSwaps += 1
    }
    print("Pass: \(UInts.count-1), Swaps: \(subSwaps)/\(totalSwaps), Array: \(UInts) ")
}

insertionSort(&UInts)
