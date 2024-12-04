//
//  Persistence.swift
//  Sesion06
//
//  Created by DAMII on 3/12/24.
//

import CoreData

struct PersistenceController {
    static let shared = PersistenceController()
    
    let container: NSPersistentContainer
    
    init() {
        container = NSPersistentContainer(name: "Sesion06")
        container.loadPersistentStores {_, error in
            if let error = error as NSError? {
                fatalError("Ocurrió un error \(error)")
            }
        }
    }
}
