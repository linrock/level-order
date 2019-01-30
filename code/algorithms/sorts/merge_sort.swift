// mergesort
// strategy:
// use recursion:
// (1) define left and right sides of unsorted array
// (2) mergesort left sub-array, mergesort right sub-array
// (3) merge the two sorted sub-arrays
// define termination cases for recursion:
// if array contains only one item, it's already sorted => return array containing one item
// if array is empty, it's already sorted => return empty array

func merge(_ sortedArr1: [Int], _ sortedArr2: [Int]) -> [Int] {
    var sortedArr = [Int]()
    var iter1 = 0
    var iter2 = 0
    while iter1 < sortedArr1.count && iter2 < sortedArr2.count {
        if sortedArr1[iter1] <= sortedArr2[iter2] {
            sortedArr.append(sortedArr1[iter1])
            iter1 += 1
        } else {
            sortedArr.append(sortedArr2[iter2])
            iter2 += 1
        }
    }
    sortedArr.append(contentsOf: sortedArr1[iter1..<sortedArr1.count])
    sortedArr.append(contentsOf: sortedArr2[iter2..<sortedArr2.count])
    return sortedArr
}

func mergeSortIndices(_ unsortedArr: [Int], _ startIndex: Int, _ endIndex: Int) -> [Int] {
    let count = endIndex - startIndex + 1
    if count == 0 {
        return []
    } else if count == 1 {
        return [unsortedArr[startIndex]]
    }
    let midIndex = (count-1)/2 + startIndex
    return merge(mergeSortIndices(unsortedArr, startIndex, midIndex),
                 mergeSortIndices(unsortedArr, midIndex+1, endIndex))
}

func mergeSort(_ unsortedArr: [Int]) -> [Int] {
    return mergeSortIndices(unsortedArr, 0, unsortedArr.count - 1)
}
