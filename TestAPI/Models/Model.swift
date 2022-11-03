//
//  Model.swift
//  TestAPI
//
//  Created by Геннадий Ведерников on 03.11.2022.
//

import Foundation

struct Programmer: Decodable {
    let error: Bool
    let category: String
    let type: String
    let setup: String
    let delivery: String
    let flags: [String: Bool]
    let id: Int
    let safe: Bool
    let lang: String
}
