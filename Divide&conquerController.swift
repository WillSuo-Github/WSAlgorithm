//
//  Divide&conquerController.swift
//  WSAlgorithm
//
//  Created by WS on 2017/9/14.
//  Copyright © 2017年 WS. All rights reserved.
//

import UIKit

class Divide_conquerController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let array = [8, 5, 2, 4, 7, 1, 3, 2, 6]
        print(startSort(array))
    }
    
    private func startSort(_ array: [Int]) -> [Int] {
        let arrayLength = array.count
        var LArray = Array(array[..<(arrayLength/2)])
        var RArray = Array(array[(arrayLength/2)...])
        if LArray.count <= 1 && RArray.count <= 1{
            if LArray.count == 0 {return RArray}
            if RArray.count == 0 {return LArray}
            if  LArray[0] < RArray[0] {
                return LArray + RArray
            }else{
                return RArray + LArray
            }
        }else{
            var sortLArray = startSort(LArray)
            var sortRArray = startSort(RArray)
            var i = 0, j = 0
            var resultArr = [Int]()
            while(i < sortLArray.count || j < sortRArray.count) {
                print(1)
                if sortLArray[i] > sortRArray[j] {
                    resultArr.append(sortRArray[j])
                    if j < sortRArray.count - 1 {
                        j+=1
                    }else {
                        return resultArr + Array(sortLArray[i...])
                    }
                }else{
                    resultArr.append(sortLArray[i])
                    if i < sortLArray.count - 1 {
                        i+=1
                    }else{
                        return resultArr + Array(sortRArray[j...])
                    }
                }
            }
            return resultArr
        }
    }
}
