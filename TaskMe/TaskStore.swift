//
//  TaskStore.swift
//  TaskMe
//
//  Created by Jack Watson-Hamblin on 5/10/2014.
//  Copyright (c) 2014 AirPair. All rights reserved.
//

import Foundation

class TaskStore {
    class var sharedInstance: TaskStore {
    struct Static {
        static let instance = TaskStore()
        }
        return Static.instance
    }
    
    var tasks: [Task] = []
    
    var count: Int {
        return tasks.count
    }
    
    func add(task: Task) {
        tasks.append(task)
    }
    
    func replace(task: Task, atIndex index: Int) {
        tasks[index] = task
    }
    
    func get(index: Int) -> Task {
        return tasks[index]
    }
    
    func removeTaskAtIndex(index: Int) {
        tasks.removeAtIndex(index)
    }
}