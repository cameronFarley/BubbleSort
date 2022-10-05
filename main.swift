// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let unsortedIntegers = [5, 1, 4, 2, 8]
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧


// Add your code below:

let STDIN = (readLine(strippingNewline: true))?.split {$0 == " "}.map (String.init)

func swap(strings:inout [String], firstIndex: Int, secondIndex: Int) {
    
    let temp = strings[firstIndex]
    strings[firstIndex] = strings[secondIndex]
    strings[secondIndex] = temp
    
}

func bubbleSort(list: [String]) -> [String] {
    var sortingIntegers = list

    var totalSwapCount = 0
    var swapCountPerPass: Int
    var passNumber = 0

    print("Pass: 0, Swaps: 0/0, Array: \(sortingIntegers)")
    
    repeat {
        swapCountPerPass = 0
        
        

        for i in 0 ..< sortingIntegers.count - 1 {
            let thisIndex = i
            let nextIndex = i + 1

            let thisElement = sortingIntegers[thisIndex]
            let nextElement = sortingIntegers[nextIndex]
            
            if thisElement > nextElement {
                swap(strings: &sortingIntegers, firstIndex: thisIndex, secondIndex: nextIndex)

                totalSwapCount += 1
                swapCountPerPass += 1
            }
            
        }
        passNumber += 1

        print("Pass: \(passNumber), Swaps: \(swapCountPerPass)/\(totalSwapCount), Array: \(sortingIntegers)")
    } while swapCountPerPass > 0 

    return sortingIntegers
}

let sortedIntegers = bubbleSort(list: STDIN!)
