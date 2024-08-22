//
//  profile.swift
//  lesson8
//
//  Created by Dmitrii Nazarov on 14.08.2024.
//

import UIKit

struct TableData {
    let name: String
    let profileImage: String
    let content: String
    let image: String
    
    static func mockData() -> [TableData] {
        [
        TableData(name: "Petr Yan", profileImage: "circleImg", header: "Заголовок", content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore", image: "img"),
        TableData(name: "Dmitrii Nazarov", profileImage: "circleImgTwo", header: "Заголовок", content: "Lorem ipsum dolor sit amet, consectetur adipisicing m ipsum dolor sit amet, consectetur adipisicim ipsum dolor sit amet, consectetur adipisicielit, sed do eiusmod tempor incididunt ut labore", image: "imgTwo")
        ]
    }
}
