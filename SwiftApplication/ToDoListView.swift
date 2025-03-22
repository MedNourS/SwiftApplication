import SwiftUI

struct ToDoListView: View {
    // Variables
    @State private var toDoItems: [String] = []

    // Functions
    func addItem(_ item: String) {
        toDoItems.append(item)
    }

    func removeItem(at index:Int) {
        toDoItems.remove(at: index)
    }

    func clearList() {
        toDoItems.removeAll()
    }

    // View
    var body: some View {
        VStack {
            List {
                ForEach(toDoItems, id: \.self) {
                    item in Text(item)
                }
                .onDelete(perform: removeItem)
                
                HStack {
                    TextField("Add a new item", text: $newItem)
                    Button(action: addItem($newItem)) {
                        Text("Add")
                    }
                }
                
                Button(action: clearList) {
                    systemImage("trash")
                }
            }
        }
    }
}

#Preview {
    ToDoListView()
}