//
//  InsertSortController.swift
//  WSAlgorithm
//
//  Created by WS on 2017/8/16.
//  Copyright © 2017年 WS. All rights reserved.
//

import UIKit

class InsertSortController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "insert sort"

        var array = [1,2,3,4]
        for i in 1..<array.count {
            print(2)
            var currentNum = array[i]
            for j in (0..<i).reversed() {
                if array[j] > currentNum {
                    print(1)
                    array[j + 1] = array[j]
                    array[j] = currentNum
                }else{
                    print(3)
                    break
                }
            }
        }
        print(array);
    }
    
//MARK:- algorithm
//    private func startSort(array: [Int]) -> [Int] {
//        var arr = array
//        for i in 1..<arr.count {
//            var key = arr[i]
//            for j in (0..<i) {
//                if arr[j] > key {
//                    arr[i] = arr[j]
//                    arr[j] = key
//                    key = arr[i]
//                }
//            }
//        }
//        return arr
//    }
    
    
    private func startSort(array: [Int]) -> [Int] {
        var arr = array
        for i in 1..<arr.count {
            var currentNum = arr[i]
            for j in (0..<i).reversed() {
                if arr[j] > currentNum {
                    arr[j + 1] = arr[j]
                    arr[j] = currentNum
                }else{
                    break
                }
            }
        }
        return arr
    }
    
//    private func startSort(array: [Int]) -> [Int] {
//        guard array.count != 0 else {
//            return [Int]();
//        }
//        
//        var arr = array
//        var resultArr = [arr[0]]
//        for i in 1..<arr.count {
//            var key = arr[i]
//            for j in (0..<resultArr.count) {
//                if resultArr.last! < key {
//                    resultArr.append(key)
//                    break;
//                }
//                if resultArr[j] > key {
//                    resultArr.insert(key, at: j)
//                    break
//                }
//            }
//        }
//        return resultArr
//    }

}
