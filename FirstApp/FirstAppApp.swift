
import SwiftUI

@main
struct FirstAppApp: App {
    var body: some Scene {
        WindowGroup {
            RedView()
                .environment(\.colorScheme, .light)
        }
    }
}
