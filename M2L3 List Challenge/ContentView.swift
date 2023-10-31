//
//  ContentView.swift
//  M2L3 List Challenge
//
//

import SwiftUI

struct ContentView: View {

    // Our five possible items
    var array = ["Apple", "Orange", "Banana", "Pear", "Dragon Fruit"]
    
    // Stores the randomly generated items
    @State var items = [String]()

    var body: some View {
        
        VStack {
            
            // Create rows from the items array
            List(items, id: \.self) { item in
                
                Text(item)
            }
            Button("Tap Me") {
                
                // Choose a random index in the range of the array
                let randIndex = Int.random(in: 0...array.count-1)
                
                // Add the item to the items array
                items.append(array[randIndex])
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
