//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

func search(_ nums: [Int], _ target: Int) -> Int {
    var l = 0
    var r = nums.count - 1
    
    while l <= r {
        let mid = l + (r - l)/2
        if nums[mid] == target {
            return mid
        }
        if nums[mid] > target {
            r = mid - 1
        } else {
            l = mid + 1
        }
    }
    return -1
}
