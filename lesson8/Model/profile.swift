//
//  profile.swift
//  lesson8
//
//  Created by Dmitrii Nazarov on 14.08.2024.
//

import UIKit

struct TableData {
    let imageOne: String
    let name: String
    let descr: String
    let imageTwo: String
    let imageThree: String
    let imageFour: String
    
    static func mockData() -> [TableData] {
        [
        TableData(imageOne: "img1", name: "Name Surname", descr: "fdkfmkgkgkfgfjlkfkkljhkjgfjgdfnkfdngjdfnglfggjdfngfdkgdfjgflkgfk", imageTwo: "img2", imageThree: "img3", imageFour: "img4"),
        TableData(imageOne: "img1", name: "Name Surname", descr: "fdkfmkgkgkfgfjlkfkkljhkjgfjgdfnkfdngjdfnglfggjdfngfdkgdfjgflkgfk", imageTwo: "img2", imageThree: "img4", imageFour: "img3"),
        TableData(imageOne: "img1", name: "Name Surname", descr: "fdkfmkgkgkfgfjlkfkkljhkjgfjgdfnkfdngjdfnglfggjdfngfdkgdfjgflkgfk", imageTwo: "img4", imageThree: "img3", imageFour: "img2"),
        
        ]
    }
}
