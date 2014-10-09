//
//  Task.swift
//  TaskMe
//
//  Created by Jack Watson-Hamblin on 5/10/2014.
//  Copyright (c) 2014 AirPair. All rights reserved.
//

import Foundation

struct Task {
    let title: String
    let notes: String
    
    init(title: String, notes: String) {
        self.title = title
        self.notes = notes
    }
}