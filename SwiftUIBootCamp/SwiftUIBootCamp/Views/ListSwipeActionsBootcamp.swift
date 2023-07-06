//
//  ListSwipeActionsBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Paulo Danilo Conceição Lima on 05/07/23.
//

import SwiftUI

struct ListSwipeActionsBootcamp: View {
    
    @State var fruits: [String] = ["Apple", "Orange", "Banada", "peach"]
    
    
    var body: some View {
        List {
            ForEach(fruits, id: \.self) {
                Text($0.capitalized)
                    .swipeActions (edge: .trailing, allowsFullSwipe: true) {
                        Button("Arquive") {
                            
                        }
                        .tint(.green)
                        Button("save") {
                            
                        }
                        Button("junk") {
                            
                        }
                    }
                    .swipeActions (edge: .leading, allowsFullSwipe: false) {
                        Button("Share") {
                            
                        }
                        .tint(.blue)
                        
                    }
            }
//            .onDelete(perform: delete)
        }
    }
    
    func delete(indexset: IndexSet) {
        
    }
}

struct ListSwipeActionsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListSwipeActionsBootcamp()
    }
}
