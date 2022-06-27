//
//  String+Extensions.swift
//  Yummie
//
//  Created by Le Tong Minh Hieu on 26/06/2022.
//

import Foundation

extension String {
    var asUrl: URL? {
        return URL(string: self)
    }
}
