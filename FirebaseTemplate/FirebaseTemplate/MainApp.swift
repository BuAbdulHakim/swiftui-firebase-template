import SwiftUI
import Firebase
@main
struct MainApp: App {
    init() {
        // configuring Firebase
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ListChildSlot(childSlot: BinKhaldun)
            //MainView()
                //.environmentObject(FirebaseEnv())
        }
    }
}
