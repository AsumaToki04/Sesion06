//
//  Sesion06App.swift
//  Sesion06
//
//  Created by DAMII on 3/12/24.
//

import SwiftUI

@main
struct Sesion06App: App {
    let persistence = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(
                    \.managedObjectContext,
                     persistence.container.viewContext
                )
        }
    }
}
