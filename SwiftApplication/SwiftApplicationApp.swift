import SwiftUI
import SwiftData

@main
struct SwiftApplicationApp: App {
    // Configure the SwiftData model container for LocationEntry model
    var sharedModelContainer: ModelContainer = {
        // Define the schema including all your SwiftData models
        let schema = Schema([
            LocationEntry.self, // Make sure LocationEntry is included
        ])
        // Configure the model storage (not in-memory for persistence)
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            // Create and return the ModelContainer
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            // Fatal error if the container cannot be created (indicates a critical setup issue)
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            // Present your main view
            MainView()
                // Attach the model container to your view hierarchy.
                // This makes the modelContext available to MainView and all its descendants
                .modelContainer(sharedModelContainer)
        }
    }
}
