import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            CalculatorView()
            .tabItem {
                Image(systemName: "calculator")
                Text("Calculator")
            }

            ToDoListView()
            .tabItem {
                Image(systemName: "list.bullet")
                Text("To Do List")
            }
        }
    }
}

#Preview {
    MainView()
}