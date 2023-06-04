//
//  ListBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Paulo Danilo Conceição Lima on 04/06/23.
//

import SwiftUI

struct ListBootcamp: View {
    
    @State var fruits: [String] = ["Apple", "Orange", "Banada", "peach"]
    @State var veggies: [String] = ["tomato", "potato", "carrot"]
    
    var body: some View {
        NavigationView {
            List {
                Section(header:
                            HStack {
                    Text("Fruits")
                    Image(systemName: "flame.fill")
                }
                    .font(.headline)
                    .foregroundColor(.orange)
                ) {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)
                            .font(.caption)
                            .foregroundColor(.white)
                            .padding(.vertical)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    .listRowBackground(Color.blue)
                }
                Section(header: Text("Veggies")) {
                    ForEach(veggies, id: \.self) { veggies in
                        Text(veggies.capitalized)
                    }
                }
            }.accentColor(.purple)
//            .listStyle(GroupedListStyle())
            .navigationTitle("Grocery List")
            .navigationBarItems(leading: EditButton(),
                                trailing: addButton)
        }
        .accentColor(.red)
    }
    
    var addButton: some View {
        Button("add", action: {
            add()
        })
    }
    
    func delete(index: IndexSet) {
        fruits.remove(atOffsets: index)
    }
    
    func move(fromOffsets: IndexSet, toOffset: Int) {
        fruits.move(fromOffsets: fromOffsets, toOffset: toOffset)
    }
    
    func add() {
        fruits.append("Coconut")
    }
}

struct ListBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListBootcamp()
    }
}
