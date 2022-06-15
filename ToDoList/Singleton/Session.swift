//
//  Session.swift
//  ToDoList
//
//  Created by Polina Tikhomirova on 14.06.2022.
//

import Foundation

class Session {
    static let shared = Session()
    private init() { }
    
    private let toDoItemsCaretaker = ToDoItemsCaretaker()
    private var tasks = [ToDoItem]() {
        didSet {
            toDoItemsCaretaker.save(tasks: tasks)
        }
    }
    
    func update(tasks: [ToDoItem]) {
        self.tasks = tasks
    }
}
